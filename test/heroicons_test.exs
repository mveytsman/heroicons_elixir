defmodule HeroiconsTest do
  use ExUnit.Case, async: true

  import Phoenix.LiveViewTest

  setup do
    Mix.Task.run("heroicons.build")
    {:ok, assigns: %{__changed__: nil}}
  end

  test "outline default" do
    assert render_component(&Heroicons.cake/1, %{}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">\n  <path stroke-linecap="round" stroke-linejoin="round" d="M12 8.25v-1.5m0 1.5c-1.355 0-2.697.056-4.024.166C6.845 8.51 6 9.473 6 10.608v2.513m6-4.871c1.355 0 2.697.056 4.024.166C17.155 8.51 18 9.473 18 10.608v2.513M15 8.25v-1.5m-6 1.5v-1.5m12 9.75-1.5.75a3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0L3 16.5m15-3.379a48.474 48.474 0 0 0-6-.371c-2.032 0-4.034.126-6 .371m12 0c.39.049.777.102 1.163.16 1.07.16 1.837 1.094 1.837 2.175v5.169c0 .621-.504 1.125-1.125 1.125H4.125A1.125 1.125 0 0 1 3 20.625v-5.17c0-1.08.768-2.014 1.837-2.174A47.78 47.78 0 0 1 6 13.12M12.265 3.11a.375.375 0 1 1-.53 0L12 2.845l.265.265Zm-3 0a.375.375 0 1 1-.53 0L9 2.845l.265.265Zm6 0a.375.375 0 1 1-.53 0L15 2.845l.265.265Z"/>\n</svg>|

    class = "w-2"

    assert render_component(&Heroicons.cake/1, %{class: class}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5" class="#{class}">\n  <path stroke-linecap="round" stroke-linejoin="round" d="M12 8.25v-1.5m0 1.5c-1.355 0-2.697.056-4.024.166C6.845 8.51 6 9.473 6 10.608v2.513m6-4.871c1.355 0 2.697.056 4.024.166C17.155 8.51 18 9.473 18 10.608v2.513M15 8.25v-1.5m-6 1.5v-1.5m12 9.75-1.5.75a3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0L3 16.5m15-3.379a48.474 48.474 0 0 0-6-.371c-2.032 0-4.034.126-6 .371m12 0c.39.049.777.102 1.163.16 1.07.16 1.837 1.094 1.837 2.175v5.169c0 .621-.504 1.125-1.125 1.125H4.125A1.125 1.125 0 0 1 3 20.625v-5.17c0-1.08.768-2.014 1.837-2.174A47.78 47.78 0 0 1 6 13.12M12.265 3.11a.375.375 0 1 1-.53 0L12 2.845l.265.265Zm-3 0a.375.375 0 1 1-.53 0L9 2.845l.265.265Zm6 0a.375.375 0 1 1-.53 0L15 2.845l.265.265Z"/>\n</svg>|

    assert render_component(&Heroicons.cake/1, %{"stroke-width": "2"}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">\n  <path stroke-linecap="round" stroke-linejoin="round" d="M12 8.25v-1.5m0 1.5c-1.355 0-2.697.056-4.024.166C6.845 8.51 6 9.473 6 10.608v2.513m6-4.871c1.355 0 2.697.056 4.024.166C17.155 8.51 18 9.473 18 10.608v2.513M15 8.25v-1.5m-6 1.5v-1.5m12 9.75-1.5.75a3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0L3 16.5m15-3.379a48.474 48.474 0 0 0-6-.371c-2.032 0-4.034.126-6 .371m12 0c.39.049.777.102 1.163.16 1.07.16 1.837 1.094 1.837 2.175v5.169c0 .621-.504 1.125-1.125 1.125H4.125A1.125 1.125 0 0 1 3 20.625v-5.17c0-1.08.768-2.014 1.837-2.174A47.78 47.78 0 0 1 6 13.12M12.265 3.11a.375.375 0 1 1-.53 0L12 2.845l.265.265Zm-3 0a.375.375 0 1 1-.53 0L9 2.845l.265.265Zm6 0a.375.375 0 1 1-.53 0L15 2.845l.265.265Z"/>\n</svg>|
  end

  test "default when it has no micro" do
    class = "w-6 h-6 mr-2 inline"

    assert render_component(&Heroicons.arrow_right_on_rectangle/1, %{class: class}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5" class="#{class}">\n  <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 9V5.25A2.25 2.25 0 0 0 13.5 3h-6a2.25 2.25 0 0 0-2.25 2.25v13.5A2.25 2.25 0 0 0 7.5 21h6a2.25 2.25 0 0 0 2.25-2.25V15m3 0 3-3m0 0-3-3m3 3H9"/>\n</svg>|
  end

  test "solid" do
    assert render_component(&Heroicons.cake/1, %{solid: true}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24">\n  <path d="m15 1.784-.796.795a1.125 1.125 0 1 0 1.591 0L15 1.784ZM12 1.784l-.796.795a1.125 1.125 0 1 0 1.591 0L12 1.784ZM9 1.784l-.796.795a1.125 1.125 0 1 0 1.591 0L9 1.784ZM9.75 7.547c.498-.021.998-.035 1.5-.042V6.75a.75.75 0 0 1 1.5 0v.755c.502.007 1.002.021 1.5.042V6.75a.75.75 0 0 1 1.5 0v.88l.307.022c1.55.117 2.693 1.427 2.693 2.946v1.018a62.182 62.182 0 0 0-13.5 0v-1.018c0-1.519 1.143-2.829 2.693-2.946l.307-.022v-.88a.75.75 0 0 1 1.5 0v.797ZM12 12.75c-2.472 0-4.9.184-7.274.54-1.454.217-2.476 1.482-2.476 2.916v.384a4.104 4.104 0 0 1 2.585.364 2.605 2.605 0 0 0 2.33 0 4.104 4.104 0 0 1 3.67 0 2.605 2.605 0 0 0 2.33 0 4.104 4.104 0 0 1 3.67 0 2.605 2.605 0 0 0 2.33 0 4.104 4.104 0 0 1 2.585-.364v-.384c0-1.434-1.022-2.7-2.476-2.917A49.138 49.138 0 0 0 12 12.75ZM21.75 18.131a2.604 2.604 0 0 0-1.915.165 4.104 4.104 0 0 1-3.67 0 2.605 2.605 0 0 0-2.33 0 4.104 4.104 0 0 1-3.67 0 2.605 2.605 0 0 0-2.33 0 4.104 4.104 0 0 1-3.67 0 2.604 2.604 0 0 0-1.915-.165v2.494c0 1.035.84 1.875 1.875 1.875h15.75c1.035 0 1.875-.84 1.875-1.875v-2.494Z"/>\n</svg>|

    class = "w-2"

    assert render_component(&Heroicons.cake/1, %{solid: true, class: class}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" class="#{class}">\n  <path d="m15 1.784-.796.795a1.125 1.125 0 1 0 1.591 0L15 1.784ZM12 1.784l-.796.795a1.125 1.125 0 1 0 1.591 0L12 1.784ZM9 1.784l-.796.795a1.125 1.125 0 1 0 1.591 0L9 1.784ZM9.75 7.547c.498-.021.998-.035 1.5-.042V6.75a.75.75 0 0 1 1.5 0v.755c.502.007 1.002.021 1.5.042V6.75a.75.75 0 0 1 1.5 0v.88l.307.022c1.55.117 2.693 1.427 2.693 2.946v1.018a62.182 62.182 0 0 0-13.5 0v-1.018c0-1.519 1.143-2.829 2.693-2.946l.307-.022v-.88a.75.75 0 0 1 1.5 0v.797ZM12 12.75c-2.472 0-4.9.184-7.274.54-1.454.217-2.476 1.482-2.476 2.916v.384a4.104 4.104 0 0 1 2.585.364 2.605 2.605 0 0 0 2.33 0 4.104 4.104 0 0 1 3.67 0 2.605 2.605 0 0 0 2.33 0 4.104 4.104 0 0 1 3.67 0 2.605 2.605 0 0 0 2.33 0 4.104 4.104 0 0 1 2.585-.364v-.384c0-1.434-1.022-2.7-2.476-2.917A49.138 49.138 0 0 0 12 12.75ZM21.75 18.131a2.604 2.604 0 0 0-1.915.165 4.104 4.104 0 0 1-3.67 0 2.605 2.605 0 0 0-2.33 0 4.104 4.104 0 0 1-3.67 0 2.605 2.605 0 0 0-2.33 0 4.104 4.104 0 0 1-3.67 0 2.604 2.604 0 0 0-1.915-.165v2.494c0 1.035.84 1.875 1.875 1.875h15.75c1.035 0 1.875-.84 1.875-1.875v-2.494Z"/>\n</svg>|

    assert render_component(&Heroicons.cake/1, %{solid: true, "stroke-width": "2"}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" stroke-width="2">\n  <path d="m15 1.784-.796.795a1.125 1.125 0 1 0 1.591 0L15 1.784ZM12 1.784l-.796.795a1.125 1.125 0 1 0 1.591 0L12 1.784ZM9 1.784l-.796.795a1.125 1.125 0 1 0 1.591 0L9 1.784ZM9.75 7.547c.498-.021.998-.035 1.5-.042V6.75a.75.75 0 0 1 1.5 0v.755c.502.007 1.002.021 1.5.042V6.75a.75.75 0 0 1 1.5 0v.88l.307.022c1.55.117 2.693 1.427 2.693 2.946v1.018a62.182 62.182 0 0 0-13.5 0v-1.018c0-1.519 1.143-2.829 2.693-2.946l.307-.022v-.88a.75.75 0 0 1 1.5 0v.797ZM12 12.75c-2.472 0-4.9.184-7.274.54-1.454.217-2.476 1.482-2.476 2.916v.384a4.104 4.104 0 0 1 2.585.364 2.605 2.605 0 0 0 2.33 0 4.104 4.104 0 0 1 3.67 0 2.605 2.605 0 0 0 2.33 0 4.104 4.104 0 0 1 3.67 0 2.605 2.605 0 0 0 2.33 0 4.104 4.104 0 0 1 2.585-.364v-.384c0-1.434-1.022-2.7-2.476-2.917A49.138 49.138 0 0 0 12 12.75ZM21.75 18.131a2.604 2.604 0 0 0-1.915.165 4.104 4.104 0 0 1-3.67 0 2.605 2.605 0 0 0-2.33 0 4.104 4.104 0 0 1-3.67 0 2.605 2.605 0 0 0-2.33 0 4.104 4.104 0 0 1-3.67 0 2.604 2.604 0 0 0-1.915-.165v2.494c0 1.035.84 1.875 1.875 1.875h15.75c1.035 0 1.875-.84 1.875-1.875v-2.494Z"/>\n</svg>|
  end

  test "mini" do
    assert render_component(&Heroicons.cake/1, %{mini: true}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">\n  <path d="m6.75.98-.884.883a1.25 1.25 0 1 0 1.768 0L6.75.98ZM13.25.98l-.884.883a1.25 1.25 0 1 0 1.768 0L13.25.98ZM10 .98l.884.883a1.25 1.25 0 1 1-1.768 0L10 .98ZM7.5 5.75a.75.75 0 0 0-1.5 0v.464c-1.179.304-2 1.39-2 2.622v.094c.1-.02.202-.038.306-.052A42.867 42.867 0 0 1 10 8.5c1.93 0 3.83.129 5.694.378.104.014.206.032.306.052v-.094c0-1.232-.821-2.317-2-2.622V5.75a.75.75 0 0 0-1.5 0v.318a45.645 45.645 0 0 0-1.75-.062V5.75a.75.75 0 0 0-1.5 0v.256c-.586.01-1.17.03-1.75.062V5.75ZM4.505 10.365A41.36 41.36 0 0 1 10 10c1.863 0 3.697.124 5.495.365C16.967 10.562 18 11.838 18 13.28v.693a3.72 3.72 0 0 1-1.665-.393 5.222 5.222 0 0 0-4.67 0 3.722 3.722 0 0 1-3.33 0 5.222 5.222 0 0 0-4.67 0A3.72 3.72 0 0 1 2 13.972v-.693c0-1.441 1.033-2.717 2.505-2.914ZM15.665 14.92a5.22 5.22 0 0 0 2.335.552V16.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 2 16.5v-1.028c.8 0 1.6-.184 2.335-.551a3.722 3.722 0 0 1 3.33 0c1.47.735 3.2.735 4.67 0a3.722 3.722 0 0 1 3.33 0Z"/>\n</svg>|

    class = "w-2"

    assert render_component(&Heroicons.cake/1, %{mini: true, class: class}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" class="#{class}">\n  <path d="m6.75.98-.884.883a1.25 1.25 0 1 0 1.768 0L6.75.98ZM13.25.98l-.884.883a1.25 1.25 0 1 0 1.768 0L13.25.98ZM10 .98l.884.883a1.25 1.25 0 1 1-1.768 0L10 .98ZM7.5 5.75a.75.75 0 0 0-1.5 0v.464c-1.179.304-2 1.39-2 2.622v.094c.1-.02.202-.038.306-.052A42.867 42.867 0 0 1 10 8.5c1.93 0 3.83.129 5.694.378.104.014.206.032.306.052v-.094c0-1.232-.821-2.317-2-2.622V5.75a.75.75 0 0 0-1.5 0v.318a45.645 45.645 0 0 0-1.75-.062V5.75a.75.75 0 0 0-1.5 0v.256c-.586.01-1.17.03-1.75.062V5.75ZM4.505 10.365A41.36 41.36 0 0 1 10 10c1.863 0 3.697.124 5.495.365C16.967 10.562 18 11.838 18 13.28v.693a3.72 3.72 0 0 1-1.665-.393 5.222 5.222 0 0 0-4.67 0 3.722 3.722 0 0 1-3.33 0 5.222 5.222 0 0 0-4.67 0A3.72 3.72 0 0 1 2 13.972v-.693c0-1.441 1.033-2.717 2.505-2.914ZM15.665 14.92a5.22 5.22 0 0 0 2.335.552V16.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 2 16.5v-1.028c.8 0 1.6-.184 2.335-.551a3.722 3.722 0 0 1 3.33 0c1.47.735 3.2.735 4.67 0a3.722 3.722 0 0 1 3.33 0Z"/>\n</svg>|

    assert render_component(&Heroicons.cake/1, %{mini: true, "stroke-width": "2"}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" stroke-width="2">\n  <path d="m6.75.98-.884.883a1.25 1.25 0 1 0 1.768 0L6.75.98ZM13.25.98l-.884.883a1.25 1.25 0 1 0 1.768 0L13.25.98ZM10 .98l.884.883a1.25 1.25 0 1 1-1.768 0L10 .98ZM7.5 5.75a.75.75 0 0 0-1.5 0v.464c-1.179.304-2 1.39-2 2.622v.094c.1-.02.202-.038.306-.052A42.867 42.867 0 0 1 10 8.5c1.93 0 3.83.129 5.694.378.104.014.206.032.306.052v-.094c0-1.232-.821-2.317-2-2.622V5.75a.75.75 0 0 0-1.5 0v.318a45.645 45.645 0 0 0-1.75-.062V5.75a.75.75 0 0 0-1.5 0v.256c-.586.01-1.17.03-1.75.062V5.75ZM4.505 10.365A41.36 41.36 0 0 1 10 10c1.863 0 3.697.124 5.495.365C16.967 10.562 18 11.838 18 13.28v.693a3.72 3.72 0 0 1-1.665-.393 5.222 5.222 0 0 0-4.67 0 3.722 3.722 0 0 1-3.33 0 5.222 5.222 0 0 0-4.67 0A3.72 3.72 0 0 1 2 13.972v-.693c0-1.441 1.033-2.717 2.505-2.914ZM15.665 14.92a5.22 5.22 0 0 0 2.335.552V16.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 2 16.5v-1.028c.8 0 1.6-.184 2.335-.551a3.722 3.722 0 0 1 3.33 0c1.47.735 3.2.735 4.67 0a3.722 3.722 0 0 1 3.33 0Z"/>\n</svg>|
  end

  test "micro" do
    assert render_component(&Heroicons.cake/1, %{micro: true}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="currentColor" viewBox="0 0 16 16">\n  <path d="m4.75 1-.884.884a1.25 1.25 0 1 0 1.768 0L4.75 1ZM11.25 1l-.884.884a1.25 1.25 0 1 0 1.768 0L11.25 1ZM8.884 1.884 8 1l-.884.884a1.25 1.25 0 1 0 1.768 0ZM4 7a2 2 0 0 0-2 2v1.034c.347 0 .694-.056 1.028-.167l.47-.157a4.75 4.75 0 0 1 3.004 0l.47.157a3.25 3.25 0 0 0 2.056 0l.47-.157a4.75 4.75 0 0 1 3.004 0l.47.157c.334.111.681.167 1.028.167V9a2 2 0 0 0-2-2V5.75a.75.75 0 0 0-1.5 0V7H8.75V5.75a.75.75 0 0 0-1.5 0V7H5.5V5.75a.75.75 0 0 0-1.5 0V7ZM14 11.534a4.749 4.749 0 0 1-1.502-.244l-.47-.157a3.25 3.25 0 0 0-2.056 0l-.47.157a4.75 4.75 0 0 1-3.004 0l-.47-.157a3.25 3.25 0 0 0-2.056 0l-.47.157A4.748 4.748 0 0 1 2 11.534V13a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1v-1.466Z"/>\n</svg>|

    class = "w-2"

    assert render_component(&Heroicons.cake/1, %{micro: true, class: class}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="currentColor" viewBox="0 0 16 16" class="#{class}">\n  <path d="m4.75 1-.884.884a1.25 1.25 0 1 0 1.768 0L4.75 1ZM11.25 1l-.884.884a1.25 1.25 0 1 0 1.768 0L11.25 1ZM8.884 1.884 8 1l-.884.884a1.25 1.25 0 1 0 1.768 0ZM4 7a2 2 0 0 0-2 2v1.034c.347 0 .694-.056 1.028-.167l.47-.157a4.75 4.75 0 0 1 3.004 0l.47.157a3.25 3.25 0 0 0 2.056 0l.47-.157a4.75 4.75 0 0 1 3.004 0l.47.157c.334.111.681.167 1.028.167V9a2 2 0 0 0-2-2V5.75a.75.75 0 0 0-1.5 0V7H8.75V5.75a.75.75 0 0 0-1.5 0V7H5.5V5.75a.75.75 0 0 0-1.5 0V7ZM14 11.534a4.749 4.749 0 0 1-1.502-.244l-.47-.157a3.25 3.25 0 0 0-2.056 0l-.47.157a4.75 4.75 0 0 1-3.004 0l-.47-.157a3.25 3.25 0 0 0-2.056 0l-.47.157A4.748 4.748 0 0 1 2 11.534V13a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1v-1.466Z"/>\n</svg>|

    assert render_component(&Heroicons.cake/1, %{micro: true, "stroke-width": "2"}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="currentColor" viewBox="0 0 16 16" stroke-width="2">\n  <path d="m4.75 1-.884.884a1.25 1.25 0 1 0 1.768 0L4.75 1ZM11.25 1l-.884.884a1.25 1.25 0 1 0 1.768 0L11.25 1ZM8.884 1.884 8 1l-.884.884a1.25 1.25 0 1 0 1.768 0ZM4 7a2 2 0 0 0-2 2v1.034c.347 0 .694-.056 1.028-.167l.47-.157a4.75 4.75 0 0 1 3.004 0l.47.157a3.25 3.25 0 0 0 2.056 0l.47-.157a4.75 4.75 0 0 1 3.004 0l.47.157c.334.111.681.167 1.028.167V9a2 2 0 0 0-2-2V5.75a.75.75 0 0 0-1.5 0V7H8.75V5.75a.75.75 0 0 0-1.5 0V7H5.5V5.75a.75.75 0 0 0-1.5 0V7ZM14 11.534a4.749 4.749 0 0 1-1.502-.244l-.47-.157a3.25 3.25 0 0 0-2.056 0l-.47.157a4.75 4.75 0 0 1-3.004 0l-.47-.157a3.25 3.25 0 0 0-2.056 0l-.47.157A4.748 4.748 0 0 1 2 11.534V13a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1v-1.466Z"/>\n</svg>|
  end

  test "outline" do
    assert render_component(&Heroicons.cake/1, %{outline: true}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">\n  <path stroke-linecap="round" stroke-linejoin="round" d="M12 8.25v-1.5m0 1.5c-1.355 0-2.697.056-4.024.166C6.845 8.51 6 9.473 6 10.608v2.513m6-4.871c1.355 0 2.697.056 4.024.166C17.155 8.51 18 9.473 18 10.608v2.513M15 8.25v-1.5m-6 1.5v-1.5m12 9.75-1.5.75a3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0L3 16.5m15-3.379a48.474 48.474 0 0 0-6-.371c-2.032 0-4.034.126-6 .371m12 0c.39.049.777.102 1.163.16 1.07.16 1.837 1.094 1.837 2.175v5.169c0 .621-.504 1.125-1.125 1.125H4.125A1.125 1.125 0 0 1 3 20.625v-5.17c0-1.08.768-2.014 1.837-2.174A47.78 47.78 0 0 1 6 13.12M12.265 3.11a.375.375 0 1 1-.53 0L12 2.845l.265.265Zm-3 0a.375.375 0 1 1-.53 0L9 2.845l.265.265Zm6 0a.375.375 0 1 1-.53 0L15 2.845l.265.265Z"/>\n</svg>|

    class = "w-2"

    assert render_component(&Heroicons.cake/1, %{outline: true, class: class}) ==
             ~s|<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5" class="#{class}">\n  <path stroke-linecap="round" stroke-linejoin="round" d="M12 8.25v-1.5m0 1.5c-1.355 0-2.697.056-4.024.166C6.845 8.51 6 9.473 6 10.608v2.513m6-4.871c1.355 0 2.697.056 4.024.166C17.155 8.51 18 9.473 18 10.608v2.513M15 8.25v-1.5m-6 1.5v-1.5m12 9.75-1.5.75a3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0 3.354 3.354 0 0 0-3 0 3.354 3.354 0 0 1-3 0L3 16.5m15-3.379a48.474 48.474 0 0 0-6-.371c-2.032 0-4.034.126-6 .371m12 0c.39.049.777.102 1.163.16 1.07.16 1.837 1.094 1.837 2.175v5.169c0 .621-.504 1.125-1.125 1.125H4.125A1.125 1.125 0 0 1 3 20.625v-5.17c0-1.08.768-2.014 1.837-2.174A47.78 47.78 0 0 1 6 13.12M12.265 3.11a.375.375 0 1 1-.53 0L12 2.845l.265.265Zm-3 0a.375.375 0 1 1-.53 0L9 2.845l.265.265Zm6 0a.375.375 0 1 1-.53 0L15 2.845l.265.265Z"/>\n</svg>|
  end

  test "raises on mix styles" do
    assert_raise ArgumentError, "expected either mini or solid, but got both.", fn ->
      render_component(&Heroicons.cake/1, %{mini: true, solid: true})
    end
  end

  test "generated docs" do
    {:docs_v1, _annotation, _beam_language, _format, _module_doc, _metadata, docs} =
      Code.fetch_docs(Heroicons)

    doc =
      Enum.find_value(docs, fn
        {{:function, :academic_cap, 1}, _annotation, _signature, doc, _metadata} -> doc
        _ -> nil
      end)

    assert doc["en"] == """
           Renders the `academic_cap` icon.

           By default, the outlined (24x24) component is used, but the `solid`, `mini` or `micro`
           attributes can be provided for alternative styles.

           You may also pass arbitrary HTML attributes to be applied to the svg tag.

           ## Examples

           ```heex
           <Heroicons.academic_cap />
           <Heroicons.academic_cap class="w-4 h-4" />
           <Heroicons.academic_cap solid />
           <Heroicons.academic_cap mini />
           <Heroicons.academic_cap micro />
           <Heroicons.academic_cap outline />
           ```

           ## Attributes

           * `outline` (`:boolean`) - Defaults to `true`.
           * `solid` (`:boolean`) - Defaults to `false`.
           * `mini` (`:boolean`) - Defaults to `false`.
           * `micro` (`:boolean`) - Defaults to `false`.
           * Global attributes are accepted. the arbitrary HTML attributes for the svg container. Supports all globals plus: `["fill", "stroke", "stroke-width"]`.
           """
  end
end
