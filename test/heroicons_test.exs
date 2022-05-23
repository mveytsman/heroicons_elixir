defmodule PhosphoriconsTest do
  use ExUnit.Case, async: true

  import Phoenix.LiveViewTest

  test "generated function" do
    alarm =
      :code.priv_dir(:phosphoricons)
      |> Path.join("Fill/alarm-fill.svg")
      |> File.read!()

    assert Phosphoricons.Fill.A.alarm()
           |> Phoenix.HTML.safe_to_string() ==
             alarm

    assert Phosphoricons.Fill.A.alarm(class: "h-6 w-6 text-gray-500")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(class="h-6 w-6 text-gray-500")

    assert Phosphoricons.Fill.A.alarm(class: "<> \" ")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(class="&lt;&gt; &quot; ")

    assert Phosphoricons.Fill.A.alarm(foo: "bar")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(foo="bar")

    assert Phosphoricons.Fill.A.alarm(multiword_key: "foo")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(multiword-key="foo")

    assert Phosphoricons.Fill.A.alarm(viewBox: "0 0 12 12")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(viewBox="0 0 12 12")
  end

  test "generated components" do
    assert render_component(&Phosphoricons.Fill.A.alarm/1, assigns()) =~
             ~s(<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 256 256\">)

    assert render_component(
             &Phosphoricons.Fill.A.alarm/1,
             assigns(class: "h-6 w-6 text-gray-500")
           ) =~
             ~s(class="h-6 w-6 text-gray-500")
  end

  test "generated docs" do
    {:docs_v1, _annotation, _beam_language, _format, _module_doc, _metadata, docs} =
      Code.fetch_docs(Phosphoricons.Fill.A)

    doc =
      Enum.find_value(docs, fn
        {{:function, :alarm, 1}, _annotation, _signature, doc, _metadata} -> doc
        _ -> nil
      end)

    assert doc["en"] == """
           ![](assets/Fill/alarm-fill.svg) {: width=24px}

           ## Examples

           Use as a `Phoenix.Component`

               <.alarm />

               <.alarm class="h-6 w-6 text-gray-500" />

           or as a function

               <%= alarm() %>

               <%= alarm(class: "h-6 w-6 text-gray-500") %>
           """
  end

  defp assigns(assgns \\ []) do
    Map.new(assgns)
    |> Map.put_new(:__changed__, %{})
  end
end
