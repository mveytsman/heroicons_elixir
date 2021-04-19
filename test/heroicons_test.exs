defmodule HeroiconsTest do
  use ExUnit.Case, async: true

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
             ~s(viewBox=\"0 0 12 12\")

    refute Heroicons.Outline.academic_cap(viewBox: "0 0 12 12")
           |> Phoenix.HTML.safe_to_string() =~
             ~s(viewBox=\"0 0 24 24\")
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
               iex> academic_cap()
               iex> academic_cap(class: "h-6 w-6 text-gray-500")
           """
  end
end
