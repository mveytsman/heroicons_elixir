defmodule HeroiconsTest do
  use ExUnit.Case, async: true

  test "generated function" do
    academic_cap =
      :code.priv_dir(:heroicons)
      |> Path.join("outline/academic-cap.svg")
      |> File.read!()

    assert Heroicons.Outline.academic_cap() == academic_cap

    assert TestIcons.academic_cap(class: "h-6 w-6 text-gray-500") =~
             ~s(class="h-6 w-6 text-gray-500")
  end

  test "generated docs" do
    {:docs_v1, _annotation, _beam_language, _format, _module_doc,
    _metadata, docs} = Code.fetch_docs(Heroicons.Outline)

    doc = Enum.find_value(docs, fn {{:function, :academic_cap, 1}, _annotation, _signature, doc, _metadata} -> doc
    _ -> nil end)

    assert doc["en"] == """
    ![](assets/outline/academic-cap.svg) {: width=24px}

    ## Examples
        iex> academic_cap()
        iex> academic_cap(class: "h-6 w-6 text-gray-500")
    """
  end
end
