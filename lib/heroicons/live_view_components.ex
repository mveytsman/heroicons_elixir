defmodule Heroicons.LiveComponent do
  use Phoenix.LiveComponent
  @moduledoc """
  This module will provide a LiveComponent render helper for rendering Heroicons in a component to avoide boilerplate html code.

  The simplest way to get a Heroicon in your LiveView is:

      <%= live_component @socket, Heroicons.LiveComponent, type: :outline, icon: :server, class: "ml-6 w-12 h-12 text-green-400" %>

  
  """
  @moduledoc since: "0.3.0"

  @callback render(assigns :: Phoenix.LiveView.Socket.assigns()) ::  Phoenix.LiveView.Rendered.t()
  @doc false


  def render(%{type: :outline, class: class, icon: icon} = assigns) do
    ~L"""
    <%=  apply(Elixir.Heroicons.Outline, icon, [%{class: class}]) %>
    """
  end

  @callback render(assigns :: Phoenix.LiveView.Socket.assigns()) ::  Phoenix.LiveView.Rendered.t()
  @doc false

  def render(%{type: :solid, class: class, icon: icon} = assigns) do
    ~L"""
    <%=  apply(Elixir.Heroicons.Solid, icon, [%{class: class}]) %>
    """
  end
end


