defmodule Heroicons.SvgProcessor.Handler do
  @moduledoc false

  @behaviour Saxy.Handler

  @impl Saxy.Handler
  def handle_event(:start_document, _prolog, {stack, opts}) do
    {:ok, {stack, opts}}
  end

  @impl Saxy.Handler
  def handle_event(:start_element, {"svg", attributes}, {stack, opts}) do
    attributes =
      filter_attributes(attributes, opts)
      |> add_attributes(opts)
      |> sort_attributes(opts)

    tag = {"svg", attributes, []}
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

  defp filter_attributes(attributes, opts) do
    remove_dimensions = Keyword.get(opts, :remove_dimensions)
    remove_attrs = Keyword.get(opts, :remove_attributes, [])

    Enum.reject(attributes, fn {attr, _value} ->
      (remove_dimensions && (attr == "width" || attr == "height")) ||
        attr in remove_attrs
    end)
  end

  defp add_attributes(attributes, opts) do
    attributes ++ Keyword.get(opts, :add_attributes, [])
  end

  defp sort_attributes(attributes, opts) do
    if Keyword.get(opts, :sort_attributes) do
      Enum.sort_by(attributes, fn {attr, _value} -> attr end)
    else
      attributes
    end
  end
end
