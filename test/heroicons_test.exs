defmodule HeroiconsTest do
  use ExUnit.Case, async: true

  import Phoenix.LiveViewTest

  test "generated function" do
    result = Phoenix.HTML.safe_to_string(Heroicons.Outline.academic_cap())
    assert result =~ ~s(<svg )
    assert result =~ ~s(aria-hidden="true")
    assert result =~ ~s(fill="none")
    assert result =~ ~s(stroke="currentColor")
    assert result =~ ~s(stroke-width="1.5")
    assert result =~ ~s(viewBox="0 0 24 24")

    assert Heroicons.Outline.academic_cap(class: "w-6 h-6 text-gray-500")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(class="w-6 h-6 text-gray-500")

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
    outline = render_component(&Heroicons.Outline.academic_cap/1, assigns())
    assert outline =~ ~s(<svg )
    assert outline =~ ~s(aria-hidden="true")
    assert outline =~ ~s(fill="none")
    assert outline =~ ~s(stroke="currentColor")
    assert outline =~ ~s(stroke-width="1.5")
    assert outline =~ ~s(viewBox="0 0 24 24")

    solid = render_component(&Heroicons.Solid.academic_cap/1, assigns())
    assert solid =~ ~s(<svg )
    assert solid =~ ~s(aria-hidden="true")
    assert solid =~ ~s(fill="currentColor")
    assert solid =~ ~s(viewBox="0 0 24 24")

    assert render_component(
             &Heroicons.Outline.academic_cap/1,
             assigns(class: "w-6 h-6 text-gray-500")
           ) =~
             ~s(class="w-6 h-6 text-gray-500")

    mini = render_component(&Heroicons.Mini.academic_cap/1, assigns())
    assert solid =~ ~s(<svg )
    assert solid =~ ~s(aria-hidden="true")
    assert solid =~ ~s(fill="currentColor")
    assert solid =~ ~s(viewBox="0 0 24 24")
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
           ![](assets/icons/outline/academic-cap.svg) {: width=24px}

           ## Examples

           Use as a `Phoenix.Component`

               <.academic_cap />
               <.academic_cap class="w-6 h-6 text-gray-500" />

           or as a function

               <%= academic_cap() %>
               <%= academic_cap(class: "w-6 h-6 text-gray-500") %>
           """
  end

  defp assigns(assgns \\ []) do
    Map.new(assgns)
    |> Map.put_new(:__changed__, %{})
  end
end
