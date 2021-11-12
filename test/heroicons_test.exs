defmodule HeroiconsTest do
  use ExUnit.Case, async: true

  import Phoenix.LiveViewTest

  test "generated function" do
    academic_cap =
      :code.priv_dir(:heroicons)
      |> Path.join("outline/academic-cap.svg")
      |> File.read!()

    assert Heroicons.Outline.academic_cap()
           |> Phoenix.HTML.safe_to_string() ==
             academic_cap

    assert Heroicons.Outline.academic_cap(class: "h-6 w-6 text-gray-500")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(class="h-6 w-6 text-gray-500")

    assert Heroicons.Outline.academic_cap(class: "<> \" ")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(class="&lt;&gt; &quot; ")

    assert Heroicons.Outline.academic_cap(foo: "bar")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(foo="bar")

    assert Heroicons.Outline.academic_cap(multiword_key: "foo")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(multiword-key="foo")

    assert Heroicons.Outline.academic_cap(viewBox: "0 0 12 12")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(viewBox="0 0 12 12")
  end

  test "generated components" do
    assert render_component(&Heroicons.Outline.academic_cap/1, assigns()) =~
             ~s(<svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke=\"currentColor\">)

    assert render_component(
             &Heroicons.Outline.academic_cap/1,
             assigns(class: "h-6 w-6 text-gray-500")
           ) =~
             ~s(class="h-6 w-6 text-gray-500")
  end

  test "generated docs" do
    {:docs_v1, _annotation, _beam_language, _format, _module_doc, _metadata, docs} =
      Code.fetch_docs(Heroicons.Outline)

    doc =
      Enum.find_value(docs, fn
        {{:function, :academic_cap, 1}, _annotation, _signature, doc, _metadata} -> doc
        _ -> nil
      end)

    assert doc["en"] == """
           ![](assets/outline/academic-cap.svg) {: width=24px}

           ## Examples

           Use as a `Phoenix.Component`

               <.academic_cap />

               <.academic_cap class="h-6 w-6 text-gray-500" />

           Can also be used as a function (deprecated)

               <%= academic_cap() %>

               <%= academic_cap(class: "h-6 w-6 text-gray-500") %>
           """
  end

  defp assigns(assgns \\ []) do
    Map.new(assgns)
    |> Map.put_new(:__changed__, %{})
  end
end
