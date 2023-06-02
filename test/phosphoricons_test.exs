defmodule PhosphoriconsTest do
  use ExUnit.Case, async: true

  import Phoenix.LiveViewTest

  test "generated function" do
    alarm =
      :code.priv_dir(:phosphoricons)
      |> Path.join("fill/alarm-fill.svg")
      |> File.read!()

    assert Phosphoricons.icon("alarm", type: "fill")
           |> Phoenix.HTML.safe_to_string() ==
             alarm

    assert Phosphoricons.icon("alarm", type: "fill", class: "h-6 w-6 text-gray-500")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(class="h-6 w-6 text-gray-500")

    assert Phosphoricons.icon("alarm", type: "fill", class: "<> \" ")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(class="&lt;&gt; &quot; ")

    assert Phosphoricons.icon("alarm", type: "fill", foo: "bar")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(foo="bar")

    assert Phosphoricons.icon("alarm", type: "fill", multiword_key: "foo")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(multiword-key="foo")

    assert Phosphoricons.icon("alarm", type: "fill", viewBox: "0 0 12 12")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(viewBox="0 0 12 12")
  end

  test "generated components" do
    assert render_component(&Phosphoricons.LiveView.icon/1, assigns(name: "alarm")) =~
             ~s(<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 256 256\">)

    assert render_component(
             &Phosphoricons.LiveView.icon/1,
             assigns(name: "alarm", class: "h-6 w-6 text-gray-500")
           ) =~
             ~s(class="h-6 w-6 text-gray-500")
  end

  test "generated docs" do
    {:docs_v1, _annotation, _beam_language, _format, _module_doc, _metadata, docs} =
      Code.fetch_docs(Phosphoricons)

    doc =
      Enum.find_value(docs, fn
        {{:function, :icon, 2}, _annotation, _signature, doc, _metadata} -> doc
        _ -> nil
      end)

    assert doc["en"] == """
           ![](assets/Fill/alarm-fill.svg) {: width=24px}

           ## Examples

           Use as a `Phoenix.Component`

             <.icon name="alarm" />

             <.icon name="alarm" class="h-6 w-6 text-gray-500" />

           or as a function

             <%= icon("alarm") %>

             <%= icon("alarm", class: "h-6 w-6 text-gray-500") %>
           """
  end

  defp assigns(assigns) do
    Map.new(assigns)
    |> Map.put_new(:__changed__, %{})
  end
end
