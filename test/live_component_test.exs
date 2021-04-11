defmodule Heroicons.LiveComponentTest do

  import Phoenix.LiveViewTest
  use ExUnit.Case, async: true
  @endpoint MyEndpoint
  
  test "outline server component" do
    assert render_component(Heroicons.LiveComponent, id: 123, type: :outline, icon: :server, class: "") =~ "<svg xmlns=\"http://www.w3.org/2000/svg\""
  end

  
  test "solid server component" do
    assert render_component(Heroicons.LiveComponent, id: 123, type: :solid, icon: :server, class: "") =~ "<svg xmlns=\"http://www.w3.org/2000/svg\""
  end

  test "outline server component class injection" do
    assert render_component(Heroicons.LiveComponent, id: 123, type: :outline, icon: :server, class: "mr-3 gray-text-400") =~ "class=\"mr-3 gray-text-400\""
  end

end
