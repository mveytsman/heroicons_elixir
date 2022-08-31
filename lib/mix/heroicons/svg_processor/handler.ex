defmodule Mix.Heroicons.SvgProcessor.Handler do
  @moduledoc false

  @behaviour Saxy.Handler

  @impl Saxy.Handler
  def handle_event(:start_document, _prolog, {stack, opts}) do
    {:ok, {stack, opts}}
  end

  @impl Saxy.Handler
  def handle_event(:start_element, {"svg", attributes}, {stack, opts}) do
    attributes =
      remove_dimensions(attributes, Keyword.get(opts, :remove_dimensions))
      |> remove_attributes(Keyword.get(opts, :remove_attributes))
      |> add_attributes(Keyword.get(opts, :add_attributes))
      |> sort_attributes(Keyword.get(opts, :sort_attributes))

    tag = {"svg", attributes, []}
    {:ok, {[tag | stack], opts}}
  end

  def handle_event(:start_element, {"path", attributes}, {stack, opts}) do
    attributes = remove_attributes(attributes, Keyword.get(opts, :remove_path_attributes, []))
    tag = {"path", attributes, []}
    {:ok, {[tag | stack], opts}}
  end

  def handle_event(:start_element, {tag_name, attributes}, {stack, opts}) do
    tag = {tag_name, attributes, []}
    {:ok, {[tag | stack], opts}}
  end

  @impl Saxy.Handler
  def handle_event(:characters, chars, {stack, opts}) do
    [{tag_name, attributes, content} | stack] = stack

    current = {tag_name, attributes, [chars | content]}

    {:ok, {[current | stack], opts}}
  end

  @impl Saxy.Handler
  def handle_event(:cdata, chars, {stack, opts}) do
    [{tag_name, attributes, content} | stack] = stack

    current = {tag_name, attributes, [{:cdata, chars} | content]}

    {:ok, {[current | stack], opts}}
  end

  @impl Saxy.Handler
  def handle_event(:end_element, tag_name, {[{tag_name, attributes, content} | stack], opts}) do
    current = {tag_name, attributes, Enum.reverse(content)}

    case stack do
      [] ->
        {:ok, {current, opts}}

      [parent | rest] ->
        {parent_tag_name, parent_attributes, parent_content} = parent
        parent = {parent_tag_name, parent_attributes, [current | parent_content]}
        {:ok, {[parent | rest], opts}}
    end
  end

  @impl Saxy.Handler
  def handle_event(:end_document, _, {stack, _opts}) do
    {:ok, stack}
  end

  defp remove_dimensions(attributes, true) do
    Enum.reject(attributes, fn {attr, _value} ->
      attr == "width" || attr == "height"
    end)
  end

  defp remove_dimensions(attributes, _) do
    attributes
  end

  defp remove_attributes(attributes, nil) do
    attributes
  end

  defp remove_attributes(attributes, remove_attrs) do
    Enum.reject(attributes, fn {attr, _value} ->
      attr in remove_attrs
    end)
  end

  defp add_attributes(attributes, nil) do
    attributes
  end

  defp add_attributes(attributes, add_attrs) do
    attributes ++ add_attrs
  end

  defp sort_attributes(attributes, true) do
    Enum.sort_by(attributes, fn {attr, _value} -> attr end)
  end

  defp sort_attributes(attributes, nil) do
    attributes
  end
end
