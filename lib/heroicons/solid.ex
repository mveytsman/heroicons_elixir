defmodule Heroicons.Solid do
  @moduledoc """
  Solid style icons drawn with fills, packaged as Phoenix Components.

  For primary navigation and marketing sections, with a filled appearance,
  designed to be rendered at 24x24.
  """

  use Phoenix.Component

  if function_exported?(Phoenix.Component, :assigns_to_attributes, 2) do
    @assign_mod Phoenix.Component
    @assigns_to_attrs_mod Phoenix.Component
  else
    @assign_mod Phoenix.LiveView
    @assigns_to_attrs_mod Phoenix.LiveView.Helpers
  end
  
  @doc """
  ![](assets/icons/solid/academic-cap.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.academic_cap />

      <.academic_cap class="h-6 w-6 text-gray-500" />

  or as a function

      <%= academic_cap() %>

      <%= academic_cap(class: "h-6 w-6 text-gray-500") %>
  """
  def academic_cap(assigns_or_opts \\ [])

  def academic_cap(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M11.7 2.805a.75.75 0 01.6 0A60.65 60.65 0 0122.83 8.72a.75.75 0 01-.231 1.337 49.949 49.949 0 00-9.902 3.912l-.003.002-.34.18a.75.75 0 01-.707 0A50.009 50.009 0 007.5 12.174v-.224c0-.131.067-.248.172-.311a54.614 54.614 0 014.653-2.52.75.75 0 00-.65-1.352 56.129 56.129 0 00-4.78 2.589 1.858 1.858 0 00-.859 1.228 49.803 49.803 0 00-4.634-1.527.75.75 0 01-.231-1.337A60.653 60.653 0 0111.7 2.805z"/>
      <path d="M13.06 15.473a48.45 48.45 0 017.666-3.282c.134 1.414.22 2.843.255 4.285a.75.75 0 01-.46.71 47.878 47.878 0 00-8.105 4.342.75.75 0 01-.832 0 47.877 47.877 0 00-8.104-4.342.75.75 0 01-.461-.71c.035-1.442.121-2.87.255-4.286A48.4 48.4 0 016 13.18v1.27a1.5 1.5 0 00-.14 2.508c-.09.38-.222.753-.397 1.11.452.213.901.434 1.346.661a6.729 6.729 0 00.551-1.608 1.5 1.5 0 00.14-2.67v-.645a48.549 48.549 0 013.44 1.668 2.25 2.25 0 002.12 0z"/>
      <path d="M4.462 19.462c.42-.419.753-.89 1-1.394.453.213.902.434 1.347.661a6.743 6.743 0 01-1.286 1.794.75.75 0 11-1.06-1.06z"/>
    </svg>
    """
  end

  def academic_cap(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M11.7 2.805a.75.75 0 01.6 0A60.65 60.65 0 0122.83 8.72a.75.75 0 01-.231 1.337 49.949 49.949 0 00-9.902 3.912l-.003.002-.34.18a.75.75 0 01-.707 0A50.009 50.009 0 007.5 12.174v-.224c0-.131.067-.248.172-.311a54.614 54.614 0 014.653-2.52.75.75 0 00-.65-1.352 56.129 56.129 0 00-4.78 2.589 1.858 1.858 0 00-.859 1.228 49.803 49.803 0 00-4.634-1.527.75.75 0 01-.231-1.337A60.653 60.653 0 0111.7 2.805z\"/>\n  <path d=\"M13.06 15.473a48.45 48.45 0 017.666-3.282c.134 1.414.22 2.843.255 4.285a.75.75 0 01-.46.71 47.878 47.878 0 00-8.105 4.342.75.75 0 01-.832 0 47.877 47.877 0 00-8.104-4.342.75.75 0 01-.461-.71c.035-1.442.121-2.87.255-4.286A48.4 48.4 0 016 13.18v1.27a1.5 1.5 0 00-.14 2.508c-.09.38-.222.753-.397 1.11.452.213.901.434 1.346.661a6.729 6.729 0 00.551-1.608 1.5 1.5 0 00.14-2.67v-.645a48.549 48.549 0 013.44 1.668 2.25 2.25 0 002.12 0z\"/>\n  <path d=\"M4.462 19.462c.42-.419.753-.89 1-1.394.453.213.902.434 1.347.661a6.743 6.743 0 01-1.286 1.794.75.75 0 11-1.06-1.06z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/adjustments-horizontal.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.adjustments_horizontal />

      <.adjustments_horizontal class="h-6 w-6 text-gray-500" />

  or as a function

      <%= adjustments_horizontal() %>

      <%= adjustments_horizontal(class: "h-6 w-6 text-gray-500") %>
  """
  def adjustments_horizontal(assigns_or_opts \\ [])

  def adjustments_horizontal(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M18.75 12.75h1.5a.75.75 0 000-1.5h-1.5a.75.75 0 000 1.5zM12 6a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5A.75.75 0 0112 6zM12 18a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5A.75.75 0 0112 18zM3.75 6.75h1.5a.75.75 0 100-1.5h-1.5a.75.75 0 000 1.5zM5.25 18.75h-1.5a.75.75 0 010-1.5h1.5a.75.75 0 010 1.5zM3 12a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5A.75.75 0 013 12zM9 3.75a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5zM12.75 12a2.25 2.25 0 114.5 0 2.25 2.25 0 01-4.5 0zM9 15.75a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5z"/>
    </svg>
    """
  end

  def adjustments_horizontal(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M18.75 12.75h1.5a.75.75 0 000-1.5h-1.5a.75.75 0 000 1.5zM12 6a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5A.75.75 0 0112 6zM12 18a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5A.75.75 0 0112 18zM3.75 6.75h1.5a.75.75 0 100-1.5h-1.5a.75.75 0 000 1.5zM5.25 18.75h-1.5a.75.75 0 010-1.5h1.5a.75.75 0 010 1.5zM3 12a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5A.75.75 0 013 12zM9 3.75a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5zM12.75 12a2.25 2.25 0 114.5 0 2.25 2.25 0 01-4.5 0zM9 15.75a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/adjustments-vertical.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.adjustments_vertical />

      <.adjustments_vertical class="h-6 w-6 text-gray-500" />

  or as a function

      <%= adjustments_vertical() %>

      <%= adjustments_vertical(class: "h-6 w-6 text-gray-500") %>
  """
  def adjustments_vertical(assigns_or_opts \\ [])

  def adjustments_vertical(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M6 12a.75.75 0 01-.75-.75v-7.5a.75.75 0 111.5 0v7.5A.75.75 0 016 12zM18 12a.75.75 0 01-.75-.75v-7.5a.75.75 0 011.5 0v7.5A.75.75 0 0118 12zM6.75 20.25v-1.5a.75.75 0 00-1.5 0v1.5a.75.75 0 001.5 0zM18.75 18.75v1.5a.75.75 0 01-1.5 0v-1.5a.75.75 0 011.5 0zM12.75 5.25v-1.5a.75.75 0 00-1.5 0v1.5a.75.75 0 001.5 0zM12 21a.75.75 0 01-.75-.75v-7.5a.75.75 0 011.5 0v7.5A.75.75 0 0112 21zM3.75 15a2.25 2.25 0 104.5 0 2.25 2.25 0 00-4.5 0zM12 11.25a2.25 2.25 0 110-4.5 2.25 2.25 0 010 4.5zM15.75 15a2.25 2.25 0 104.5 0 2.25 2.25 0 00-4.5 0z"/>
    </svg>
    """
  end

  def adjustments_vertical(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M6 12a.75.75 0 01-.75-.75v-7.5a.75.75 0 111.5 0v7.5A.75.75 0 016 12zM18 12a.75.75 0 01-.75-.75v-7.5a.75.75 0 011.5 0v7.5A.75.75 0 0118 12zM6.75 20.25v-1.5a.75.75 0 00-1.5 0v1.5a.75.75 0 001.5 0zM18.75 18.75v1.5a.75.75 0 01-1.5 0v-1.5a.75.75 0 011.5 0zM12.75 5.25v-1.5a.75.75 0 00-1.5 0v1.5a.75.75 0 001.5 0zM12 21a.75.75 0 01-.75-.75v-7.5a.75.75 0 011.5 0v7.5A.75.75 0 0112 21zM3.75 15a2.25 2.25 0 104.5 0 2.25 2.25 0 00-4.5 0zM12 11.25a2.25 2.25 0 110-4.5 2.25 2.25 0 010 4.5zM15.75 15a2.25 2.25 0 104.5 0 2.25 2.25 0 00-4.5 0z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/archive-box-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.archive_box_arrow_down />

      <.archive_box_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= archive_box_arrow_down() %>

      <%= archive_box_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def archive_box_arrow_down(assigns_or_opts \\ [])

  def archive_box_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.375 3C2.339 3 1.5 3.84 1.5 4.875v.75c0 1.036.84 1.875 1.875 1.875h17.25c1.035 0 1.875-.84 1.875-1.875v-.75C22.5 3.839 21.66 3 20.625 3H3.375z"/>
      <path fill-rule="evenodd" d="M3.087 9l.54 9.176A3 3 0 006.62 21h10.757a3 3 0 002.995-2.824L20.913 9H3.087zM12 10.5a.75.75 0 01.75.75v4.94l1.72-1.72a.75.75 0 111.06 1.06l-3 3a.75.75 0 01-1.06 0l-3-3a.75.75 0 111.06-1.06l1.72 1.72v-4.94a.75.75 0 01.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def archive_box_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M3.375 3C2.339 3 1.5 3.84 1.5 4.875v.75c0 1.036.84 1.875 1.875 1.875h17.25c1.035 0 1.875-.84 1.875-1.875v-.75C22.5 3.839 21.66 3 20.625 3H3.375z\"/>\n  <path fill-rule=\"evenodd\" d=\"M3.087 9l.54 9.176A3 3 0 006.62 21h10.757a3 3 0 002.995-2.824L20.913 9H3.087zM12 10.5a.75.75 0 01.75.75v4.94l1.72-1.72a.75.75 0 111.06 1.06l-3 3a.75.75 0 01-1.06 0l-3-3a.75.75 0 111.06-1.06l1.72 1.72v-4.94a.75.75 0 01.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/archive-box-x-mark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.archive_box_x_mark />

      <.archive_box_x_mark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= archive_box_x_mark() %>

      <%= archive_box_x_mark(class: "h-6 w-6 text-gray-500") %>
  """
  def archive_box_x_mark(assigns_or_opts \\ [])

  def archive_box_x_mark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.375 3C2.339 3 1.5 3.84 1.5 4.875v.75c0 1.036.84 1.875 1.875 1.875h17.25c1.035 0 1.875-.84 1.875-1.875v-.75C22.5 3.839 21.66 3 20.625 3H3.375z"/>
      <path fill-rule="evenodd" d="M3.087 9l.54 9.176A3 3 0 006.62 21h10.757a3 3 0 002.995-2.824L20.913 9H3.087zm6.133 2.845a.75.75 0 011.06 0l1.72 1.72 1.72-1.72a.75.75 0 111.06 1.06l-1.72 1.72 1.72 1.72a.75.75 0 11-1.06 1.06L12 15.685l-1.72 1.72a.75.75 0 11-1.06-1.06l1.72-1.72-1.72-1.72a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def archive_box_x_mark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M3.375 3C2.339 3 1.5 3.84 1.5 4.875v.75c0 1.036.84 1.875 1.875 1.875h17.25c1.035 0 1.875-.84 1.875-1.875v-.75C22.5 3.839 21.66 3 20.625 3H3.375z\"/>\n  <path fill-rule=\"evenodd\" d=\"M3.087 9l.54 9.176A3 3 0 006.62 21h10.757a3 3 0 002.995-2.824L20.913 9H3.087zm6.133 2.845a.75.75 0 011.06 0l1.72 1.72 1.72-1.72a.75.75 0 111.06 1.06l-1.72 1.72 1.72 1.72a.75.75 0 11-1.06 1.06L12 15.685l-1.72 1.72a.75.75 0 11-1.06-1.06l1.72-1.72-1.72-1.72a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/archive-box.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.archive_box />

      <.archive_box class="h-6 w-6 text-gray-500" />

  or as a function

      <%= archive_box() %>

      <%= archive_box(class: "h-6 w-6 text-gray-500") %>
  """
  def archive_box(assigns_or_opts \\ [])

  def archive_box(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.375 3C2.339 3 1.5 3.84 1.5 4.875v.75c0 1.036.84 1.875 1.875 1.875h17.25c1.035 0 1.875-.84 1.875-1.875v-.75C22.5 3.839 21.66 3 20.625 3H3.375z"/>
      <path fill-rule="evenodd" d="M3.087 9l.54 9.176A3 3 0 006.62 21h10.757a3 3 0 002.995-2.824L20.913 9H3.087zm6.163 3.75A.75.75 0 0110 12h4a.75.75 0 010 1.5h-4a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def archive_box(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M3.375 3C2.339 3 1.5 3.84 1.5 4.875v.75c0 1.036.84 1.875 1.875 1.875h17.25c1.035 0 1.875-.84 1.875-1.875v-.75C22.5 3.839 21.66 3 20.625 3H3.375z\"/>\n  <path fill-rule=\"evenodd\" d=\"M3.087 9l.54 9.176A3 3 0 006.62 21h10.757a3 3 0 002.995-2.824L20.913 9H3.087zm6.163 3.75A.75.75 0 0110 12h4a.75.75 0 010 1.5h-4a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_circle />

      <.arrow_down_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_circle() %>

      <%= arrow_down_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_circle(assigns_or_opts \\ [])

  def arrow_down_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-.53 14.03a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V8.25a.75.75 0 00-1.5 0v5.69l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_down_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-.53 14.03a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V8.25a.75.75 0 00-1.5 0v5.69l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_left />

      <.arrow_down_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_left() %>

      <%= arrow_down_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_left(assigns_or_opts \\ [])

  def arrow_down_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M20.03 3.97a.75.75 0 010 1.06L6.31 18.75h9.44a.75.75 0 010 1.5H4.5a.75.75 0 01-.75-.75V8.25a.75.75 0 011.5 0v9.44L18.97 3.97a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_down_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M20.03 3.97a.75.75 0 010 1.06L6.31 18.75h9.44a.75.75 0 010 1.5H4.5a.75.75 0 01-.75-.75V8.25a.75.75 0 011.5 0v9.44L18.97 3.97a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-on-square-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_on_square_stack />

      <.arrow_down_on_square_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_on_square_stack() %>

      <%= arrow_down_on_square_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_on_square_stack(assigns_or_opts \\ [])

  def arrow_down_on_square_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M9.75 6.75h-3a3 3 0 00-3 3v7.5a3 3 0 003 3h7.5a3 3 0 003-3v-7.5a3 3 0 00-3-3h-3V1.5a.75.75 0 00-1.5 0v5.25zm0 0h1.5v5.69l1.72-1.72a.75.75 0 111.06 1.06l-3 3a.75.75 0 01-1.06 0l-3-3a.75.75 0 111.06-1.06l1.72 1.72V6.75z" clip-rule="evenodd"/>
      <path d="M7.151 21.75a2.999 2.999 0 002.599 1.5h7.5a3 3 0 003-3v-7.5c0-1.11-.603-2.08-1.5-2.599v7.099a4.5 4.5 0 01-4.5 4.5H7.151z"/>
    </svg>
    """
  end

  def arrow_down_on_square_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M9.75 6.75h-3a3 3 0 00-3 3v7.5a3 3 0 003 3h7.5a3 3 0 003-3v-7.5a3 3 0 00-3-3h-3V1.5a.75.75 0 00-1.5 0v5.25zm0 0h1.5v5.69l1.72-1.72a.75.75 0 111.06 1.06l-3 3a.75.75 0 01-1.06 0l-3-3a.75.75 0 111.06-1.06l1.72 1.72V6.75z\" clip-rule=\"evenodd\"/>\n  <path d=\"M7.151 21.75a2.999 2.999 0 002.599 1.5h7.5a3 3 0 003-3v-7.5c0-1.11-.603-2.08-1.5-2.599v7.099a4.5 4.5 0 01-4.5 4.5H7.151z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-on-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_on_square />

      <.arrow_down_on_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_on_square() %>

      <%= arrow_down_on_square(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_on_square(assigns_or_opts \\ [])

  def arrow_down_on_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 1.5a.75.75 0 01.75.75V7.5h-1.5V2.25A.75.75 0 0112 1.5zM11.25 7.5v5.69l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V7.5h3.75a3 3 0 013 3v9a3 3 0 01-3 3h-9a3 3 0 01-3-3v-9a3 3 0 013-3h3.75z"/>
    </svg>
    """
  end

  def arrow_down_on_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M12 1.5a.75.75 0 01.75.75V7.5h-1.5V2.25A.75.75 0 0112 1.5zM11.25 7.5v5.69l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V7.5h3.75a3 3 0 013 3v9a3 3 0 01-3 3h-9a3 3 0 01-3-3v-9a3 3 0 013-3h3.75z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_right />

      <.arrow_down_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_right() %>

      <%= arrow_down_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_right(assigns_or_opts \\ [])

  def arrow_down_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3.97 3.97a.75.75 0 011.06 0l13.72 13.72V8.25a.75.75 0 011.5 0V19.5a.75.75 0 01-.75.75H8.25a.75.75 0 010-1.5h9.44L3.97 5.03a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_down_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3.97 3.97a.75.75 0 011.06 0l13.72 13.72V8.25a.75.75 0 011.5 0V19.5a.75.75 0 01-.75.75H8.25a.75.75 0 010-1.5h9.44L3.97 5.03a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-tray.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_tray />

      <.arrow_down_tray class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_tray() %>

      <%= arrow_down_tray(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_tray(assigns_or_opts \\ [])

  def arrow_down_tray(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25a.75.75 0 01.75.75v11.69l3.22-3.22a.75.75 0 111.06 1.06l-4.5 4.5a.75.75 0 01-1.06 0l-4.5-4.5a.75.75 0 111.06-1.06l3.22 3.22V3a.75.75 0 01.75-.75zm-9 13.5a.75.75 0 01.75.75v2.25a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5V16.5a.75.75 0 011.5 0v2.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V16.5a.75.75 0 01.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_down_tray(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25a.75.75 0 01.75.75v11.69l3.22-3.22a.75.75 0 111.06 1.06l-4.5 4.5a.75.75 0 01-1.06 0l-4.5-4.5a.75.75 0 111.06-1.06l3.22 3.22V3a.75.75 0 01.75-.75zm-9 13.5a.75.75 0 01.75.75v2.25a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5V16.5a.75.75 0 011.5 0v2.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V16.5a.75.75 0 01.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down />

      <.arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down() %>

      <%= arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down(assigns_or_opts \\ [])

  def arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25a.75.75 0 01.75.75v16.19l6.22-6.22a.75.75 0 111.06 1.06l-7.5 7.5a.75.75 0 01-1.06 0l-7.5-7.5a.75.75 0 111.06-1.06l6.22 6.22V3a.75.75 0 01.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25a.75.75 0 01.75.75v16.19l6.22-6.22a.75.75 0 111.06 1.06l-7.5 7.5a.75.75 0 01-1.06 0l-7.5-7.5a.75.75 0 111.06-1.06l6.22 6.22V3a.75.75 0 01.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-left-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_left_circle />

      <.arrow_left_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_left_circle() %>

      <%= arrow_left_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_left_circle(assigns_or_opts \\ [])

  def arrow_left_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-4.28 9.22a.75.75 0 000 1.06l3 3a.75.75 0 101.06-1.06l-1.72-1.72h5.69a.75.75 0 000-1.5h-5.69l1.72-1.72a.75.75 0 00-1.06-1.06l-3 3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_left_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-4.28 9.22a.75.75 0 000 1.06l3 3a.75.75 0 101.06-1.06l-1.72-1.72h5.69a.75.75 0 000-1.5h-5.69l1.72-1.72a.75.75 0 00-1.06-1.06l-3 3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-left-on-rectangle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_left_on_rectangle />

      <.arrow_left_on_rectangle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_left_on_rectangle() %>

      <%= arrow_left_on_rectangle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_left_on_rectangle(assigns_or_opts \\ [])

  def arrow_left_on_rectangle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M7.5 3.75A1.5 1.5 0 006 5.25v13.5a1.5 1.5 0 001.5 1.5h6a1.5 1.5 0 001.5-1.5V15a.75.75 0 011.5 0v3.75a3 3 0 01-3 3h-6a3 3 0 01-3-3V5.25a3 3 0 013-3h6a3 3 0 013 3V9A.75.75 0 0115 9V5.25a1.5 1.5 0 00-1.5-1.5h-6zm5.03 4.72a.75.75 0 010 1.06l-1.72 1.72h10.94a.75.75 0 010 1.5H10.81l1.72 1.72a.75.75 0 11-1.06 1.06l-3-3a.75.75 0 010-1.06l3-3a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_left_on_rectangle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M7.5 3.75A1.5 1.5 0 006 5.25v13.5a1.5 1.5 0 001.5 1.5h6a1.5 1.5 0 001.5-1.5V15a.75.75 0 011.5 0v3.75a3 3 0 01-3 3h-6a3 3 0 01-3-3V5.25a3 3 0 013-3h6a3 3 0 013 3V9A.75.75 0 0115 9V5.25a1.5 1.5 0 00-1.5-1.5h-6zm5.03 4.72a.75.75 0 010 1.06l-1.72 1.72h10.94a.75.75 0 010 1.5H10.81l1.72 1.72a.75.75 0 11-1.06 1.06l-3-3a.75.75 0 010-1.06l3-3a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_left />

      <.arrow_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_left() %>

      <%= arrow_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_left(assigns_or_opts \\ [])

  def arrow_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.03 3.97a.75.75 0 010 1.06l-6.22 6.22H21a.75.75 0 010 1.5H4.81l6.22 6.22a.75.75 0 11-1.06 1.06l-7.5-7.5a.75.75 0 010-1.06l7.5-7.5a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.03 3.97a.75.75 0 010 1.06l-6.22 6.22H21a.75.75 0 010 1.5H4.81l6.22 6.22a.75.75 0 11-1.06 1.06l-7.5-7.5a.75.75 0 010-1.06l7.5-7.5a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-long-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_long_down />

      <.arrow_long_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_long_down() %>

      <%= arrow_long_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_long_down(assigns_or_opts \\ [])

  def arrow_long_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25a.75.75 0 01.75.75v16.19l2.47-2.47a.75.75 0 111.06 1.06l-3.75 3.75a.75.75 0 01-1.06 0l-3.75-3.75a.75.75 0 111.06-1.06l2.47 2.47V3a.75.75 0 01.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_long_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25a.75.75 0 01.75.75v16.19l2.47-2.47a.75.75 0 111.06 1.06l-3.75 3.75a.75.75 0 01-1.06 0l-3.75-3.75a.75.75 0 111.06-1.06l2.47 2.47V3a.75.75 0 01.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-long-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_long_left />

      <.arrow_long_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_long_left() %>

      <%= arrow_long_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_long_left(assigns_or_opts \\ [])

  def arrow_long_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M7.28 7.72a.75.75 0 010 1.06l-2.47 2.47H21a.75.75 0 010 1.5H4.81l2.47 2.47a.75.75 0 11-1.06 1.06l-3.75-3.75a.75.75 0 010-1.06l3.75-3.75a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_long_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M7.28 7.72a.75.75 0 010 1.06l-2.47 2.47H21a.75.75 0 010 1.5H4.81l2.47 2.47a.75.75 0 11-1.06 1.06l-3.75-3.75a.75.75 0 010-1.06l3.75-3.75a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-long-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_long_right />

      <.arrow_long_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_long_right() %>

      <%= arrow_long_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_long_right(assigns_or_opts \\ [])

  def arrow_long_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M16.72 7.72a.75.75 0 011.06 0l3.75 3.75a.75.75 0 010 1.06l-3.75 3.75a.75.75 0 11-1.06-1.06l2.47-2.47H3a.75.75 0 010-1.5h16.19l-2.47-2.47a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_long_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M16.72 7.72a.75.75 0 011.06 0l3.75 3.75a.75.75 0 010 1.06l-3.75 3.75a.75.75 0 11-1.06-1.06l2.47-2.47H3a.75.75 0 010-1.5h16.19l-2.47-2.47a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-long-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_long_up />

      <.arrow_long_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_long_up() %>

      <%= arrow_long_up(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_long_up(assigns_or_opts \\ [])

  def arrow_long_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.47 2.47a.75.75 0 011.06 0l3.75 3.75a.75.75 0 01-1.06 1.06l-2.47-2.47V21a.75.75 0 01-1.5 0V4.81L8.78 7.28a.75.75 0 01-1.06-1.06l3.75-3.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_long_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.47 2.47a.75.75 0 011.06 0l3.75 3.75a.75.75 0 01-1.06 1.06l-2.47-2.47V21a.75.75 0 01-1.5 0V4.81L8.78 7.28a.75.75 0 01-1.06-1.06l3.75-3.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-path.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_path />

      <.arrow_path class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_path() %>

      <%= arrow_path(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_path(assigns_or_opts \\ [])

  def arrow_path(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 5.25c-1.213 0-2.415.046-3.605.135a3.256 3.256 0 00-3.01 3.01c-.044.583-.077 1.17-.1 1.759L6.97 8.47a.75.75 0 011.06 1.06l-3 3a.75.75 0 01-1.06 0l-3-3a.75.75 0 011.06-1.06l1.752 1.751c.023-.65.06-1.296.108-1.939A4.756 4.756 0 018.282 3.89a49.423 49.423 0 017.436 0 4.756 4.756 0 014.392 4.392c.017.224.032.447.046.672a.75.75 0 01-1.497.092 48.187 48.187 0 00-.044-.651 3.256 3.256 0 00-3.01-3.01A47.926 47.926 0 0012 5.25zm6.97 6.22a.75.75 0 011.06 0l3 3a.75.75 0 11-1.06 1.06l-1.752-1.751a49.25 49.25 0 01-.108 1.939 4.756 4.756 0 01-4.392 4.392 49.412 49.412 0 01-7.436 0 4.756 4.756 0 01-4.392-4.392 49.112 49.112 0 01-.046-.672.75.75 0 111.497-.092c.013.217.028.434.044.651a3.256 3.256 0 003.01 3.01 47.951 47.951 0 007.21 0 3.256 3.256 0 003.01-3.01c.044-.583.077-1.17.1-1.759L17.03 15.53a.75.75 0 11-1.06-1.06l3-3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_path(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 5.25c-1.213 0-2.415.046-3.605.135a3.256 3.256 0 00-3.01 3.01c-.044.583-.077 1.17-.1 1.759L6.97 8.47a.75.75 0 011.06 1.06l-3 3a.75.75 0 01-1.06 0l-3-3a.75.75 0 011.06-1.06l1.752 1.751c.023-.65.06-1.296.108-1.939A4.756 4.756 0 018.282 3.89a49.423 49.423 0 017.436 0 4.756 4.756 0 014.392 4.392c.017.224.032.447.046.672a.75.75 0 01-1.497.092 48.187 48.187 0 00-.044-.651 3.256 3.256 0 00-3.01-3.01A47.926 47.926 0 0012 5.25zm6.97 6.22a.75.75 0 011.06 0l3 3a.75.75 0 11-1.06 1.06l-1.752-1.751a49.25 49.25 0 01-.108 1.939 4.756 4.756 0 01-4.392 4.392 49.412 49.412 0 01-7.436 0 4.756 4.756 0 01-4.392-4.392 49.112 49.112 0 01-.046-.672.75.75 0 111.497-.092c.013.217.028.434.044.651a3.256 3.256 0 003.01 3.01 47.951 47.951 0 007.21 0 3.256 3.256 0 003.01-3.01c.044-.583.077-1.17.1-1.759L17.03 15.53a.75.75 0 11-1.06-1.06l3-3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-right-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_right_circle />

      <.arrow_right_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_right_circle() %>

      <%= arrow_right_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_right_circle(assigns_or_opts \\ [])

  def arrow_right_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm4.28 10.28a.75.75 0 000-1.06l-3-3a.75.75 0 10-1.06 1.06l1.72 1.72H8.25a.75.75 0 000 1.5h5.69l-1.72 1.72a.75.75 0 101.06 1.06l3-3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_right_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm4.28 10.28a.75.75 0 000-1.06l-3-3a.75.75 0 10-1.06 1.06l1.72 1.72H8.25a.75.75 0 000 1.5h5.69l-1.72 1.72a.75.75 0 101.06 1.06l3-3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-right-on-rectangle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_right_on_rectangle />

      <.arrow_right_on_rectangle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_right_on_rectangle() %>

      <%= arrow_right_on_rectangle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_right_on_rectangle(assigns_or_opts \\ [])

  def arrow_right_on_rectangle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M7.5 3.75A1.5 1.5 0 006 5.25v13.5a1.5 1.5 0 001.5 1.5h6a1.5 1.5 0 001.5-1.5V15a.75.75 0 011.5 0v3.75a3 3 0 01-3 3h-6a3 3 0 01-3-3V5.25a3 3 0 013-3h6a3 3 0 013 3V9A.75.75 0 0115 9V5.25a1.5 1.5 0 00-1.5-1.5h-6zm10.72 4.72a.75.75 0 011.06 0l3 3a.75.75 0 010 1.06l-3 3a.75.75 0 11-1.06-1.06l1.72-1.72H9a.75.75 0 010-1.5h10.94l-1.72-1.72a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_right_on_rectangle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M7.5 3.75A1.5 1.5 0 006 5.25v13.5a1.5 1.5 0 001.5 1.5h6a1.5 1.5 0 001.5-1.5V15a.75.75 0 011.5 0v3.75a3 3 0 01-3 3h-6a3 3 0 01-3-3V5.25a3 3 0 013-3h6a3 3 0 013 3V9A.75.75 0 0115 9V5.25a1.5 1.5 0 00-1.5-1.5h-6zm10.72 4.72a.75.75 0 011.06 0l3 3a.75.75 0 010 1.06l-3 3a.75.75 0 11-1.06-1.06l1.72-1.72H9a.75.75 0 010-1.5h10.94l-1.72-1.72a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_right />

      <.arrow_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_right() %>

      <%= arrow_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_right(assigns_or_opts \\ [])

  def arrow_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12.97 3.97a.75.75 0 011.06 0l7.5 7.5a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 11-1.06-1.06l6.22-6.22H3a.75.75 0 010-1.5h16.19l-6.22-6.22a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12.97 3.97a.75.75 0 011.06 0l7.5 7.5a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 11-1.06-1.06l6.22-6.22H3a.75.75 0 010-1.5h16.19l-6.22-6.22a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-top-right-on-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_top_right_on_square />

      <.arrow_top_right_on_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_top_right_on_square() %>

      <%= arrow_top_right_on_square(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_top_right_on_square(assigns_or_opts \\ [])

  def arrow_top_right_on_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M15.75 2.25H21a.75.75 0 01.75.75v5.25a.75.75 0 01-1.5 0V4.81L8.03 17.03a.75.75 0 01-1.06-1.06L19.19 3.75h-3.44a.75.75 0 010-1.5zm-10.5 4.5a1.5 1.5 0 00-1.5 1.5v10.5a1.5 1.5 0 001.5 1.5h10.5a1.5 1.5 0 001.5-1.5V10.5a.75.75 0 011.5 0v8.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V8.25a3 3 0 013-3h8.25a.75.75 0 010 1.5H5.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_top_right_on_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M15.75 2.25H21a.75.75 0 01.75.75v5.25a.75.75 0 01-1.5 0V4.81L8.03 17.03a.75.75 0 01-1.06-1.06L19.19 3.75h-3.44a.75.75 0 010-1.5zm-10.5 4.5a1.5 1.5 0 00-1.5 1.5v10.5a1.5 1.5 0 001.5 1.5h10.5a1.5 1.5 0 001.5-1.5V10.5a.75.75 0 011.5 0v8.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V8.25a3 3 0 013-3h8.25a.75.75 0 010 1.5H5.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-trending-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_trending_down />

      <.arrow_trending_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_trending_down() %>

      <%= arrow_trending_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_trending_down(assigns_or_opts \\ [])

  def arrow_trending_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M1.72 5.47a.75.75 0 011.06 0L9 11.69l3.756-3.756a.75.75 0 01.985-.066 12.698 12.698 0 014.575 6.832l.308 1.149 2.277-3.943a.75.75 0 111.299.75l-3.182 5.51a.75.75 0 01-1.025.275l-5.511-3.181a.75.75 0 01.75-1.3l3.943 2.277-.308-1.149a11.194 11.194 0 00-3.528-5.617l-3.809 3.81a.75.75 0 01-1.06 0L1.72 6.53a.75.75 0 010-1.061z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_trending_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M1.72 5.47a.75.75 0 011.06 0L9 11.69l3.756-3.756a.75.75 0 01.985-.066 12.698 12.698 0 014.575 6.832l.308 1.149 2.277-3.943a.75.75 0 111.299.75l-3.182 5.51a.75.75 0 01-1.025.275l-5.511-3.181a.75.75 0 01.75-1.3l3.943 2.277-.308-1.149a11.194 11.194 0 00-3.528-5.617l-3.809 3.81a.75.75 0 01-1.06 0L1.72 6.53a.75.75 0 010-1.061z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-trending-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_trending_up />

      <.arrow_trending_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_trending_up() %>

      <%= arrow_trending_up(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_trending_up(assigns_or_opts \\ [])

  def arrow_trending_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M15.22 6.268a.75.75 0 01.968-.432l5.942 2.28a.75.75 0 01.431.97l-2.28 5.941a.75.75 0 11-1.4-.537l1.63-4.251-1.086.483a11.2 11.2 0 00-5.45 5.174.75.75 0 01-1.199.19L9 12.31l-6.22 6.22a.75.75 0 11-1.06-1.06l6.75-6.75a.75.75 0 011.06 0l3.606 3.605a12.694 12.694 0 015.68-4.973l1.086-.484-4.251-1.631a.75.75 0 01-.432-.97z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_trending_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M15.22 6.268a.75.75 0 01.968-.432l5.942 2.28a.75.75 0 01.431.97l-2.28 5.941a.75.75 0 11-1.4-.537l1.63-4.251-1.086.483a11.2 11.2 0 00-5.45 5.174.75.75 0 01-1.199.19L9 12.31l-6.22 6.22a.75.75 0 11-1.06-1.06l6.75-6.75a.75.75 0 011.06 0l3.606 3.605a12.694 12.694 0 015.68-4.973l1.086-.484-4.251-1.631a.75.75 0 01-.432-.97z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_circle />

      <.arrow_up_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_circle() %>

      <%= arrow_up_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_circle(assigns_or_opts \\ [])

  def arrow_up_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm.53 5.47a.75.75 0 00-1.06 0l-3 3a.75.75 0 101.06 1.06l1.72-1.72v5.69a.75.75 0 001.5 0v-5.69l1.72 1.72a.75.75 0 101.06-1.06l-3-3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_up_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm.53 5.47a.75.75 0 00-1.06 0l-3 3a.75.75 0 101.06 1.06l1.72-1.72v5.69a.75.75 0 001.5 0v-5.69l1.72 1.72a.75.75 0 101.06-1.06l-3-3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_left />

      <.arrow_up_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_left() %>

      <%= arrow_up_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_left(assigns_or_opts \\ [])

  def arrow_up_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.25 6.31v9.44a.75.75 0 01-1.5 0V4.5a.75.75 0 01.75-.75h11.25a.75.75 0 010 1.5H6.31l13.72 13.72a.75.75 0 11-1.06 1.06L5.25 6.31z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_up_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.25 6.31v9.44a.75.75 0 01-1.5 0V4.5a.75.75 0 01.75-.75h11.25a.75.75 0 010 1.5H6.31l13.72 13.72a.75.75 0 11-1.06 1.06L5.25 6.31z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-on-square-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_on_square_stack />

      <.arrow_up_on_square_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_on_square_stack() %>

      <%= arrow_up_on_square_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_on_square_stack(assigns_or_opts \\ [])

  def arrow_up_on_square_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M9.97.97a.75.75 0 011.06 0l3 3a.75.75 0 01-1.06 1.06l-1.72-1.72v3.44h-1.5V3.31L8.03 5.03a.75.75 0 01-1.06-1.06l3-3zM9.75 6.75v6a.75.75 0 001.5 0v-6h3a3 3 0 013 3v7.5a3 3 0 01-3 3h-7.5a3 3 0 01-3-3v-7.5a3 3 0 013-3h3z"/>
      <path d="M7.151 21.75a2.999 2.999 0 002.599 1.5h7.5a3 3 0 003-3v-7.5c0-1.11-.603-2.08-1.5-2.599v7.099a4.5 4.5 0 01-4.5 4.5H7.151z"/>
    </svg>
    """
  end

  def arrow_up_on_square_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M9.97.97a.75.75 0 011.06 0l3 3a.75.75 0 01-1.06 1.06l-1.72-1.72v3.44h-1.5V3.31L8.03 5.03a.75.75 0 01-1.06-1.06l3-3zM9.75 6.75v6a.75.75 0 001.5 0v-6h3a3 3 0 013 3v7.5a3 3 0 01-3 3h-7.5a3 3 0 01-3-3v-7.5a3 3 0 013-3h3z\"/>\n  <path d=\"M7.151 21.75a2.999 2.999 0 002.599 1.5h7.5a3 3 0 003-3v-7.5c0-1.11-.603-2.08-1.5-2.599v7.099a4.5 4.5 0 01-4.5 4.5H7.151z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-on-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_on_square />

      <.arrow_up_on_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_on_square() %>

      <%= arrow_up_on_square(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_on_square(assigns_or_opts \\ [])

  def arrow_up_on_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M11.47 1.72a.75.75 0 011.06 0l3 3a.75.75 0 01-1.06 1.06l-1.72-1.72V7.5h-1.5V4.06L9.53 5.78a.75.75 0 01-1.06-1.06l3-3zM11.25 7.5V15a.75.75 0 001.5 0V7.5h3.75a3 3 0 013 3v9a3 3 0 01-3 3h-9a3 3 0 01-3-3v-9a3 3 0 013-3h3.75z"/>
    </svg>
    """
  end

  def arrow_up_on_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M11.47 1.72a.75.75 0 011.06 0l3 3a.75.75 0 01-1.06 1.06l-1.72-1.72V7.5h-1.5V4.06L9.53 5.78a.75.75 0 01-1.06-1.06l3-3zM11.25 7.5V15a.75.75 0 001.5 0V7.5h3.75a3 3 0 013 3v9a3 3 0 01-3 3h-9a3 3 0 01-3-3v-9a3 3 0 013-3h3.75z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_right />

      <.arrow_up_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_right() %>

      <%= arrow_up_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_right(assigns_or_opts \\ [])

  def arrow_up_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M8.25 3.75H19.5a.75.75 0 01.75.75v11.25a.75.75 0 01-1.5 0V6.31L5.03 20.03a.75.75 0 01-1.06-1.06L17.69 5.25H8.25a.75.75 0 010-1.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_up_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M8.25 3.75H19.5a.75.75 0 01.75.75v11.25a.75.75 0 01-1.5 0V6.31L5.03 20.03a.75.75 0 01-1.06-1.06L17.69 5.25H8.25a.75.75 0 010-1.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-tray.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_tray />

      <.arrow_up_tray class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_tray() %>

      <%= arrow_up_tray(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_tray(assigns_or_opts \\ [])

  def arrow_up_tray(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.47 2.47a.75.75 0 011.06 0l4.5 4.5a.75.75 0 01-1.06 1.06l-3.22-3.22V16.5a.75.75 0 01-1.5 0V4.81L8.03 8.03a.75.75 0 01-1.06-1.06l4.5-4.5zM3 15.75a.75.75 0 01.75.75v2.25a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5V16.5a.75.75 0 011.5 0v2.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V16.5a.75.75 0 01.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_up_tray(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.47 2.47a.75.75 0 011.06 0l4.5 4.5a.75.75 0 01-1.06 1.06l-3.22-3.22V16.5a.75.75 0 01-1.5 0V4.81L8.03 8.03a.75.75 0 01-1.06-1.06l4.5-4.5zM3 15.75a.75.75 0 01.75.75v2.25a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5V16.5a.75.75 0 011.5 0v2.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V16.5a.75.75 0 01.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up />

      <.arrow_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up() %>

      <%= arrow_up(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up(assigns_or_opts \\ [])

  def arrow_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.47 2.47a.75.75 0 011.06 0l7.5 7.5a.75.75 0 11-1.06 1.06l-6.22-6.22V21a.75.75 0 01-1.5 0V4.81l-6.22 6.22a.75.75 0 11-1.06-1.06l7.5-7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.47 2.47a.75.75 0 011.06 0l7.5 7.5a.75.75 0 11-1.06 1.06l-6.22-6.22V21a.75.75 0 01-1.5 0V4.81l-6.22 6.22a.75.75 0 11-1.06-1.06l7.5-7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-uturn-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_uturn_down />

      <.arrow_uturn_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_uturn_down() %>

      <%= arrow_uturn_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_uturn_down(assigns_or_opts \\ [])

  def arrow_uturn_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M15 3.75A5.25 5.25 0 009.75 9v10.19l4.72-4.72a.75.75 0 111.06 1.06l-6 6a.75.75 0 01-1.06 0l-6-6a.75.75 0 111.06-1.06l4.72 4.72V9a6.75 6.75 0 0113.5 0v3a.75.75 0 01-1.5 0V9c0-2.9-2.35-5.25-5.25-5.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_uturn_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M15 3.75A5.25 5.25 0 009.75 9v10.19l4.72-4.72a.75.75 0 111.06 1.06l-6 6a.75.75 0 01-1.06 0l-6-6a.75.75 0 111.06-1.06l4.72 4.72V9a6.75 6.75 0 0113.5 0v3a.75.75 0 01-1.5 0V9c0-2.9-2.35-5.25-5.25-5.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-uturn-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_uturn_left />

      <.arrow_uturn_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_uturn_left() %>

      <%= arrow_uturn_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_uturn_left(assigns_or_opts \\ [])

  def arrow_uturn_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M9.53 2.47a.75.75 0 010 1.06L4.81 8.25H15a6.75 6.75 0 010 13.5h-3a.75.75 0 010-1.5h3a5.25 5.25 0 100-10.5H4.81l4.72 4.72a.75.75 0 11-1.06 1.06l-6-6a.75.75 0 010-1.06l6-6a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_uturn_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M9.53 2.47a.75.75 0 010 1.06L4.81 8.25H15a6.75 6.75 0 010 13.5h-3a.75.75 0 010-1.5h3a5.25 5.25 0 100-10.5H4.81l4.72 4.72a.75.75 0 11-1.06 1.06l-6-6a.75.75 0 010-1.06l6-6a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-uturn-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_uturn_right />

      <.arrow_uturn_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_uturn_right() %>

      <%= arrow_uturn_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_uturn_right(assigns_or_opts \\ [])

  def arrow_uturn_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M14.47 2.47a.75.75 0 011.06 0l6 6a.75.75 0 010 1.06l-6 6a.75.75 0 11-1.06-1.06l4.72-4.72H9a5.25 5.25 0 100 10.5h3a.75.75 0 010 1.5H9a6.75 6.75 0 010-13.5h10.19l-4.72-4.72a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_uturn_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M14.47 2.47a.75.75 0 011.06 0l6 6a.75.75 0 010 1.06l-6 6a.75.75 0 11-1.06-1.06l4.72-4.72H9a5.25 5.25 0 100 10.5h3a.75.75 0 010 1.5H9a6.75 6.75 0 010-13.5h10.19l-4.72-4.72a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-uturn-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_uturn_up />

      <.arrow_uturn_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_uturn_up() %>

      <%= arrow_uturn_up(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_uturn_up(assigns_or_opts \\ [])

  def arrow_uturn_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M21.53 9.53a.75.75 0 01-1.06 0l-4.72-4.72V15a6.75 6.75 0 01-13.5 0v-3a.75.75 0 011.5 0v3a5.25 5.25 0 1010.5 0V4.81L9.53 9.53a.75.75 0 01-1.06-1.06l6-6a.75.75 0 011.06 0l6 6a.75.75 0 010 1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrow_uturn_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M21.53 9.53a.75.75 0 01-1.06 0l-4.72-4.72V15a6.75 6.75 0 01-13.5 0v-3a.75.75 0 011.5 0v3a5.25 5.25 0 1010.5 0V4.81L9.53 9.53a.75.75 0 01-1.06-1.06l6-6a.75.75 0 011.06 0l6 6a.75.75 0 010 1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrows-pointing-in.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrows_pointing_in />

      <.arrows_pointing_in class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrows_pointing_in() %>

      <%= arrows_pointing_in(class: "h-6 w-6 text-gray-500") %>
  """
  def arrows_pointing_in(assigns_or_opts \\ [])

  def arrows_pointing_in(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3.22 3.22a.75.75 0 011.06 0l3.97 3.97V4.5a.75.75 0 011.5 0V9a.75.75 0 01-.75.75H4.5a.75.75 0 010-1.5h2.69L3.22 4.28a.75.75 0 010-1.06zm17.56 0a.75.75 0 010 1.06l-3.97 3.97h2.69a.75.75 0 010 1.5H15a.75.75 0 01-.75-.75V4.5a.75.75 0 011.5 0v2.69l3.97-3.97a.75.75 0 011.06 0zM3.75 15a.75.75 0 01.75-.75H9a.75.75 0 01.75.75v4.5a.75.75 0 01-1.5 0v-2.69l-3.97 3.97a.75.75 0 01-1.06-1.06l3.97-3.97H4.5a.75.75 0 01-.75-.75zm10.5 0a.75.75 0 01.75-.75h4.5a.75.75 0 010 1.5h-2.69l3.97 3.97a.75.75 0 11-1.06 1.06l-3.97-3.97v2.69a.75.75 0 01-1.5 0V15z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrows_pointing_in(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3.22 3.22a.75.75 0 011.06 0l3.97 3.97V4.5a.75.75 0 011.5 0V9a.75.75 0 01-.75.75H4.5a.75.75 0 010-1.5h2.69L3.22 4.28a.75.75 0 010-1.06zm17.56 0a.75.75 0 010 1.06l-3.97 3.97h2.69a.75.75 0 010 1.5H15a.75.75 0 01-.75-.75V4.5a.75.75 0 011.5 0v2.69l3.97-3.97a.75.75 0 011.06 0zM3.75 15a.75.75 0 01.75-.75H9a.75.75 0 01.75.75v4.5a.75.75 0 01-1.5 0v-2.69l-3.97 3.97a.75.75 0 01-1.06-1.06l3.97-3.97H4.5a.75.75 0 01-.75-.75zm10.5 0a.75.75 0 01.75-.75h4.5a.75.75 0 010 1.5h-2.69l3.97 3.97a.75.75 0 11-1.06 1.06l-3.97-3.97v2.69a.75.75 0 01-1.5 0V15z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrows-pointing-out.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrows_pointing_out />

      <.arrows_pointing_out class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrows_pointing_out() %>

      <%= arrows_pointing_out(class: "h-6 w-6 text-gray-500") %>
  """
  def arrows_pointing_out(assigns_or_opts \\ [])

  def arrows_pointing_out(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M15 3.75a.75.75 0 01.75-.75h4.5a.75.75 0 01.75.75v4.5a.75.75 0 01-1.5 0V5.56l-3.97 3.97a.75.75 0 11-1.06-1.06l3.97-3.97h-2.69a.75.75 0 01-.75-.75zm-12 0A.75.75 0 013.75 3h4.5a.75.75 0 010 1.5H5.56l3.97 3.97a.75.75 0 01-1.06 1.06L4.5 5.56v2.69a.75.75 0 01-1.5 0v-4.5zm11.47 11.78a.75.75 0 111.06-1.06l3.97 3.97v-2.69a.75.75 0 011.5 0v4.5a.75.75 0 01-.75.75h-4.5a.75.75 0 010-1.5h2.69l-3.97-3.97zm-4.94-1.06a.75.75 0 010 1.06L5.56 19.5h2.69a.75.75 0 010 1.5h-4.5a.75.75 0 01-.75-.75v-4.5a.75.75 0 011.5 0v2.69l3.97-3.97a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrows_pointing_out(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M15 3.75a.75.75 0 01.75-.75h4.5a.75.75 0 01.75.75v4.5a.75.75 0 01-1.5 0V5.56l-3.97 3.97a.75.75 0 11-1.06-1.06l3.97-3.97h-2.69a.75.75 0 01-.75-.75zm-12 0A.75.75 0 013.75 3h4.5a.75.75 0 010 1.5H5.56l3.97 3.97a.75.75 0 01-1.06 1.06L4.5 5.56v2.69a.75.75 0 01-1.5 0v-4.5zm11.47 11.78a.75.75 0 111.06-1.06l3.97 3.97v-2.69a.75.75 0 011.5 0v4.5a.75.75 0 01-.75.75h-4.5a.75.75 0 010-1.5h2.69l-3.97-3.97zm-4.94-1.06a.75.75 0 010 1.06L5.56 19.5h2.69a.75.75 0 010 1.5h-4.5a.75.75 0 01-.75-.75v-4.5a.75.75 0 011.5 0v2.69l3.97-3.97a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrows-right-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrows_right_left />

      <.arrows_right_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrows_right_left() %>

      <%= arrows_right_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrows_right_left(assigns_or_opts \\ [])

  def arrows_right_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M15.97 2.47a.75.75 0 011.06 0l4.5 4.5a.75.75 0 010 1.06l-4.5 4.5a.75.75 0 11-1.06-1.06l3.22-3.22H7.5a.75.75 0 010-1.5h11.69l-3.22-3.22a.75.75 0 010-1.06zm-7.94 9a.75.75 0 010 1.06l-3.22 3.22H16.5a.75.75 0 010 1.5H4.81l3.22 3.22a.75.75 0 11-1.06 1.06l-4.5-4.5a.75.75 0 010-1.06l4.5-4.5a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrows_right_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M15.97 2.47a.75.75 0 011.06 0l4.5 4.5a.75.75 0 010 1.06l-4.5 4.5a.75.75 0 11-1.06-1.06l3.22-3.22H7.5a.75.75 0 010-1.5h11.69l-3.22-3.22a.75.75 0 010-1.06zm-7.94 9a.75.75 0 010 1.06l-3.22 3.22H16.5a.75.75 0 010 1.5H4.81l3.22 3.22a.75.75 0 11-1.06 1.06l-4.5-4.5a.75.75 0 010-1.06l4.5-4.5a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrows-up-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrows_up_down />

      <.arrows_up_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrows_up_down() %>

      <%= arrows_up_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrows_up_down(assigns_or_opts \\ [])

  def arrows_up_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M6.97 2.47a.75.75 0 011.06 0l4.5 4.5a.75.75 0 01-1.06 1.06L8.25 4.81V16.5a.75.75 0 01-1.5 0V4.81L3.53 8.03a.75.75 0 01-1.06-1.06l4.5-4.5zm9.53 4.28a.75.75 0 01.75.75v11.69l3.22-3.22a.75.75 0 111.06 1.06l-4.5 4.5a.75.75 0 01-1.06 0l-4.5-4.5a.75.75 0 111.06-1.06l3.22 3.22V7.5a.75.75 0 01.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def arrows_up_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M6.97 2.47a.75.75 0 011.06 0l4.5 4.5a.75.75 0 01-1.06 1.06L8.25 4.81V16.5a.75.75 0 01-1.5 0V4.81L3.53 8.03a.75.75 0 01-1.06-1.06l4.5-4.5zm9.53 4.28a.75.75 0 01.75.75v11.69l3.22-3.22a.75.75 0 111.06 1.06l-4.5 4.5a.75.75 0 01-1.06 0l-4.5-4.5a.75.75 0 111.06-1.06l3.22 3.22V7.5a.75.75 0 01.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/at-symbol.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.at_symbol />

      <.at_symbol class="h-6 w-6 text-gray-500" />

  or as a function

      <%= at_symbol() %>

      <%= at_symbol(class: "h-6 w-6 text-gray-500") %>
  """
  def at_symbol(assigns_or_opts \\ [])

  def at_symbol(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M17.834 6.166a8.25 8.25 0 100 11.668.75.75 0 011.06 1.06c-3.807 3.808-9.98 3.808-13.788 0-3.808-3.807-3.808-9.98 0-13.788 3.807-3.808 9.98-3.808 13.788 0A9.722 9.722 0 0121.75 12c0 .975-.296 1.887-.809 2.571-.514.685-1.28 1.179-2.191 1.179-.904 0-1.666-.487-2.18-1.164a5.25 5.25 0 11-.82-6.26V8.25a.75.75 0 011.5 0V12c0 .682.208 1.27.509 1.671.3.401.659.579.991.579.332 0 .69-.178.991-.579.3-.4.509-.99.509-1.671a8.222 8.222 0 00-2.416-5.834zM15.75 12a3.75 3.75 0 10-7.5 0 3.75 3.75 0 007.5 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def at_symbol(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M17.834 6.166a8.25 8.25 0 100 11.668.75.75 0 011.06 1.06c-3.807 3.808-9.98 3.808-13.788 0-3.808-3.807-3.808-9.98 0-13.788 3.807-3.808 9.98-3.808 13.788 0A9.722 9.722 0 0121.75 12c0 .975-.296 1.887-.809 2.571-.514.685-1.28 1.179-2.191 1.179-.904 0-1.666-.487-2.18-1.164a5.25 5.25 0 11-.82-6.26V8.25a.75.75 0 011.5 0V12c0 .682.208 1.27.509 1.671.3.401.659.579.991.579.332 0 .69-.178.991-.579.3-.4.509-.99.509-1.671a8.222 8.222 0 00-2.416-5.834zM15.75 12a3.75 3.75 0 10-7.5 0 3.75 3.75 0 007.5 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/backspace.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.backspace />

      <.backspace class="h-6 w-6 text-gray-500" />

  or as a function

      <%= backspace() %>

      <%= backspace(class: "h-6 w-6 text-gray-500") %>
  """
  def backspace(assigns_or_opts \\ [])

  def backspace(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.515 10.674a1.875 1.875 0 000 2.652L8.89 19.7c.352.351.829.549 1.326.549H19.5a3 3 0 003-3V6.75a3 3 0 00-3-3h-9.284c-.497 0-.974.198-1.326.55l-6.375 6.374zM12.53 9.22a.75.75 0 10-1.06 1.06L13.19 12l-1.72 1.72a.75.75 0 101.06 1.06l1.72-1.72 1.72 1.72a.75.75 0 101.06-1.06L15.31 12l1.72-1.72a.75.75 0 10-1.06-1.06l-1.72 1.72-1.72-1.72z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def backspace(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.515 10.674a1.875 1.875 0 000 2.652L8.89 19.7c.352.351.829.549 1.326.549H19.5a3 3 0 003-3V6.75a3 3 0 00-3-3h-9.284c-.497 0-.974.198-1.326.55l-6.375 6.374zM12.53 9.22a.75.75 0 10-1.06 1.06L13.19 12l-1.72 1.72a.75.75 0 101.06 1.06l1.72-1.72 1.72 1.72a.75.75 0 101.06-1.06L15.31 12l1.72-1.72a.75.75 0 10-1.06-1.06l-1.72 1.72-1.72-1.72z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/backward.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.backward />

      <.backward class="h-6 w-6 text-gray-500" />

  or as a function

      <%= backward() %>

      <%= backward(class: "h-6 w-6 text-gray-500") %>
  """
  def backward(assigns_or_opts \\ [])

  def backward(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M9.195 18.44c1.25.713 2.805-.19 2.805-1.629v-2.34l6.945 3.968c1.25.714 2.805-.188 2.805-1.628V8.688c0-1.44-1.555-2.342-2.805-1.628L12 11.03v-2.34c0-1.44-1.555-2.343-2.805-1.629l-7.108 4.062c-1.26.72-1.26 2.536 0 3.256l7.108 4.061z"/>
    </svg>
    """
  end

  def backward(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M9.195 18.44c1.25.713 2.805-.19 2.805-1.629v-2.34l6.945 3.968c1.25.714 2.805-.188 2.805-1.628V8.688c0-1.44-1.555-2.342-2.805-1.628L12 11.03v-2.34c0-1.44-1.555-2.343-2.805-1.629l-7.108 4.062c-1.26.72-1.26 2.536 0 3.256l7.108 4.061z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/banknotes.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.banknotes />

      <.banknotes class="h-6 w-6 text-gray-500" />

  or as a function

      <%= banknotes() %>

      <%= banknotes(class: "h-6 w-6 text-gray-500") %>
  """
  def banknotes(assigns_or_opts \\ [])

  def banknotes(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 7.5a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5z"/>
      <path fill-rule="evenodd" d="M1.5 4.875C1.5 3.839 2.34 3 3.375 3h17.25c1.035 0 1.875.84 1.875 1.875v9.75c0 1.036-.84 1.875-1.875 1.875H3.375A1.875 1.875 0 011.5 14.625v-9.75zM8.25 9.75a3.75 3.75 0 117.5 0 3.75 3.75 0 01-7.5 0zM18.75 9a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V9.75a.75.75 0 00-.75-.75h-.008zM4.5 9.75A.75.75 0 015.25 9h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H5.25a.75.75 0 01-.75-.75V9.75z" clip-rule="evenodd"/>
      <path d="M2.25 18a.75.75 0 000 1.5c5.4 0 10.63.722 15.6 2.075 1.19.324 2.4-.558 2.4-1.82V18.75a.75.75 0 00-.75-.75H2.25z"/>
    </svg>
    """
  end

  def banknotes(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M12 7.5a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5z\"/>\n  <path fill-rule=\"evenodd\" d=\"M1.5 4.875C1.5 3.839 2.34 3 3.375 3h17.25c1.035 0 1.875.84 1.875 1.875v9.75c0 1.036-.84 1.875-1.875 1.875H3.375A1.875 1.875 0 011.5 14.625v-9.75zM8.25 9.75a3.75 3.75 0 117.5 0 3.75 3.75 0 01-7.5 0zM18.75 9a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V9.75a.75.75 0 00-.75-.75h-.008zM4.5 9.75A.75.75 0 015.25 9h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H5.25a.75.75 0 01-.75-.75V9.75z\" clip-rule=\"evenodd\"/>\n  <path d=\"M2.25 18a.75.75 0 000 1.5c5.4 0 10.63.722 15.6 2.075 1.19.324 2.4-.558 2.4-1.82V18.75a.75.75 0 00-.75-.75H2.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-2.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_2 />

      <.bars_2 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_2() %>

      <%= bars_2(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_2(assigns_or_opts \\ [])

  def bars_2(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 9a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 9zm0 6.75a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bars_2(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 9a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 9zm0 6.75a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-3-bottom-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_3_bottom_left />

      <.bars_3_bottom_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_3_bottom_left() %>

      <%= bars_3_bottom_left(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_3_bottom_left(assigns_or_opts \\ [])

  def bars_3_bottom_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm0 5.25a.75.75 0 01.75-.75H12a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bars_3_bottom_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm0 5.25a.75.75 0 01.75-.75H12a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-3-bottom-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_3_bottom_right />

      <.bars_3_bottom_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_3_bottom_right() %>

      <%= bars_3_bottom_right(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_3_bottom_right(assigns_or_opts \\ [])

  def bars_3_bottom_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm8.25 5.25a.75.75 0 01.75-.75h8.25a.75.75 0 010 1.5H12a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bars_3_bottom_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm8.25 5.25a.75.75 0 01.75-.75h8.25a.75.75 0 010 1.5H12a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-3-center-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_3_center_left />

      <.bars_3_center_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_3_center_left() %>

      <%= bars_3_center_left(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_3_center_left(assigns_or_opts \\ [])

  def bars_3_center_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75H12a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm0 5.25a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bars_3_center_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75H12a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm0 5.25a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-3.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_3 />

      <.bars_3 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_3() %>

      <%= bars_3(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_3(assigns_or_opts \\ [])

  def bars_3(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm0 5.25a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bars_3(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm0 5.25a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-4.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_4 />

      <.bars_4 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_4() %>

      <%= bars_4(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_4(assigns_or_opts \\ [])

  def bars_4(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 5.25a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 5.25zm0 4.5A.75.75 0 013.75 9h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 9.75zm0 4.5a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75zm0 4.5a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bars_4(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 5.25a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 5.25zm0 4.5A.75.75 0 013.75 9h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 9.75zm0 4.5a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75zm0 4.5a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/beaker.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.beaker />

      <.beaker class="h-6 w-6 text-gray-500" />

  or as a function

      <%= beaker() %>

      <%= beaker(class: "h-6 w-6 text-gray-500") %>
  """
  def beaker(assigns_or_opts \\ [])

  def beaker(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M10.5 3.798v5.02a3 3 0 01-.879 2.121l-2.377 2.377a9.845 9.845 0 015.091 1.013 8.315 8.315 0 005.713.636l.285-.071-3.954-3.955a3 3 0 01-.879-2.121v-5.02a23.614 23.614 0 00-3 0zm4.5.138a.75.75 0 00.093-1.495A24.837 24.837 0 0012 2.25a25.048 25.048 0 00-3.093.191A.75.75 0 009 3.936v4.882a1.5 1.5 0 01-.44 1.06l-6.293 6.294c-1.62 1.621-.903 4.475 1.471 4.88 2.686.46 5.447.698 8.262.698 2.816 0 5.576-.239 8.262-.697 2.373-.406 3.092-3.26 1.47-4.881L15.44 9.879A1.5 1.5 0 0115 8.818V3.936z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def beaker(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M10.5 3.798v5.02a3 3 0 01-.879 2.121l-2.377 2.377a9.845 9.845 0 015.091 1.013 8.315 8.315 0 005.713.636l.285-.071-3.954-3.955a3 3 0 01-.879-2.121v-5.02a23.614 23.614 0 00-3 0zm4.5.138a.75.75 0 00.093-1.495A24.837 24.837 0 0012 2.25a25.048 25.048 0 00-3.093.191A.75.75 0 009 3.936v4.882a1.5 1.5 0 01-.44 1.06l-6.293 6.294c-1.62 1.621-.903 4.475 1.471 4.88 2.686.46 5.447.698 8.262.698 2.816 0 5.576-.239 8.262-.697 2.373-.406 3.092-3.26 1.47-4.881L15.44 9.879A1.5 1.5 0 0115 8.818V3.936z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bell-alert.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bell_alert />

      <.bell_alert class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bell_alert() %>

      <%= bell_alert(class: "h-6 w-6 text-gray-500") %>
  """
  def bell_alert(assigns_or_opts \\ [])

  def bell_alert(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M5.85 3.5a.75.75 0 00-1.117-1 9.719 9.719 0 00-2.348 4.876.75.75 0 001.479.248A8.219 8.219 0 015.85 3.5zM19.267 2.5a.75.75 0 10-1.118 1 8.22 8.22 0 011.987 4.124.75.75 0 001.48-.248A9.72 9.72 0 0019.266 2.5z"/>
      <path fill-rule="evenodd" d="M12 2.25A6.75 6.75 0 005.25 9v.75a8.217 8.217 0 01-2.119 5.52.75.75 0 00.298 1.206c1.544.57 3.16.99 4.831 1.243a3.75 3.75 0 107.48 0 24.583 24.583 0 004.83-1.244.75.75 0 00.298-1.205 8.217 8.217 0 01-2.118-5.52V9A6.75 6.75 0 0012 2.25zM9.75 18c0-.034 0-.067.002-.1a25.05 25.05 0 004.496 0l.002.1a2.25 2.25 0 11-4.5 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bell_alert(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M5.85 3.5a.75.75 0 00-1.117-1 9.719 9.719 0 00-2.348 4.876.75.75 0 001.479.248A8.219 8.219 0 015.85 3.5zM19.267 2.5a.75.75 0 10-1.118 1 8.22 8.22 0 011.987 4.124.75.75 0 001.48-.248A9.72 9.72 0 0019.266 2.5z\"/>\n  <path fill-rule=\"evenodd\" d=\"M12 2.25A6.75 6.75 0 005.25 9v.75a8.217 8.217 0 01-2.119 5.52.75.75 0 00.298 1.206c1.544.57 3.16.99 4.831 1.243a3.75 3.75 0 107.48 0 24.583 24.583 0 004.83-1.244.75.75 0 00.298-1.205 8.217 8.217 0 01-2.118-5.52V9A6.75 6.75 0 0012 2.25zM9.75 18c0-.034 0-.067.002-.1a25.05 25.05 0 004.496 0l.002.1a2.25 2.25 0 11-4.5 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bell-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bell_slash />

      <.bell_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bell_slash() %>

      <%= bell_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def bell_slash(assigns_or_opts \\ [])

  def bell_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM20.57 16.476c-.223.082-.448.161-.674.238L7.319 4.137A6.75 6.75 0 0118.75 9v.75c0 2.123.8 4.057 2.118 5.52a.75.75 0 01-.297 1.206z"/>
      <path fill-rule="evenodd" d="M5.25 9c0-.184.007-.366.022-.546l10.384 10.384a3.751 3.751 0 01-7.396-1.119 24.585 24.585 0 01-4.831-1.244.75.75 0 01-.298-1.205A8.217 8.217 0 005.25 9.75V9zm4.502 8.9a2.25 2.25 0 104.496 0 25.057 25.057 0 01-4.496 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bell_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM20.57 16.476c-.223.082-.448.161-.674.238L7.319 4.137A6.75 6.75 0 0118.75 9v.75c0 2.123.8 4.057 2.118 5.52a.75.75 0 01-.297 1.206z\"/>\n  <path fill-rule=\"evenodd\" d=\"M5.25 9c0-.184.007-.366.022-.546l10.384 10.384a3.751 3.751 0 01-7.396-1.119 24.585 24.585 0 01-4.831-1.244.75.75 0 01-.298-1.205A8.217 8.217 0 005.25 9.75V9zm4.502 8.9a2.25 2.25 0 104.496 0 25.057 25.057 0 01-4.496 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bell-snooze.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bell_snooze />

      <.bell_snooze class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bell_snooze() %>

      <%= bell_snooze(class: "h-6 w-6 text-gray-500") %>
  """
  def bell_snooze(assigns_or_opts \\ [])

  def bell_snooze(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25A6.75 6.75 0 005.25 9v.75a8.217 8.217 0 01-2.119 5.52.75.75 0 00.298 1.206c1.544.57 3.16.99 4.831 1.243a3.75 3.75 0 107.48 0 24.583 24.583 0 004.83-1.244.75.75 0 00.298-1.205 8.217 8.217 0 01-2.118-5.52V9A6.75 6.75 0 0012 2.25zM9.75 18c0-.034 0-.067.002-.1a25.05 25.05 0 004.496 0l.002.1a2.25 2.25 0 11-4.5 0zm.75-10.5a.75.75 0 000 1.5h1.599l-2.223 3.334A.75.75 0 0010.5 13.5h3a.75.75 0 000-1.5h-1.599l2.223-3.334A.75.75 0 0013.5 7.5h-3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bell_snooze(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25A6.75 6.75 0 005.25 9v.75a8.217 8.217 0 01-2.119 5.52.75.75 0 00.298 1.206c1.544.57 3.16.99 4.831 1.243a3.75 3.75 0 107.48 0 24.583 24.583 0 004.83-1.244.75.75 0 00.298-1.205 8.217 8.217 0 01-2.118-5.52V9A6.75 6.75 0 0012 2.25zM9.75 18c0-.034 0-.067.002-.1a25.05 25.05 0 004.496 0l.002.1a2.25 2.25 0 11-4.5 0zm.75-10.5a.75.75 0 000 1.5h1.599l-2.223 3.334A.75.75 0 0010.5 13.5h3a.75.75 0 000-1.5h-1.599l2.223-3.334A.75.75 0 0013.5 7.5h-3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bell.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bell />

      <.bell class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bell() %>

      <%= bell(class: "h-6 w-6 text-gray-500") %>
  """
  def bell(assigns_or_opts \\ [])

  def bell(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.25 9a6.75 6.75 0 0113.5 0v.75c0 2.123.8 4.057 2.118 5.52a.75.75 0 01-.297 1.206c-1.544.57-3.16.99-4.831 1.243a3.75 3.75 0 11-7.48 0 24.585 24.585 0 01-4.831-1.244.75.75 0 01-.298-1.205A8.217 8.217 0 005.25 9.75V9zm4.502 8.9a2.25 2.25 0 104.496 0 25.057 25.057 0 01-4.496 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bell(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.25 9a6.75 6.75 0 0113.5 0v.75c0 2.123.8 4.057 2.118 5.52a.75.75 0 01-.297 1.206c-1.544.57-3.16.99-4.831 1.243a3.75 3.75 0 11-7.48 0 24.585 24.585 0 01-4.831-1.244.75.75 0 01-.298-1.205A8.217 8.217 0 005.25 9.75V9zm4.502 8.9a2.25 2.25 0 104.496 0 25.057 25.057 0 01-4.496 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bolt-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bolt_slash />

      <.bolt_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bolt_slash() %>

      <%= bolt_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def bolt_slash(assigns_or_opts \\ [])

  def bolt_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M20.798 11.012l-3.188 3.416L9.462 6.28l4.24-4.542a.75.75 0 011.272.71L12.982 9.75h7.268a.75.75 0 01.548 1.262zM3.202 12.988L6.39 9.572l8.148 8.148-4.24 4.542a.75.75 0 01-1.272-.71l1.992-7.302H3.75a.75.75 0 01-.548-1.262zM3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18z"/>
    </svg>
    """
  end

  def bolt_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M20.798 11.012l-3.188 3.416L9.462 6.28l4.24-4.542a.75.75 0 011.272.71L12.982 9.75h7.268a.75.75 0 01.548 1.262zM3.202 12.988L6.39 9.572l8.148 8.148-4.24 4.542a.75.75 0 01-1.272-.71l1.992-7.302H3.75a.75.75 0 01-.548-1.262zM3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bolt.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bolt />

      <.bolt class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bolt() %>

      <%= bolt(class: "h-6 w-6 text-gray-500") %>
  """
  def bolt(assigns_or_opts \\ [])

  def bolt(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M14.615 1.595a.75.75 0 01.359.852L12.982 9.75h7.268a.75.75 0 01.548 1.262l-10.5 11.25a.75.75 0 01-1.272-.71l1.992-7.302H3.75a.75.75 0 01-.548-1.262l10.5-11.25a.75.75 0 01.913-.143z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bolt(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M14.615 1.595a.75.75 0 01.359.852L12.982 9.75h7.268a.75.75 0 01.548 1.262l-10.5 11.25a.75.75 0 01-1.272-.71l1.992-7.302H3.75a.75.75 0 01-.548-1.262l10.5-11.25a.75.75 0 01.913-.143z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/book-open.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.book_open />

      <.book_open class="h-6 w-6 text-gray-500" />

  or as a function

      <%= book_open() %>

      <%= book_open(class: "h-6 w-6 text-gray-500") %>
  """
  def book_open(assigns_or_opts \\ [])

  def book_open(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M11.25 4.533A9.707 9.707 0 006 3a9.735 9.735 0 00-3.25.555.75.75 0 00-.5.707v14.25a.75.75 0 001 .707A8.237 8.237 0 016 18.75c1.995 0 3.823.707 5.25 1.886V4.533zM12.75 20.636A8.214 8.214 0 0118 18.75c.966 0 1.89.166 2.75.47a.75.75 0 001-.708V4.262a.75.75 0 00-.5-.707A9.735 9.735 0 0018 3a9.707 9.707 0 00-5.25 1.533v16.103z"/>
    </svg>
    """
  end

  def book_open(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M11.25 4.533A9.707 9.707 0 006 3a9.735 9.735 0 00-3.25.555.75.75 0 00-.5.707v14.25a.75.75 0 001 .707A8.237 8.237 0 016 18.75c1.995 0 3.823.707 5.25 1.886V4.533zM12.75 20.636A8.214 8.214 0 0118 18.75c.966 0 1.89.166 2.75.47a.75.75 0 001-.708V4.262a.75.75 0 00-.5-.707A9.735 9.735 0 0018 3a9.707 9.707 0 00-5.25 1.533v16.103z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bookmark-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bookmark_slash />

      <.bookmark_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bookmark_slash() %>

      <%= bookmark_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def bookmark_slash(assigns_or_opts \\ [])

  def bookmark_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM20.25 5.507v11.561L5.853 2.671c.15-.043.306-.075.467-.094a49.255 49.255 0 0111.36 0c1.497.174 2.57 1.46 2.57 2.93zM3.75 21V6.932l14.063 14.063L12 18.088l-7.165 3.583A.75.75 0 013.75 21z"/>
    </svg>
    """
  end

  def bookmark_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM20.25 5.507v11.561L5.853 2.671c.15-.043.306-.075.467-.094a49.255 49.255 0 0111.36 0c1.497.174 2.57 1.46 2.57 2.93zM3.75 21V6.932l14.063 14.063L12 18.088l-7.165 3.583A.75.75 0 013.75 21z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bookmark-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bookmark_square />

      <.bookmark_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bookmark_square() %>

      <%= bookmark_square(class: "h-6 w-6 text-gray-500") %>
  """
  def bookmark_square(assigns_or_opts \\ [])

  def bookmark_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M6 3a3 3 0 00-3 3v12a3 3 0 003 3h12a3 3 0 003-3V6a3 3 0 00-3-3H6zm1.5 1.5a.75.75 0 00-.75.75V16.5a.75.75 0 001.085.67L12 15.089l4.165 2.083a.75.75 0 001.085-.671V5.25a.75.75 0 00-.75-.75h-9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bookmark_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M6 3a3 3 0 00-3 3v12a3 3 0 003 3h12a3 3 0 003-3V6a3 3 0 00-3-3H6zm1.5 1.5a.75.75 0 00-.75.75V16.5a.75.75 0 001.085.67L12 15.089l4.165 2.083a.75.75 0 001.085-.671V5.25a.75.75 0 00-.75-.75h-9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bookmark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bookmark />

      <.bookmark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bookmark() %>

      <%= bookmark(class: "h-6 w-6 text-gray-500") %>
  """
  def bookmark(assigns_or_opts \\ [])

  def bookmark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M6.32 2.577a49.255 49.255 0 0111.36 0c1.497.174 2.57 1.46 2.57 2.93V21a.75.75 0 01-1.085.67L12 18.089l-7.165 3.583A.75.75 0 013.75 21V5.507c0-1.47 1.073-2.756 2.57-2.93z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def bookmark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M6.32 2.577a49.255 49.255 0 0111.36 0c1.497.174 2.57 1.46 2.57 2.93V21a.75.75 0 01-1.085.67L12 18.089l-7.165 3.583A.75.75 0 013.75 21V5.507c0-1.47 1.073-2.756 2.57-2.93z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/briefcase.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.briefcase />

      <.briefcase class="h-6 w-6 text-gray-500" />

  or as a function

      <%= briefcase() %>

      <%= briefcase(class: "h-6 w-6 text-gray-500") %>
  """
  def briefcase(assigns_or_opts \\ [])

  def briefcase(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M7.5 5.25a3 3 0 013-3h3a3 3 0 013 3v.205c.933.085 1.857.197 2.774.334 1.454.218 2.476 1.483 2.476 2.917v3.033c0 1.211-.734 2.352-1.936 2.752A24.726 24.726 0 0112 15.75c-2.73 0-5.357-.442-7.814-1.259-1.202-.4-1.936-1.541-1.936-2.752V8.706c0-1.434 1.022-2.7 2.476-2.917A48.814 48.814 0 017.5 5.455V5.25zm7.5 0v.09a49.488 49.488 0 00-6 0v-.09a1.5 1.5 0 011.5-1.5h3a1.5 1.5 0 011.5 1.5zm-3 8.25a.75.75 0 100-1.5.75.75 0 000 1.5z" clip-rule="evenodd"/>
      <path d="M3 18.4v-2.796a4.3 4.3 0 00.713.31A26.226 26.226 0 0012 17.25c2.892 0 5.68-.468 8.287-1.335.252-.084.49-.189.713-.311V18.4c0 1.452-1.047 2.728-2.523 2.923-2.12.282-4.282.427-6.477.427a49.19 49.19 0 01-6.477-.427C4.047 21.128 3 19.852 3 18.4z"/>
    </svg>
    """
  end

  def briefcase(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M7.5 5.25a3 3 0 013-3h3a3 3 0 013 3v.205c.933.085 1.857.197 2.774.334 1.454.218 2.476 1.483 2.476 2.917v3.033c0 1.211-.734 2.352-1.936 2.752A24.726 24.726 0 0112 15.75c-2.73 0-5.357-.442-7.814-1.259-1.202-.4-1.936-1.541-1.936-2.752V8.706c0-1.434 1.022-2.7 2.476-2.917A48.814 48.814 0 017.5 5.455V5.25zm7.5 0v.09a49.488 49.488 0 00-6 0v-.09a1.5 1.5 0 011.5-1.5h3a1.5 1.5 0 011.5 1.5zm-3 8.25a.75.75 0 100-1.5.75.75 0 000 1.5z\" clip-rule=\"evenodd\"/>\n  <path d=\"M3 18.4v-2.796a4.3 4.3 0 00.713.31A26.226 26.226 0 0012 17.25c2.892 0 5.68-.468 8.287-1.335.252-.084.49-.189.713-.311V18.4c0 1.452-1.047 2.728-2.523 2.923-2.12.282-4.282.427-6.477.427a49.19 49.19 0 01-6.477-.427C4.047 21.128 3 19.852 3 18.4z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/building-library.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.building_library />

      <.building_library class="h-6 w-6 text-gray-500" />

  or as a function

      <%= building_library() %>

      <%= building_library(class: "h-6 w-6 text-gray-500") %>
  """
  def building_library(assigns_or_opts \\ [])

  def building_library(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M11.584 2.376a.75.75 0 01.832 0l9 6a.75.75 0 11-.832 1.248L12 3.901 3.416 9.624a.75.75 0 01-.832-1.248l9-6z"/>
      <path fill-rule="evenodd" d="M20.25 10.332v9.918H21a.75.75 0 010 1.5H3a.75.75 0 010-1.5h.75v-9.918a.75.75 0 01.634-.74A49.109 49.109 0 0112 9c2.59 0 5.134.202 7.616.592a.75.75 0 01.634.74zm-7.5 2.418a.75.75 0 00-1.5 0v6.75a.75.75 0 001.5 0v-6.75zm3-.75a.75.75 0 01.75.75v6.75a.75.75 0 01-1.5 0v-6.75a.75.75 0 01.75-.75zM9 12.75a.75.75 0 00-1.5 0v6.75a.75.75 0 001.5 0v-6.75z" clip-rule="evenodd"/>
      <path d="M12 7.875a1.125 1.125 0 100-2.25 1.125 1.125 0 000 2.25z"/>
    </svg>
    """
  end

  def building_library(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M11.584 2.376a.75.75 0 01.832 0l9 6a.75.75 0 11-.832 1.248L12 3.901 3.416 9.624a.75.75 0 01-.832-1.248l9-6z\"/>\n  <path fill-rule=\"evenodd\" d=\"M20.25 10.332v9.918H21a.75.75 0 010 1.5H3a.75.75 0 010-1.5h.75v-9.918a.75.75 0 01.634-.74A49.109 49.109 0 0112 9c2.59 0 5.134.202 7.616.592a.75.75 0 01.634.74zm-7.5 2.418a.75.75 0 00-1.5 0v6.75a.75.75 0 001.5 0v-6.75zm3-.75a.75.75 0 01.75.75v6.75a.75.75 0 01-1.5 0v-6.75a.75.75 0 01.75-.75zM9 12.75a.75.75 0 00-1.5 0v6.75a.75.75 0 001.5 0v-6.75z\" clip-rule=\"evenodd\"/>\n  <path d=\"M12 7.875a1.125 1.125 0 100-2.25 1.125 1.125 0 000 2.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/building-office-2.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.building_office_2 />

      <.building_office_2 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= building_office_2() %>

      <%= building_office_2(class: "h-6 w-6 text-gray-500") %>
  """
  def building_office_2(assigns_or_opts \\ [])

  def building_office_2(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 2.25a.75.75 0 000 1.5v16.5h-.75a.75.75 0 000 1.5H15v-18a.75.75 0 000-1.5H3zM6.75 19.5v-2.25a.75.75 0 01.75-.75h3a.75.75 0 01.75.75v2.25a.75.75 0 01-.75.75h-3a.75.75 0 01-.75-.75zM6 6.75A.75.75 0 016.75 6h.75a.75.75 0 010 1.5h-.75A.75.75 0 016 6.75zM6.75 9a.75.75 0 000 1.5h.75a.75.75 0 000-1.5h-.75zM6 12.75a.75.75 0 01.75-.75h.75a.75.75 0 010 1.5h-.75a.75.75 0 01-.75-.75zM10.5 6a.75.75 0 000 1.5h.75a.75.75 0 000-1.5h-.75zm-.75 3.75A.75.75 0 0110.5 9h.75a.75.75 0 010 1.5h-.75a.75.75 0 01-.75-.75zM10.5 12a.75.75 0 000 1.5h.75a.75.75 0 000-1.5h-.75zM16.5 6.75v15h5.25a.75.75 0 000-1.5H21v-12a.75.75 0 000-1.5h-4.5zm1.5 4.5a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008zm.75 2.25a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75v-.008a.75.75 0 00-.75-.75h-.008zM18 17.25a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def building_office_2(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 2.25a.75.75 0 000 1.5v16.5h-.75a.75.75 0 000 1.5H15v-18a.75.75 0 000-1.5H3zM6.75 19.5v-2.25a.75.75 0 01.75-.75h3a.75.75 0 01.75.75v2.25a.75.75 0 01-.75.75h-3a.75.75 0 01-.75-.75zM6 6.75A.75.75 0 016.75 6h.75a.75.75 0 010 1.5h-.75A.75.75 0 016 6.75zM6.75 9a.75.75 0 000 1.5h.75a.75.75 0 000-1.5h-.75zM6 12.75a.75.75 0 01.75-.75h.75a.75.75 0 010 1.5h-.75a.75.75 0 01-.75-.75zM10.5 6a.75.75 0 000 1.5h.75a.75.75 0 000-1.5h-.75zm-.75 3.75A.75.75 0 0110.5 9h.75a.75.75 0 010 1.5h-.75a.75.75 0 01-.75-.75zM10.5 12a.75.75 0 000 1.5h.75a.75.75 0 000-1.5h-.75zM16.5 6.75v15h5.25a.75.75 0 000-1.5H21v-12a.75.75 0 000-1.5h-4.5zm1.5 4.5a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008zm.75 2.25a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75v-.008a.75.75 0 00-.75-.75h-.008zM18 17.25a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/building-office.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.building_office />

      <.building_office class="h-6 w-6 text-gray-500" />

  or as a function

      <%= building_office() %>

      <%= building_office(class: "h-6 w-6 text-gray-500") %>
  """
  def building_office(assigns_or_opts \\ [])

  def building_office(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.5 2.25a.75.75 0 000 1.5v16.5h-.75a.75.75 0 000 1.5h16.5a.75.75 0 000-1.5h-.75V3.75a.75.75 0 000-1.5h-15zM9 6a.75.75 0 000 1.5h1.5a.75.75 0 000-1.5H9zm-.75 3.75A.75.75 0 019 9h1.5a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75zM9 12a.75.75 0 000 1.5h1.5a.75.75 0 000-1.5H9zm3.75-5.25A.75.75 0 0113.5 6H15a.75.75 0 010 1.5h-1.5a.75.75 0 01-.75-.75zM13.5 9a.75.75 0 000 1.5H15A.75.75 0 0015 9h-1.5zm-.75 3.75a.75.75 0 01.75-.75H15a.75.75 0 010 1.5h-1.5a.75.75 0 01-.75-.75zM9 19.5v-2.25a.75.75 0 01.75-.75h4.5a.75.75 0 01.75.75v2.25a.75.75 0 01-.75.75h-4.5A.75.75 0 019 19.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def building_office(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.5 2.25a.75.75 0 000 1.5v16.5h-.75a.75.75 0 000 1.5h16.5a.75.75 0 000-1.5h-.75V3.75a.75.75 0 000-1.5h-15zM9 6a.75.75 0 000 1.5h1.5a.75.75 0 000-1.5H9zm-.75 3.75A.75.75 0 019 9h1.5a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75zM9 12a.75.75 0 000 1.5h1.5a.75.75 0 000-1.5H9zm3.75-5.25A.75.75 0 0113.5 6H15a.75.75 0 010 1.5h-1.5a.75.75 0 01-.75-.75zM13.5 9a.75.75 0 000 1.5H15A.75.75 0 0015 9h-1.5zm-.75 3.75a.75.75 0 01.75-.75H15a.75.75 0 010 1.5h-1.5a.75.75 0 01-.75-.75zM9 19.5v-2.25a.75.75 0 01.75-.75h4.5a.75.75 0 01.75.75v2.25a.75.75 0 01-.75.75h-4.5A.75.75 0 019 19.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/building-storefront.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.building_storefront />

      <.building_storefront class="h-6 w-6 text-gray-500" />

  or as a function

      <%= building_storefront() %>

      <%= building_storefront(class: "h-6 w-6 text-gray-500") %>
  """
  def building_storefront(assigns_or_opts \\ [])

  def building_storefront(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M5.223 2.25c-.497 0-.974.198-1.325.55l-1.3 1.298A3.75 3.75 0 007.5 9.75c.627.47 1.406.75 2.25.75.844 0 1.624-.28 2.25-.75.626.47 1.406.75 2.25.75.844 0 1.623-.28 2.25-.75a3.75 3.75 0 004.902-5.652l-1.3-1.299a1.875 1.875 0 00-1.325-.549H5.223z"/>
      <path fill-rule="evenodd" d="M3 20.25v-8.755c1.42.674 3.08.673 4.5 0A5.234 5.234 0 009.75 12c.804 0 1.568-.182 2.25-.506a5.234 5.234 0 002.25.506c.804 0 1.567-.182 2.25-.506 1.42.674 3.08.675 4.5.001v8.755h.75a.75.75 0 010 1.5H2.25a.75.75 0 010-1.5H3zm3-6a.75.75 0 01.75-.75h3a.75.75 0 01.75.75v3a.75.75 0 01-.75.75h-3a.75.75 0 01-.75-.75v-3zm8.25-.75a.75.75 0 00-.75.75v5.25c0 .414.336.75.75.75h3a.75.75 0 00.75-.75v-5.25a.75.75 0 00-.75-.75h-3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def building_storefront(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M5.223 2.25c-.497 0-.974.198-1.325.55l-1.3 1.298A3.75 3.75 0 007.5 9.75c.627.47 1.406.75 2.25.75.844 0 1.624-.28 2.25-.75.626.47 1.406.75 2.25.75.844 0 1.623-.28 2.25-.75a3.75 3.75 0 004.902-5.652l-1.3-1.299a1.875 1.875 0 00-1.325-.549H5.223z\"/>\n  <path fill-rule=\"evenodd\" d=\"M3 20.25v-8.755c1.42.674 3.08.673 4.5 0A5.234 5.234 0 009.75 12c.804 0 1.568-.182 2.25-.506a5.234 5.234 0 002.25.506c.804 0 1.567-.182 2.25-.506 1.42.674 3.08.675 4.5.001v8.755h.75a.75.75 0 010 1.5H2.25a.75.75 0 010-1.5H3zm3-6a.75.75 0 01.75-.75h3a.75.75 0 01.75.75v3a.75.75 0 01-.75.75h-3a.75.75 0 01-.75-.75v-3zm8.25-.75a.75.75 0 00-.75.75v5.25c0 .414.336.75.75.75h3a.75.75 0 00.75-.75v-5.25a.75.75 0 00-.75-.75h-3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cake.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cake />

      <.cake class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cake() %>

      <%= cake(class: "h-6 w-6 text-gray-500") %>
  """
  def cake(assigns_or_opts \\ [])

  def cake(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M15 1.784l-.796.796a1.125 1.125 0 101.591 0L15 1.784zM12 1.784l-.796.796a1.125 1.125 0 101.591 0L12 1.784zM9 1.784l-.796.796a1.125 1.125 0 101.591 0L9 1.784zM9.75 7.547c.498-.02.998-.035 1.5-.042V6.75a.75.75 0 011.5 0v.755c.502.007 1.002.021 1.5.042V6.75a.75.75 0 011.5 0v.88l.307.022c1.55.117 2.693 1.427 2.693 2.946v1.018a62.182 62.182 0 00-13.5 0v-1.018c0-1.519 1.143-2.829 2.693-2.946l.307-.022v-.88a.75.75 0 011.5 0v.797zM12 12.75c-2.472 0-4.9.184-7.274.54-1.454.217-2.476 1.482-2.476 2.916v.384a4.104 4.104 0 012.585.364 2.605 2.605 0 002.33 0 4.104 4.104 0 013.67 0 2.605 2.605 0 002.33 0 4.104 4.104 0 013.67 0 2.605 2.605 0 002.33 0 4.104 4.104 0 012.585-.364v-.384c0-1.434-1.022-2.7-2.476-2.917A49.138 49.138 0 0012 12.75zM21.75 18.131a2.604 2.604 0 00-1.915.165 4.104 4.104 0 01-3.67 0 2.604 2.604 0 00-2.33 0 4.104 4.104 0 01-3.67 0 2.604 2.604 0 00-2.33 0 4.104 4.104 0 01-3.67 0 2.604 2.604 0 00-1.915-.165v2.494c0 1.036.84 1.875 1.875 1.875h15.75c1.035 0 1.875-.84 1.875-1.875v-2.494z"/>
    </svg>
    """
  end

  def cake(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M15 1.784l-.796.796a1.125 1.125 0 101.591 0L15 1.784zM12 1.784l-.796.796a1.125 1.125 0 101.591 0L12 1.784zM9 1.784l-.796.796a1.125 1.125 0 101.591 0L9 1.784zM9.75 7.547c.498-.02.998-.035 1.5-.042V6.75a.75.75 0 011.5 0v.755c.502.007 1.002.021 1.5.042V6.75a.75.75 0 011.5 0v.88l.307.022c1.55.117 2.693 1.427 2.693 2.946v1.018a62.182 62.182 0 00-13.5 0v-1.018c0-1.519 1.143-2.829 2.693-2.946l.307-.022v-.88a.75.75 0 011.5 0v.797zM12 12.75c-2.472 0-4.9.184-7.274.54-1.454.217-2.476 1.482-2.476 2.916v.384a4.104 4.104 0 012.585.364 2.605 2.605 0 002.33 0 4.104 4.104 0 013.67 0 2.605 2.605 0 002.33 0 4.104 4.104 0 013.67 0 2.605 2.605 0 002.33 0 4.104 4.104 0 012.585-.364v-.384c0-1.434-1.022-2.7-2.476-2.917A49.138 49.138 0 0012 12.75zM21.75 18.131a2.604 2.604 0 00-1.915.165 4.104 4.104 0 01-3.67 0 2.604 2.604 0 00-2.33 0 4.104 4.104 0 01-3.67 0 2.604 2.604 0 00-2.33 0 4.104 4.104 0 01-3.67 0 2.604 2.604 0 00-1.915-.165v2.494c0 1.036.84 1.875 1.875 1.875h15.75c1.035 0 1.875-.84 1.875-1.875v-2.494z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/calculator.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.calculator />

      <.calculator class="h-6 w-6 text-gray-500" />

  or as a function

      <%= calculator() %>

      <%= calculator(class: "h-6 w-6 text-gray-500") %>
  """
  def calculator(assigns_or_opts \\ [])

  def calculator(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M6.32 1.827a49.255 49.255 0 0111.36 0c1.497.174 2.57 1.46 2.57 2.93V19.5a3 3 0 01-3 3H6.75a3 3 0 01-3-3V4.757c0-1.47 1.073-2.756 2.57-2.93zM7.5 11.25a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H8.25a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V13.5a.75.75 0 00-.75-.75H8.25zm-.75 3a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H8.25a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V18a.75.75 0 00-.75-.75H8.25zm1.748-6a.75.75 0 01.75-.75h.007a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.007a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.335.75.75.75h.007a.75.75 0 00.75-.75V13.5a.75.75 0 00-.75-.75h-.007zm-.75 3a.75.75 0 01.75-.75h.007a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.007a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.335.75.75.75h.007a.75.75 0 00.75-.75V18a.75.75 0 00-.75-.75h-.007zm1.754-6a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V13.5a.75.75 0 00-.75-.75h-.008zm-.75 3a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V18a.75.75 0 00-.75-.75h-.008zm1.748-6a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V13.5a.75.75 0 00-.75-.75h-.008zm-8.25-6A.75.75 0 018.25 6h7.5a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-7.5a.75.75 0 01-.75-.75v-.75zm9 9a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def calculator(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M6.32 1.827a49.255 49.255 0 0111.36 0c1.497.174 2.57 1.46 2.57 2.93V19.5a3 3 0 01-3 3H6.75a3 3 0 01-3-3V4.757c0-1.47 1.073-2.756 2.57-2.93zM7.5 11.25a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H8.25a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V13.5a.75.75 0 00-.75-.75H8.25zm-.75 3a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H8.25a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V18a.75.75 0 00-.75-.75H8.25zm1.748-6a.75.75 0 01.75-.75h.007a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.007a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.335.75.75.75h.007a.75.75 0 00.75-.75V13.5a.75.75 0 00-.75-.75h-.007zm-.75 3a.75.75 0 01.75-.75h.007a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.007a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.335.75.75.75h.007a.75.75 0 00.75-.75V18a.75.75 0 00-.75-.75h-.007zm1.754-6a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V13.5a.75.75 0 00-.75-.75h-.008zm-.75 3a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V18a.75.75 0 00-.75-.75h-.008zm1.748-6a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008zm.75 1.5a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V13.5a.75.75 0 00-.75-.75h-.008zm-8.25-6A.75.75 0 018.25 6h7.5a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-7.5a.75.75 0 01-.75-.75v-.75zm9 9a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/calendar-days.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.calendar_days />

      <.calendar_days class="h-6 w-6 text-gray-500" />

  or as a function

      <%= calendar_days() %>

      <%= calendar_days(class: "h-6 w-6 text-gray-500") %>
  """
  def calendar_days(assigns_or_opts \\ [])

  def calendar_days(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M12.75 12.75a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM7.5 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM8.25 17.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM9.75 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM10.5 17.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM12 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM12.75 17.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM14.25 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM15 17.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM16.5 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM15 12.75a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM16.5 13.5a.75.75 0 100-1.5.75.75 0 000 1.5z"/>
      <path fill-rule="evenodd" d="M6.75 2.25A.75.75 0 017.5 3v1.5h9V3A.75.75 0 0118 3v1.5h.75a3 3 0 013 3v11.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V7.5a3 3 0 013-3H6V3a.75.75 0 01.75-.75zm13.5 9a1.5 1.5 0 00-1.5-1.5H5.25a1.5 1.5 0 00-1.5 1.5v7.5a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5v-7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def calendar_days(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M12.75 12.75a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM7.5 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM8.25 17.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM9.75 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM10.5 17.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM12 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM12.75 17.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM14.25 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM15 17.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM16.5 15.75a.75.75 0 100-1.5.75.75 0 000 1.5zM15 12.75a.75.75 0 11-1.5 0 .75.75 0 011.5 0zM16.5 13.5a.75.75 0 100-1.5.75.75 0 000 1.5z\"/>\n  <path fill-rule=\"evenodd\" d=\"M6.75 2.25A.75.75 0 017.5 3v1.5h9V3A.75.75 0 0118 3v1.5h.75a3 3 0 013 3v11.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V7.5a3 3 0 013-3H6V3a.75.75 0 01.75-.75zm13.5 9a1.5 1.5 0 00-1.5-1.5H5.25a1.5 1.5 0 00-1.5 1.5v7.5a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5v-7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/calendar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.calendar />

      <.calendar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= calendar() %>

      <%= calendar(class: "h-6 w-6 text-gray-500") %>
  """
  def calendar(assigns_or_opts \\ [])

  def calendar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M6.75 2.25A.75.75 0 017.5 3v1.5h9V3A.75.75 0 0118 3v1.5h.75a3 3 0 013 3v11.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V7.5a3 3 0 013-3H6V3a.75.75 0 01.75-.75zm13.5 9a1.5 1.5 0 00-1.5-1.5H5.25a1.5 1.5 0 00-1.5 1.5v7.5a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5v-7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def calendar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M6.75 2.25A.75.75 0 017.5 3v1.5h9V3A.75.75 0 0118 3v1.5h.75a3 3 0 013 3v11.25a3 3 0 01-3 3H5.25a3 3 0 01-3-3V7.5a3 3 0 013-3H6V3a.75.75 0 01.75-.75zm13.5 9a1.5 1.5 0 00-1.5-1.5H5.25a1.5 1.5 0 00-1.5 1.5v7.5a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5v-7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/camera.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.camera />

      <.camera class="h-6 w-6 text-gray-500" />

  or as a function

      <%= camera() %>

      <%= camera(class: "h-6 w-6 text-gray-500") %>
  """
  def camera(assigns_or_opts \\ [])

  def camera(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 9a3.75 3.75 0 100 7.5A3.75 3.75 0 0012 9z"/>
      <path fill-rule="evenodd" d="M9.344 3.071a49.52 49.52 0 015.312 0c.967.052 1.83.585 2.332 1.39l.821 1.317c.24.383.645.643 1.11.71.386.054.77.113 1.152.177 1.432.239 2.429 1.493 2.429 2.909V18a3 3 0 01-3 3h-15a3 3 0 01-3-3V9.574c0-1.416.997-2.67 2.429-2.909.382-.064.766-.123 1.151-.178a1.56 1.56 0 001.11-.71l.822-1.315a2.942 2.942 0 012.332-1.39zM6.75 12.75a5.25 5.25 0 1110.5 0 5.25 5.25 0 01-10.5 0zm12-1.5a.75.75 0 100-1.5.75.75 0 000 1.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def camera(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M12 9a3.75 3.75 0 100 7.5A3.75 3.75 0 0012 9z\"/>\n  <path fill-rule=\"evenodd\" d=\"M9.344 3.071a49.52 49.52 0 015.312 0c.967.052 1.83.585 2.332 1.39l.821 1.317c.24.383.645.643 1.11.71.386.054.77.113 1.152.177 1.432.239 2.429 1.493 2.429 2.909V18a3 3 0 01-3 3h-15a3 3 0 01-3-3V9.574c0-1.416.997-2.67 2.429-2.909.382-.064.766-.123 1.151-.178a1.56 1.56 0 001.11-.71l.822-1.315a2.942 2.942 0 012.332-1.39zM6.75 12.75a5.25 5.25 0 1110.5 0 5.25 5.25 0 01-10.5 0zm12-1.5a.75.75 0 100-1.5.75.75 0 000 1.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chart-bar-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chart_bar_square />

      <.chart_bar_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chart_bar_square() %>

      <%= chart_bar_square(class: "h-6 w-6 text-gray-500") %>
  """
  def chart_bar_square(assigns_or_opts \\ [])

  def chart_bar_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 6a3 3 0 013-3h12a3 3 0 013 3v12a3 3 0 01-3 3H6a3 3 0 01-3-3V6zm4.5 7.5a.75.75 0 01.75.75v2.25a.75.75 0 01-1.5 0v-2.25a.75.75 0 01.75-.75zm3.75-1.5a.75.75 0 00-1.5 0v4.5a.75.75 0 001.5 0V12zm2.25-3a.75.75 0 01.75.75v6.75a.75.75 0 01-1.5 0V9.75A.75.75 0 0113.5 9zm3.75-1.5a.75.75 0 00-1.5 0v9a.75.75 0 001.5 0v-9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chart_bar_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 6a3 3 0 013-3h12a3 3 0 013 3v12a3 3 0 01-3 3H6a3 3 0 01-3-3V6zm4.5 7.5a.75.75 0 01.75.75v2.25a.75.75 0 01-1.5 0v-2.25a.75.75 0 01.75-.75zm3.75-1.5a.75.75 0 00-1.5 0v4.5a.75.75 0 001.5 0V12zm2.25-3a.75.75 0 01.75.75v6.75a.75.75 0 01-1.5 0V9.75A.75.75 0 0113.5 9zm3.75-1.5a.75.75 0 00-1.5 0v9a.75.75 0 001.5 0v-9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chart-bar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chart_bar />

      <.chart_bar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chart_bar() %>

      <%= chart_bar(class: "h-6 w-6 text-gray-500") %>
  """
  def chart_bar(assigns_or_opts \\ [])

  def chart_bar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M18.375 2.25c-1.035 0-1.875.84-1.875 1.875v15.75c0 1.035.84 1.875 1.875 1.875h.75c1.035 0 1.875-.84 1.875-1.875V4.125c0-1.036-.84-1.875-1.875-1.875h-.75zM9.75 8.625c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-.75a1.875 1.875 0 01-1.875-1.875V8.625zM3 13.125c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v6.75c0 1.035-.84 1.875-1.875 1.875h-.75A1.875 1.875 0 013 19.875v-6.75z"/>
    </svg>
    """
  end

  def chart_bar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M18.375 2.25c-1.035 0-1.875.84-1.875 1.875v15.75c0 1.035.84 1.875 1.875 1.875h.75c1.035 0 1.875-.84 1.875-1.875V4.125c0-1.036-.84-1.875-1.875-1.875h-.75zM9.75 8.625c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-.75a1.875 1.875 0 01-1.875-1.875V8.625zM3 13.125c0-1.036.84-1.875 1.875-1.875h.75c1.036 0 1.875.84 1.875 1.875v6.75c0 1.035-.84 1.875-1.875 1.875h-.75A1.875 1.875 0 013 19.875v-6.75z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chart-pie.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chart_pie />

      <.chart_pie class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chart_pie() %>

      <%= chart_pie(class: "h-6 w-6 text-gray-500") %>
  """
  def chart_pie(assigns_or_opts \\ [])

  def chart_pie(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 13.5a8.25 8.25 0 018.25-8.25.75.75 0 01.75.75v6.75H18a.75.75 0 01.75.75 8.25 8.25 0 01-16.5 0z" clip-rule="evenodd"/>
      <path fill-rule="evenodd" d="M12.75 3a.75.75 0 01.75-.75 8.25 8.25 0 018.25 8.25.75.75 0 01-.75.75h-7.5a.75.75 0 01-.75-.75V3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chart_pie(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 13.5a8.25 8.25 0 018.25-8.25.75.75 0 01.75.75v6.75H18a.75.75 0 01.75.75 8.25 8.25 0 01-16.5 0z\" clip-rule=\"evenodd\"/>\n  <path fill-rule=\"evenodd\" d=\"M12.75 3a.75.75 0 01.75-.75 8.25 8.25 0 018.25 8.25.75.75 0 01-.75.75h-7.5a.75.75 0 01-.75-.75V3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-bottom-center-text.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_bottom_center_text />

      <.chat_bubble_bottom_center_text class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_bottom_center_text() %>

      <%= chat_bubble_bottom_center_text(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_bottom_center_text(assigns_or_opts \\ [])

  def chat_bubble_bottom_center_text(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.848 2.771A49.144 49.144 0 0112 2.25c2.43 0 4.817.178 7.152.52 1.978.292 3.348 2.024 3.348 3.97v6.02c0 1.946-1.37 3.678-3.348 3.97a48.901 48.901 0 01-3.476.383.39.39 0 00-.297.17l-2.755 4.133a.75.75 0 01-1.248 0l-2.755-4.133a.39.39 0 00-.297-.17 48.9 48.9 0 01-3.476-.384c-1.978-.29-3.348-2.024-3.348-3.97V6.741c0-1.946 1.37-3.68 3.348-3.97zM6.75 8.25a.75.75 0 01.75-.75h9a.75.75 0 010 1.5h-9a.75.75 0 01-.75-.75zm.75 2.25a.75.75 0 000 1.5H12a.75.75 0 000-1.5H7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chat_bubble_bottom_center_text(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.848 2.771A49.144 49.144 0 0112 2.25c2.43 0 4.817.178 7.152.52 1.978.292 3.348 2.024 3.348 3.97v6.02c0 1.946-1.37 3.678-3.348 3.97a48.901 48.901 0 01-3.476.383.39.39 0 00-.297.17l-2.755 4.133a.75.75 0 01-1.248 0l-2.755-4.133a.39.39 0 00-.297-.17 48.9 48.9 0 01-3.476-.384c-1.978-.29-3.348-2.024-3.348-3.97V6.741c0-1.946 1.37-3.68 3.348-3.97zM6.75 8.25a.75.75 0 01.75-.75h9a.75.75 0 010 1.5h-9a.75.75 0 01-.75-.75zm.75 2.25a.75.75 0 000 1.5H12a.75.75 0 000-1.5H7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-bottom-center.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_bottom_center />

      <.chat_bubble_bottom_center class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_bottom_center() %>

      <%= chat_bubble_bottom_center(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_bottom_center(assigns_or_opts \\ [])

  def chat_bubble_bottom_center(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.848 2.771A49.144 49.144 0 0112 2.25c2.43 0 4.817.178 7.152.52 1.978.292 3.348 2.024 3.348 3.97v6.02c0 1.946-1.37 3.678-3.348 3.97a48.901 48.901 0 01-3.476.383.39.39 0 00-.297.17l-2.755 4.133a.75.75 0 01-1.248 0l-2.755-4.133a.39.39 0 00-.297-.17 48.9 48.9 0 01-3.476-.384c-1.978-.29-3.348-2.024-3.348-3.97V6.741c0-1.946 1.37-3.68 3.348-3.97z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chat_bubble_bottom_center(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.848 2.771A49.144 49.144 0 0112 2.25c2.43 0 4.817.178 7.152.52 1.978.292 3.348 2.024 3.348 3.97v6.02c0 1.946-1.37 3.678-3.348 3.97a48.901 48.901 0 01-3.476.383.39.39 0 00-.297.17l-2.755 4.133a.75.75 0 01-1.248 0l-2.755-4.133a.39.39 0 00-.297-.17 48.9 48.9 0 01-3.476-.384c-1.978-.29-3.348-2.024-3.348-3.97V6.741c0-1.946 1.37-3.68 3.348-3.97z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-left-ellipsis.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_left_ellipsis />

      <.chat_bubble_left_ellipsis class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_left_ellipsis() %>

      <%= chat_bubble_left_ellipsis(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_left_ellipsis(assigns_or_opts \\ [])

  def chat_bubble_left_ellipsis(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-2.429 0-4.817.178-7.152.521C2.87 3.061 1.5 4.795 1.5 6.741v6.018c0 1.946 1.37 3.68 3.348 3.97.877.129 1.761.234 2.652.316V21a.75.75 0 001.28.53l4.184-4.183a.39.39 0 01.266-.112c2.006-.05 3.982-.22 5.922-.506 1.978-.29 3.348-2.023 3.348-3.97V6.741c0-1.947-1.37-3.68-3.348-3.97A49.145 49.145 0 0012 2.25zM8.25 8.625a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25zm2.625 1.125a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm4.875-1.125a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chat_bubble_left_ellipsis(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-2.429 0-4.817.178-7.152.521C2.87 3.061 1.5 4.795 1.5 6.741v6.018c0 1.946 1.37 3.68 3.348 3.97.877.129 1.761.234 2.652.316V21a.75.75 0 001.28.53l4.184-4.183a.39.39 0 01.266-.112c2.006-.05 3.982-.22 5.922-.506 1.978-.29 3.348-2.023 3.348-3.97V6.741c0-1.947-1.37-3.68-3.348-3.97A49.145 49.145 0 0012 2.25zM8.25 8.625a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25zm2.625 1.125a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm4.875-1.125a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-left-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_left_right />

      <.chat_bubble_left_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_left_right() %>

      <%= chat_bubble_left_right(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_left_right(assigns_or_opts \\ [])

  def chat_bubble_left_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M4.913 2.658c2.075-.27 4.19-.408 6.337-.408 2.147 0 4.262.139 6.337.408 1.922.25 3.291 1.861 3.405 3.727a4.403 4.403 0 00-1.032-.211 50.89 50.89 0 00-8.42 0c-2.358.196-4.04 2.19-4.04 4.434v4.286a4.47 4.47 0 002.433 3.984L7.28 21.53A.75.75 0 016 21v-4.03a48.527 48.527 0 01-1.087-.128C2.905 16.58 1.5 14.833 1.5 12.862V6.638c0-1.97 1.405-3.718 3.413-3.979z"/>
      <path d="M15.75 7.5c-1.376 0-2.739.057-4.086.169C10.124 7.797 9 9.103 9 10.609v4.285c0 1.507 1.128 2.814 2.67 2.94 1.243.102 2.5.157 3.768.165l2.782 2.781a.75.75 0 001.28-.53v-2.39l.33-.026c1.542-.125 2.67-1.433 2.67-2.94v-4.286c0-1.505-1.125-2.811-2.664-2.94A49.392 49.392 0 0015.75 7.5z"/>
    </svg>
    """
  end

  def chat_bubble_left_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M4.913 2.658c2.075-.27 4.19-.408 6.337-.408 2.147 0 4.262.139 6.337.408 1.922.25 3.291 1.861 3.405 3.727a4.403 4.403 0 00-1.032-.211 50.89 50.89 0 00-8.42 0c-2.358.196-4.04 2.19-4.04 4.434v4.286a4.47 4.47 0 002.433 3.984L7.28 21.53A.75.75 0 016 21v-4.03a48.527 48.527 0 01-1.087-.128C2.905 16.58 1.5 14.833 1.5 12.862V6.638c0-1.97 1.405-3.718 3.413-3.979z\"/>\n  <path d=\"M15.75 7.5c-1.376 0-2.739.057-4.086.169C10.124 7.797 9 9.103 9 10.609v4.285c0 1.507 1.128 2.814 2.67 2.94 1.243.102 2.5.157 3.768.165l2.782 2.781a.75.75 0 001.28-.53v-2.39l.33-.026c1.542-.125 2.67-1.433 2.67-2.94v-4.286c0-1.505-1.125-2.811-2.664-2.94A49.392 49.392 0 0015.75 7.5z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_left />

      <.chat_bubble_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_left() %>

      <%= chat_bubble_left(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_left(assigns_or_opts \\ [])

  def chat_bubble_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.848 2.771A49.144 49.144 0 0112 2.25c2.43 0 4.817.178 7.152.52 1.978.292 3.348 2.024 3.348 3.97v6.02c0 1.946-1.37 3.678-3.348 3.97-1.94.284-3.916.455-5.922.505a.39.39 0 00-.266.112L8.78 21.53A.75.75 0 017.5 21v-3.955a48.842 48.842 0 01-2.652-.316c-1.978-.29-3.348-2.024-3.348-3.97V6.741c0-1.946 1.37-3.68 3.348-3.97z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chat_bubble_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.848 2.771A49.144 49.144 0 0112 2.25c2.43 0 4.817.178 7.152.52 1.978.292 3.348 2.024 3.348 3.97v6.02c0 1.946-1.37 3.678-3.348 3.97-1.94.284-3.916.455-5.922.505a.39.39 0 00-.266.112L8.78 21.53A.75.75 0 017.5 21v-3.955a48.842 48.842 0 01-2.652-.316c-1.978-.29-3.348-2.024-3.348-3.97V6.741c0-1.946 1.37-3.68 3.348-3.97z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-oval-left-ellipsis.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_oval_left_ellipsis />

      <.chat_bubble_oval_left_ellipsis class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_oval_left_ellipsis() %>

      <%= chat_bubble_oval_left_ellipsis(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_oval_left_ellipsis(assigns_or_opts \\ [])

  def chat_bubble_oval_left_ellipsis(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.804 21.644A6.707 6.707 0 006 21.75a6.721 6.721 0 003.583-1.029c.774.182 1.584.279 2.417.279 5.322 0 9.75-3.97 9.75-9 0-5.03-4.428-9-9.75-9s-9.75 3.97-9.75 9c0 2.409 1.025 4.587 2.674 6.192.232.226.277.428.254.543a3.73 3.73 0 01-.814 1.686.75.75 0 00.44 1.223zM8.25 10.875a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25zM10.875 12a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm4.875-1.125a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chat_bubble_oval_left_ellipsis(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.804 21.644A6.707 6.707 0 006 21.75a6.721 6.721 0 003.583-1.029c.774.182 1.584.279 2.417.279 5.322 0 9.75-3.97 9.75-9 0-5.03-4.428-9-9.75-9s-9.75 3.97-9.75 9c0 2.409 1.025 4.587 2.674 6.192.232.226.277.428.254.543a3.73 3.73 0 01-.814 1.686.75.75 0 00.44 1.223zM8.25 10.875a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25zM10.875 12a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm4.875-1.125a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-oval-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_oval_left />

      <.chat_bubble_oval_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_oval_left() %>

      <%= chat_bubble_oval_left(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_oval_left(assigns_or_opts \\ [])

  def chat_bubble_oval_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.337 21.718a6.707 6.707 0 01-.533-.074.75.75 0 01-.44-1.223 3.73 3.73 0 00.814-1.686c.023-.115-.022-.317-.254-.543C3.274 16.587 2.25 14.41 2.25 12c0-5.03 4.428-9 9.75-9s9.75 3.97 9.75 9c0 5.03-4.428 9-9.75 9-.833 0-1.643-.097-2.417-.279a6.721 6.721 0 01-4.246.997z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chat_bubble_oval_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.337 21.718a6.707 6.707 0 01-.533-.074.75.75 0 01-.44-1.223 3.73 3.73 0 00.814-1.686c.023-.115-.022-.317-.254-.543C3.274 16.587 2.25 14.41 2.25 12c0-5.03 4.428-9 9.75-9s9.75 3.97 9.75 9c0 5.03-4.428 9-9.75 9-.833 0-1.643-.097-2.417-.279a6.721 6.721 0 01-4.246.997z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/check-badge.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.check_badge />

      <.check_badge class="h-6 w-6 text-gray-500" />

  or as a function

      <%= check_badge() %>

      <%= check_badge(class: "h-6 w-6 text-gray-500") %>
  """
  def check_badge(assigns_or_opts \\ [])

  def check_badge(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25a4.49 4.49 0 00-3.397 1.549 4.49 4.49 0 00-3.497 1.307 4.49 4.49 0 00-1.307 3.497A4.49 4.49 0 002.25 12c0 1.357.6 2.573 1.548 3.397a4.491 4.491 0 001.307 3.498A4.49 4.49 0 008.603 20.2 4.49 4.49 0 0012 21.75a4.49 4.49 0 003.397-1.549 4.491 4.491 0 003.497-1.307 4.491 4.491 0 001.307-3.497A4.49 4.49 0 0021.75 12a4.49 4.49 0 00-1.548-3.397 4.491 4.491 0 00-1.307-3.497 4.49 4.49 0 00-3.498-1.307A4.49 4.49 0 0012 2.25zm3.059 8.062a.75.75 0 10-.993-1.124 12.785 12.785 0 00-3.209 4.358L9.53 12.22a.75.75 0 00-1.06 1.06l2.135 2.136a.75.75 0 001.24-.289 11.264 11.264 0 013.214-4.815z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def check_badge(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25a4.49 4.49 0 00-3.397 1.549 4.49 4.49 0 00-3.497 1.307 4.49 4.49 0 00-1.307 3.497A4.49 4.49 0 002.25 12c0 1.357.6 2.573 1.548 3.397a4.491 4.491 0 001.307 3.498A4.49 4.49 0 008.603 20.2 4.49 4.49 0 0012 21.75a4.49 4.49 0 003.397-1.549 4.491 4.491 0 003.497-1.307 4.491 4.491 0 001.307-3.497A4.49 4.49 0 0021.75 12a4.49 4.49 0 00-1.548-3.397 4.491 4.491 0 00-1.307-3.497 4.49 4.49 0 00-3.498-1.307A4.49 4.49 0 0012 2.25zm3.059 8.062a.75.75 0 10-.993-1.124 12.785 12.785 0 00-3.209 4.358L9.53 12.22a.75.75 0 00-1.06 1.06l2.135 2.136a.75.75 0 001.24-.289 11.264 11.264 0 013.214-4.815z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/check-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.check_circle />

      <.check_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= check_circle() %>

      <%= check_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def check_circle(assigns_or_opts \\ [])

  def check_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm3.059 8.062a.75.75 0 10-.993-1.124 12.785 12.785 0 00-3.209 4.358L9.53 12.22a.75.75 0 00-1.06 1.06l2.135 2.136a.75.75 0 001.24-.289 11.264 11.264 0 013.214-4.815z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def check_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm3.059 8.062a.75.75 0 10-.993-1.124 12.785 12.785 0 00-3.209 4.358L9.53 12.22a.75.75 0 00-1.06 1.06l2.135 2.136a.75.75 0 001.24-.289 11.264 11.264 0 013.214-4.815z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/check.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.check />

      <.check class="h-6 w-6 text-gray-500" />

  or as a function

      <%= check() %>

      <%= check(class: "h-6 w-6 text-gray-500") %>
  """
  def check(assigns_or_opts \\ [])

  def check(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M21.545 3.627a.75.75 0 01-.03 1.06 47.349 47.349 0 00-11.04 15.89.75.75 0 01-1.22.238L2.47 14.03a.75.75 0 111.06-1.06l6.008 6.007A48.87 48.87 0 0120.484 3.598a.75.75 0 011.06.029z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def check(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M21.545 3.627a.75.75 0 01-.03 1.06 47.349 47.349 0 00-11.04 15.89.75.75 0 01-1.22.238L2.47 14.03a.75.75 0 111.06-1.06l6.008 6.007A48.87 48.87 0 0120.484 3.598a.75.75 0 011.06.029z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-double-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_double_down />

      <.chevron_double_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_double_down() %>

      <%= chevron_double_down(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_double_down(assigns_or_opts \\ [])

  def chevron_double_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M20.03 4.72a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 01-1.06 0l-7.5-7.5a.75.75 0 011.06-1.06L12 11.69l6.97-6.97a.75.75 0 011.06 0zm0 6a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 01-1.06 0l-7.5-7.5a.75.75 0 111.06-1.06L12 17.69l6.97-6.97a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chevron_double_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M20.03 4.72a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 01-1.06 0l-7.5-7.5a.75.75 0 011.06-1.06L12 11.69l6.97-6.97a.75.75 0 011.06 0zm0 6a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 01-1.06 0l-7.5-7.5a.75.75 0 111.06-1.06L12 17.69l6.97-6.97a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-double-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_double_left />

      <.chevron_double_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_double_left() %>

      <%= chevron_double_left(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_double_left(assigns_or_opts \\ [])

  def chevron_double_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M13.28 3.97a.75.75 0 010 1.06L6.31 12l6.97 6.97a.75.75 0 11-1.06 1.06l-7.5-7.5a.75.75 0 010-1.06l7.5-7.5a.75.75 0 011.06 0zm6 0a.75.75 0 010 1.06L12.31 12l6.97 6.97a.75.75 0 11-1.06 1.06l-7.5-7.5a.75.75 0 010-1.06l7.5-7.5a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chevron_double_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M13.28 3.97a.75.75 0 010 1.06L6.31 12l6.97 6.97a.75.75 0 11-1.06 1.06l-7.5-7.5a.75.75 0 010-1.06l7.5-7.5a.75.75 0 011.06 0zm6 0a.75.75 0 010 1.06L12.31 12l6.97 6.97a.75.75 0 11-1.06 1.06l-7.5-7.5a.75.75 0 010-1.06l7.5-7.5a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-double-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_double_right />

      <.chevron_double_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_double_right() %>

      <%= chevron_double_right(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_double_right(assigns_or_opts \\ [])

  def chevron_double_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.72 3.97a.75.75 0 011.06 0l7.5 7.5a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 01-1.06-1.06L11.69 12 4.72 5.03a.75.75 0 010-1.06zm6 0a.75.75 0 011.06 0l7.5 7.5a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 11-1.06-1.06L17.69 12l-6.97-6.97a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chevron_double_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.72 3.97a.75.75 0 011.06 0l7.5 7.5a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 01-1.06-1.06L11.69 12 4.72 5.03a.75.75 0 010-1.06zm6 0a.75.75 0 011.06 0l7.5 7.5a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 11-1.06-1.06L17.69 12l-6.97-6.97a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-double-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_double_up />

      <.chevron_double_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_double_up() %>

      <%= chevron_double_up(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_double_up(assigns_or_opts \\ [])

  def chevron_double_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.47 4.72a.75.75 0 011.06 0l7.5 7.5a.75.75 0 11-1.06 1.06L12 6.31l-6.97 6.97a.75.75 0 01-1.06-1.06l7.5-7.5zm.53 7.59l-6.97 6.97a.75.75 0 01-1.06-1.06l7.5-7.5a.75.75 0 011.06 0l7.5 7.5a.75.75 0 11-1.06 1.06L12 12.31z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chevron_double_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.47 4.72a.75.75 0 011.06 0l7.5 7.5a.75.75 0 11-1.06 1.06L12 6.31l-6.97 6.97a.75.75 0 01-1.06-1.06l7.5-7.5zm.53 7.59l-6.97 6.97a.75.75 0 01-1.06-1.06l7.5-7.5a.75.75 0 011.06 0l7.5 7.5a.75.75 0 11-1.06 1.06L12 12.31z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_down />

      <.chevron_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_down() %>

      <%= chevron_down(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_down(assigns_or_opts \\ [])

  def chevron_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12.53 16.28a.75.75 0 01-1.06 0l-7.5-7.5a.75.75 0 011.06-1.06L12 14.69l6.97-6.97a.75.75 0 111.06 1.06l-7.5 7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chevron_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12.53 16.28a.75.75 0 01-1.06 0l-7.5-7.5a.75.75 0 011.06-1.06L12 14.69l6.97-6.97a.75.75 0 111.06 1.06l-7.5 7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_left />

      <.chevron_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_left() %>

      <%= chevron_left(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_left(assigns_or_opts \\ [])

  def chevron_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M7.72 12.53a.75.75 0 010-1.06l7.5-7.5a.75.75 0 111.06 1.06L9.31 12l6.97 6.97a.75.75 0 11-1.06 1.06l-7.5-7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chevron_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M7.72 12.53a.75.75 0 010-1.06l7.5-7.5a.75.75 0 111.06 1.06L9.31 12l6.97 6.97a.75.75 0 11-1.06 1.06l-7.5-7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_right />

      <.chevron_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_right() %>

      <%= chevron_right(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_right(assigns_or_opts \\ [])

  def chevron_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M16.28 11.47a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 01-1.06-1.06L14.69 12 7.72 5.03a.75.75 0 011.06-1.06l7.5 7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chevron_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M16.28 11.47a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 01-1.06-1.06L14.69 12 7.72 5.03a.75.75 0 011.06-1.06l7.5 7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_up />

      <.chevron_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_up() %>

      <%= chevron_up(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_up(assigns_or_opts \\ [])

  def chevron_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.47 7.72a.75.75 0 011.06 0l7.5 7.5a.75.75 0 11-1.06 1.06L12 9.31l-6.97 6.97a.75.75 0 01-1.06-1.06l7.5-7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def chevron_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.47 7.72a.75.75 0 011.06 0l7.5 7.5a.75.75 0 11-1.06 1.06L12 9.31l-6.97 6.97a.75.75 0 01-1.06-1.06l7.5-7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/circle-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.circle_stack />

      <.circle_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= circle_stack() %>

      <%= circle_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def circle_stack(assigns_or_opts \\ [])

  def circle_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M21 6.375c0 2.692-4.03 4.875-9 4.875S3 9.067 3 6.375 7.03 1.5 12 1.5s9 2.183 9 4.875z"/>
      <path d="M12 12.75c2.685 0 5.19-.586 7.078-1.609a8.283 8.283 0 001.897-1.384c.016.121.025.244.025.368C21 12.817 16.97 15 12 15s-9-2.183-9-4.875c0-.124.009-.247.025-.368a8.285 8.285 0 001.897 1.384C6.809 12.164 9.315 12.75 12 12.75z"/>
      <path d="M12 16.5c2.685 0 5.19-.586 7.078-1.609a8.282 8.282 0 001.897-1.384c.016.121.025.244.025.368 0 2.692-4.03 4.875-9 4.875s-9-2.183-9-4.875c0-.124.009-.247.025-.368a8.284 8.284 0 001.897 1.384C6.809 15.914 9.315 16.5 12 16.5z"/>
      <path d="M12 20.25c2.685 0 5.19-.586 7.078-1.609a8.282 8.282 0 001.897-1.384c.016.121.025.244.025.368 0 2.692-4.03 4.875-9 4.875s-9-2.183-9-4.875c0-.124.009-.247.025-.368a8.284 8.284 0 001.897 1.384C6.809 19.664 9.315 20.25 12 20.25z"/>
    </svg>
    """
  end

  def circle_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M21 6.375c0 2.692-4.03 4.875-9 4.875S3 9.067 3 6.375 7.03 1.5 12 1.5s9 2.183 9 4.875z\"/>\n  <path d=\"M12 12.75c2.685 0 5.19-.586 7.078-1.609a8.283 8.283 0 001.897-1.384c.016.121.025.244.025.368C21 12.817 16.97 15 12 15s-9-2.183-9-4.875c0-.124.009-.247.025-.368a8.285 8.285 0 001.897 1.384C6.809 12.164 9.315 12.75 12 12.75z\"/>\n  <path d=\"M12 16.5c2.685 0 5.19-.586 7.078-1.609a8.282 8.282 0 001.897-1.384c.016.121.025.244.025.368 0 2.692-4.03 4.875-9 4.875s-9-2.183-9-4.875c0-.124.009-.247.025-.368a8.284 8.284 0 001.897 1.384C6.809 15.914 9.315 16.5 12 16.5z\"/>\n  <path d=\"M12 20.25c2.685 0 5.19-.586 7.078-1.609a8.282 8.282 0 001.897-1.384c.016.121.025.244.025.368 0 2.692-4.03 4.875-9 4.875s-9-2.183-9-4.875c0-.124.009-.247.025-.368a8.284 8.284 0 001.897 1.384C6.809 19.664 9.315 20.25 12 20.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clipboard-document-check.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clipboard_document_check />

      <.clipboard_document_check class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clipboard_document_check() %>

      <%= clipboard_document_check(class: "h-6 w-6 text-gray-500") %>
  """
  def clipboard_document_check(assigns_or_opts \\ [])

  def clipboard_document_check(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.875 7.5C3.839 7.5 3 8.34 3 9.375v11.25c0 1.035.84 1.875 1.875 1.875h9.75c1.036 0 1.875-.84 1.875-1.875V9.375c0-1.036-.84-1.875-1.875-1.875h-9.75zm8.016 5.33a.75.75 0 10-1.032-1.089 12.778 12.778 0 00-2.877 4.055l-.952-.951a.75.75 0 00-1.06 1.06l1.76 1.761a.75.75 0 001.24-.289 11.258 11.258 0 012.92-4.547z" clip-rule="evenodd"/>
      <path fill-rule="evenodd" d="M11.248 6H7.502c.052-1.46 1.16-2.706 2.662-2.831.224-.019.448-.036.673-.051A3 3 0 0113.5 1.5H15a3 3 0 012.663 1.618c.225.015.45.032.673.05C19.876 3.298 21 4.604 21 6.109v9.642a3 3 0 01-3 3V9.375A3.375 3.375 0 0014.63 6H11.248zM12 4.5A1.5 1.5 0 0113.5 3H15a1.5 1.5 0 011.5 1.5H12z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def clipboard_document_check(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.875 7.5C3.839 7.5 3 8.34 3 9.375v11.25c0 1.035.84 1.875 1.875 1.875h9.75c1.036 0 1.875-.84 1.875-1.875V9.375c0-1.036-.84-1.875-1.875-1.875h-9.75zm8.016 5.33a.75.75 0 10-1.032-1.089 12.778 12.778 0 00-2.877 4.055l-.952-.951a.75.75 0 00-1.06 1.06l1.76 1.761a.75.75 0 001.24-.289 11.258 11.258 0 012.92-4.547z\" clip-rule=\"evenodd\"/>\n  <path fill-rule=\"evenodd\" d=\"M11.248 6H7.502c.052-1.46 1.16-2.706 2.662-2.831.224-.019.448-.036.673-.051A3 3 0 0113.5 1.5H15a3 3 0 012.663 1.618c.225.015.45.032.673.05C19.876 3.298 21 4.604 21 6.109v9.642a3 3 0 01-3 3V9.375A3.375 3.375 0 0014.63 6H11.248zM12 4.5A1.5 1.5 0 0113.5 3H15a1.5 1.5 0 011.5 1.5H12z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clipboard-document-list.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clipboard_document_list />

      <.clipboard_document_list class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clipboard_document_list() %>

      <%= clipboard_document_list(class: "h-6 w-6 text-gray-500") %>
  """
  def clipboard_document_list(assigns_or_opts \\ [])

  def clipboard_document_list(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M7.502 6h7.128A3.375 3.375 0 0118 9.375v9.375a3 3 0 003-3V6.108c0-1.505-1.125-2.811-2.664-2.94a48.972 48.972 0 00-.673-.05A3 3 0 0015 1.5h-1.5a3 3 0 00-2.663 1.618c-.225.015-.45.032-.673.05C8.662 3.295 7.554 4.542 7.502 6zM13.5 3A1.5 1.5 0 0012 4.5h4.5A1.5 1.5 0 0015 3h-1.5z" clip-rule="evenodd"/>
      <path fill-rule="evenodd" d="M3 9.375C3 8.339 3.84 7.5 4.875 7.5h9.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-9.75A1.875 1.875 0 013 20.625V9.375zM6 12a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V12zm2.25 0a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75zM6 15a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V15zm2.25 0a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75zM6 18a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V18zm2.25 0a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def clipboard_document_list(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M7.502 6h7.128A3.375 3.375 0 0118 9.375v9.375a3 3 0 003-3V6.108c0-1.505-1.125-2.811-2.664-2.94a48.972 48.972 0 00-.673-.05A3 3 0 0015 1.5h-1.5a3 3 0 00-2.663 1.618c-.225.015-.45.032-.673.05C8.662 3.295 7.554 4.542 7.502 6zM13.5 3A1.5 1.5 0 0012 4.5h4.5A1.5 1.5 0 0015 3h-1.5z\" clip-rule=\"evenodd\"/>\n  <path fill-rule=\"evenodd\" d=\"M3 9.375C3 8.339 3.84 7.5 4.875 7.5h9.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-9.75A1.875 1.875 0 013 20.625V9.375zM6 12a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V12zm2.25 0a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75zM6 15a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V15zm2.25 0a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75zM6 18a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V18zm2.25 0a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clipboard-document.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clipboard_document />

      <.clipboard_document class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clipboard_document() %>

      <%= clipboard_document(class: "h-6 w-6 text-gray-500") %>
  """
  def clipboard_document(assigns_or_opts \\ [])

  def clipboard_document(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M17.663 3.118c.225.015.45.032.673.05C19.876 3.298 21 4.604 21 6.109v9.642a3 3 0 01-3 3V16.5c0-5.922-4.576-10.775-10.384-11.217.324-1.132 1.3-2.01 2.548-2.114.224-.019.448-.036.673-.051A3 3 0 0113.5 1.5H15a3 3 0 012.663 1.618zM12 4.5A1.5 1.5 0 0113.5 3H15a1.5 1.5 0 011.5 1.5H12z" clip-rule="evenodd"/>
      <path d="M3 8.625c0-1.036.84-1.875 1.875-1.875h.375A3.75 3.75 0 019 10.5v1.875c0 1.036.84 1.875 1.875 1.875h1.875A3.75 3.75 0 0116.5 18v2.625c0 1.035-.84 1.875-1.875 1.875h-9.75A1.875 1.875 0 013 20.625v-12z"/>
      <path d="M10.5 10.5a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963 5.23 5.23 0 00-3.434-1.279h-1.875a.375.375 0 01-.375-.375V10.5z"/>
    </svg>
    """
  end

  def clipboard_document(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M17.663 3.118c.225.015.45.032.673.05C19.876 3.298 21 4.604 21 6.109v9.642a3 3 0 01-3 3V16.5c0-5.922-4.576-10.775-10.384-11.217.324-1.132 1.3-2.01 2.548-2.114.224-.019.448-.036.673-.051A3 3 0 0113.5 1.5H15a3 3 0 012.663 1.618zM12 4.5A1.5 1.5 0 0113.5 3H15a1.5 1.5 0 011.5 1.5H12z\" clip-rule=\"evenodd\"/>\n  <path d=\"M3 8.625c0-1.036.84-1.875 1.875-1.875h.375A3.75 3.75 0 019 10.5v1.875c0 1.036.84 1.875 1.875 1.875h1.875A3.75 3.75 0 0116.5 18v2.625c0 1.035-.84 1.875-1.875 1.875h-9.75A1.875 1.875 0 013 20.625v-12z\"/>\n  <path d=\"M10.5 10.5a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963 5.23 5.23 0 00-3.434-1.279h-1.875a.375.375 0 01-.375-.375V10.5z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clipboard.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clipboard />

      <.clipboard class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clipboard() %>

      <%= clipboard(class: "h-6 w-6 text-gray-500") %>
  """
  def clipboard(assigns_or_opts \\ [])

  def clipboard(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M10.5 3A1.501 1.501 0 009 4.5h6A1.5 1.5 0 0013.5 3h-3zm-2.693.178A3 3 0 0110.5 1.5h3a3 3 0 012.694 1.678c.497.042.992.092 1.486.15 1.497.173 2.57 1.46 2.57 2.929V19.5a3 3 0 01-3 3H6.75a3 3 0 01-3-3V6.257c0-1.47 1.073-2.756 2.57-2.93.493-.057.989-.107 1.487-.15z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def clipboard(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M10.5 3A1.501 1.501 0 009 4.5h6A1.5 1.5 0 0013.5 3h-3zm-2.693.178A3 3 0 0110.5 1.5h3a3 3 0 012.694 1.678c.497.042.992.092 1.486.15 1.497.173 2.57 1.46 2.57 2.929V19.5a3 3 0 01-3 3H6.75a3 3 0 01-3-3V6.257c0-1.47 1.073-2.756 2.57-2.93.493-.057.989-.107 1.487-.15z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clock.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clock />

      <.clock class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clock() %>

      <%= clock(class: "h-6 w-6 text-gray-500") %>
  """
  def clock(assigns_or_opts \\ [])

  def clock(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM12.75 6a.75.75 0 00-1.5 0v6c0 .414.336.75.75.75h4.5a.75.75 0 000-1.5h-3.75V6z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def clock(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM12.75 6a.75.75 0 00-1.5 0v6c0 .414.336.75.75.75h4.5a.75.75 0 000-1.5h-3.75V6z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cloud-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cloud_arrow_down />

      <.cloud_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cloud_arrow_down() %>

      <%= cloud_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def cloud_arrow_down(assigns_or_opts \\ [])

  def cloud_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M10.5 3.75a6 6 0 00-5.98 6.496A5.25 5.25 0 006.75 20.25H18a4.5 4.5 0 002.206-8.423 3.75 3.75 0 00-4.133-4.303A6.001 6.001 0 0010.5 3.75zm2.25 6a.75.75 0 00-1.5 0v4.94l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V9.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def cloud_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M10.5 3.75a6 6 0 00-5.98 6.496A5.25 5.25 0 006.75 20.25H18a4.5 4.5 0 002.206-8.423 3.75 3.75 0 00-4.133-4.303A6.001 6.001 0 0010.5 3.75zm2.25 6a.75.75 0 00-1.5 0v4.94l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V9.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cloud-arrow-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cloud_arrow_up />

      <.cloud_arrow_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cloud_arrow_up() %>

      <%= cloud_arrow_up(class: "h-6 w-6 text-gray-500") %>
  """
  def cloud_arrow_up(assigns_or_opts \\ [])

  def cloud_arrow_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M10.5 3.75a6 6 0 00-5.98 6.496A5.25 5.25 0 006.75 20.25H18a4.5 4.5 0 002.206-8.423 3.75 3.75 0 00-4.133-4.303A6.001 6.001 0 0010.5 3.75zm2.03 5.47a.75.75 0 00-1.06 0l-3 3a.75.75 0 101.06 1.06l1.72-1.72v4.94a.75.75 0 001.5 0v-4.94l1.72 1.72a.75.75 0 101.06-1.06l-3-3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def cloud_arrow_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M10.5 3.75a6 6 0 00-5.98 6.496A5.25 5.25 0 006.75 20.25H18a4.5 4.5 0 002.206-8.423 3.75 3.75 0 00-4.133-4.303A6.001 6.001 0 0010.5 3.75zm2.03 5.47a.75.75 0 00-1.06 0l-3 3a.75.75 0 101.06 1.06l1.72-1.72v4.94a.75.75 0 001.5 0v-4.94l1.72 1.72a.75.75 0 101.06-1.06l-3-3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cloud.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cloud />

      <.cloud class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cloud() %>

      <%= cloud(class: "h-6 w-6 text-gray-500") %>
  """
  def cloud(assigns_or_opts \\ [])

  def cloud(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.5 9.75a6 6 0 0111.573-2.226 3.75 3.75 0 014.133 4.303A4.5 4.5 0 0118 20.25H6.75a5.25 5.25 0 01-2.23-10.004 6.072 6.072 0 01-.02-.496z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def cloud(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.5 9.75a6 6 0 0111.573-2.226 3.75 3.75 0 014.133 4.303A4.5 4.5 0 0118 20.25H6.75a5.25 5.25 0 01-2.23-10.004 6.072 6.072 0 01-.02-.496z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/code-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.code_square />

      <.code_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= code_square() %>

      <%= code_square(class: "h-6 w-6 text-gray-500") %>
  """
  def code_square(assigns_or_opts \\ [])

  def code_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 6a3 3 0 013-3h12a3 3 0 013 3v12a3 3 0 01-3 3H6a3 3 0 01-3-3V6zm14.25 6a.75.75 0 01-.22.53l-2.25 2.25a.75.75 0 11-1.06-1.06L15.44 12l-1.72-1.72a.75.75 0 111.06-1.06l2.25 2.25c.141.14.22.331.22.53zm-10.28-.53a.75.75 0 000 1.06l2.25 2.25a.75.75 0 101.06-1.06L8.56 12l1.72-1.72a.75.75 0 10-1.06-1.06l-2.25 2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def code_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 6a3 3 0 013-3h12a3 3 0 013 3v12a3 3 0 01-3 3H6a3 3 0 01-3-3V6zm14.25 6a.75.75 0 01-.22.53l-2.25 2.25a.75.75 0 11-1.06-1.06L15.44 12l-1.72-1.72a.75.75 0 111.06-1.06l2.25 2.25c.141.14.22.331.22.53zm-10.28-.53a.75.75 0 000 1.06l2.25 2.25a.75.75 0 101.06-1.06L8.56 12l1.72-1.72a.75.75 0 10-1.06-1.06l-2.25 2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/code.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.code />

      <.code class="h-6 w-6 text-gray-500" />

  or as a function

      <%= code() %>

      <%= code(class: "h-6 w-6 text-gray-500") %>
  """
  def code(assigns_or_opts \\ [])

  def code(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M14.447 3.027a.75.75 0 01.527.92l-4.5 16.5a.75.75 0 01-1.448-.394l4.5-16.5a.75.75 0 01.921-.526zM16.72 6.22a.75.75 0 011.06 0l5.25 5.25a.75.75 0 010 1.06l-5.25 5.25a.75.75 0 11-1.06-1.06L21.44 12l-4.72-4.72a.75.75 0 010-1.06zm-9.44 0a.75.75 0 010 1.06L2.56 12l4.72 4.72a.75.75 0 11-1.06 1.06L.97 12.53a.75.75 0 010-1.06l5.25-5.25a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def code(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M14.447 3.027a.75.75 0 01.527.92l-4.5 16.5a.75.75 0 01-1.448-.394l4.5-16.5a.75.75 0 01.921-.526zM16.72 6.22a.75.75 0 011.06 0l5.25 5.25a.75.75 0 010 1.06l-5.25 5.25a.75.75 0 11-1.06-1.06L21.44 12l-4.72-4.72a.75.75 0 010-1.06zm-9.44 0a.75.75 0 010 1.06L2.56 12l4.72 4.72a.75.75 0 11-1.06 1.06L.97 12.53a.75.75 0 010-1.06l5.25-5.25a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cog-6-tooth.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cog_6_tooth />

      <.cog_6_tooth class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cog_6_tooth() %>

      <%= cog_6_tooth(class: "h-6 w-6 text-gray-500") %>
  """
  def cog_6_tooth(assigns_or_opts \\ [])

  def cog_6_tooth(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.078 2.25c-.917 0-1.699.663-1.85 1.567L9.05 4.889c-.02.12-.115.26-.297.348a7.493 7.493 0 00-.986.57c-.166.115-.334.126-.45.083L6.3 5.508a1.875 1.875 0 00-2.282.819l-.922 1.597a1.875 1.875 0 00.432 2.385l.84.692c.095.078.17.229.154.43a7.598 7.598 0 000 1.139c.015.2-.059.352-.153.43l-.841.692a1.875 1.875 0 00-.432 2.385l.922 1.597a1.875 1.875 0 002.282.818l1.019-.382c.115-.043.283-.031.45.082.312.214.641.405.985.57.182.088.277.228.297.35l.178 1.071c.151.904.933 1.567 1.85 1.567h1.844c.916 0 1.699-.663 1.85-1.567l.178-1.072c.02-.12.114-.26.297-.349.344-.165.673-.356.985-.57.167-.114.335-.125.45-.082l1.02.382a1.875 1.875 0 002.28-.819l.923-1.597a1.875 1.875 0 00-.432-2.385l-.84-.692c-.095-.078-.17-.229-.154-.43a7.614 7.614 0 000-1.139c-.016-.2.059-.352.153-.43l.84-.692c.708-.582.891-1.59.433-2.385l-.922-1.597a1.875 1.875 0 00-2.282-.818l-1.02.382c-.114.043-.282.031-.449-.083a7.49 7.49 0 00-.985-.57c-.183-.087-.277-.227-.297-.348l-.179-1.072a1.875 1.875 0 00-1.85-1.567h-1.843zM12 15.75a3.75 3.75 0 100-7.5 3.75 3.75 0 000 7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def cog_6_tooth(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.078 2.25c-.917 0-1.699.663-1.85 1.567L9.05 4.889c-.02.12-.115.26-.297.348a7.493 7.493 0 00-.986.57c-.166.115-.334.126-.45.083L6.3 5.508a1.875 1.875 0 00-2.282.819l-.922 1.597a1.875 1.875 0 00.432 2.385l.84.692c.095.078.17.229.154.43a7.598 7.598 0 000 1.139c.015.2-.059.352-.153.43l-.841.692a1.875 1.875 0 00-.432 2.385l.922 1.597a1.875 1.875 0 002.282.818l1.019-.382c.115-.043.283-.031.45.082.312.214.641.405.985.57.182.088.277.228.297.35l.178 1.071c.151.904.933 1.567 1.85 1.567h1.844c.916 0 1.699-.663 1.85-1.567l.178-1.072c.02-.12.114-.26.297-.349.344-.165.673-.356.985-.57.167-.114.335-.125.45-.082l1.02.382a1.875 1.875 0 002.28-.819l.923-1.597a1.875 1.875 0 00-.432-2.385l-.84-.692c-.095-.078-.17-.229-.154-.43a7.614 7.614 0 000-1.139c-.016-.2.059-.352.153-.43l.84-.692c.708-.582.891-1.59.433-2.385l-.922-1.597a1.875 1.875 0 00-2.282-.818l-1.02.382c-.114.043-.282.031-.449-.083a7.49 7.49 0 00-.985-.57c-.183-.087-.277-.227-.297-.348l-.179-1.072a1.875 1.875 0 00-1.85-1.567h-1.843zM12 15.75a3.75 3.75 0 100-7.5 3.75 3.75 0 000 7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cog-8-tooth.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cog_8_tooth />

      <.cog_8_tooth class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cog_8_tooth() %>

      <%= cog_8_tooth(class: "h-6 w-6 text-gray-500") %>
  """
  def cog_8_tooth(assigns_or_opts \\ [])

  def cog_8_tooth(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.828 2.25c-.916 0-1.699.663-1.85 1.567l-.091.549a.798.798 0 01-.517.608 7.45 7.45 0 00-.478.198.798.798 0 01-.796-.064l-.453-.324a1.875 1.875 0 00-2.416.2l-.243.243a1.875 1.875 0 00-.2 2.416l.324.453a.798.798 0 01.064.796 7.448 7.448 0 00-.198.478.798.798 0 01-.608.517l-.55.092a1.875 1.875 0 00-1.566 1.849v.344c0 .916.663 1.699 1.567 1.85l.549.091c.281.047.508.25.608.517.06.162.127.321.198.478a.798.798 0 01-.064.796l-.324.453a1.875 1.875 0 00.2 2.416l.243.243c.648.648 1.67.733 2.416.2l.453-.324a.798.798 0 01.796-.064c.157.071.316.137.478.198.267.1.47.327.517.608l.092.55c.15.903.932 1.566 1.849 1.566h.344c.916 0 1.699-.663 1.85-1.567l.091-.549a.798.798 0 01.517-.608 7.52 7.52 0 00.478-.198.798.798 0 01.796.064l.453.324a1.875 1.875 0 002.416-.2l.243-.243c.648-.648.733-1.67.2-2.416l-.324-.453a.798.798 0 01-.064-.796c.071-.157.137-.316.198-.478.1-.267.327-.47.608-.517l.55-.091a1.875 1.875 0 001.566-1.85v-.344c0-.916-.663-1.699-1.567-1.85l-.549-.091a.798.798 0 01-.608-.517 7.507 7.507 0 00-.198-.478.798.798 0 01.064-.796l.324-.453a1.875 1.875 0 00-.2-2.416l-.243-.243a1.875 1.875 0 00-2.416-.2l-.453.324a.798.798 0 01-.796.064 7.462 7.462 0 00-.478-.198.798.798 0 01-.517-.608l-.091-.55a1.875 1.875 0 00-1.85-1.566h-.344zM12 15.75a3.75 3.75 0 100-7.5 3.75 3.75 0 000 7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def cog_8_tooth(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.828 2.25c-.916 0-1.699.663-1.85 1.567l-.091.549a.798.798 0 01-.517.608 7.45 7.45 0 00-.478.198.798.798 0 01-.796-.064l-.453-.324a1.875 1.875 0 00-2.416.2l-.243.243a1.875 1.875 0 00-.2 2.416l.324.453a.798.798 0 01.064.796 7.448 7.448 0 00-.198.478.798.798 0 01-.608.517l-.55.092a1.875 1.875 0 00-1.566 1.849v.344c0 .916.663 1.699 1.567 1.85l.549.091c.281.047.508.25.608.517.06.162.127.321.198.478a.798.798 0 01-.064.796l-.324.453a1.875 1.875 0 00.2 2.416l.243.243c.648.648 1.67.733 2.416.2l.453-.324a.798.798 0 01.796-.064c.157.071.316.137.478.198.267.1.47.327.517.608l.092.55c.15.903.932 1.566 1.849 1.566h.344c.916 0 1.699-.663 1.85-1.567l.091-.549a.798.798 0 01.517-.608 7.52 7.52 0 00.478-.198.798.798 0 01.796.064l.453.324a1.875 1.875 0 002.416-.2l.243-.243c.648-.648.733-1.67.2-2.416l-.324-.453a.798.798 0 01-.064-.796c.071-.157.137-.316.198-.478.1-.267.327-.47.608-.517l.55-.091a1.875 1.875 0 001.566-1.85v-.344c0-.916-.663-1.699-1.567-1.85l-.549-.091a.798.798 0 01-.608-.517 7.507 7.507 0 00-.198-.478.798.798 0 01.064-.796l.324-.453a1.875 1.875 0 00-.2-2.416l-.243-.243a1.875 1.875 0 00-2.416-.2l-.453.324a.798.798 0 01-.796.064 7.462 7.462 0 00-.478-.198.798.798 0 01-.517-.608l-.091-.55a1.875 1.875 0 00-1.85-1.566h-.344zM12 15.75a3.75 3.75 0 100-7.5 3.75 3.75 0 000 7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cog.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cog />

      <.cog class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cog() %>

      <%= cog(class: "h-6 w-6 text-gray-500") %>
  """
  def cog(assigns_or_opts \\ [])

  def cog(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M17.004 10.407c.138.435-.216.842-.672.842h-3.465a.75.75 0 01-.65-.375l-1.732-3c-.229-.396-.053-.907.393-1.004a5.252 5.252 0 016.126 3.537zM8.12 8.464c.307-.338.838-.235 1.066.16l1.732 3a.75.75 0 010 .75l-1.732 3.001c-.229.396-.76.498-1.067.16A5.231 5.231 0 016.75 12c0-1.362.519-2.603 1.37-3.536zM10.878 17.13c-.447-.097-.623-.608-.394-1.003l1.733-3.003a.75.75 0 01.65-.375h3.465c.457 0 .81.408.672.843a5.252 5.252 0 01-6.126 3.538z"/>
      <path fill-rule="evenodd" d="M21 12.75a.75.75 0 000-1.5h-.783a8.22 8.22 0 00-.237-1.357l.734-.267a.75.75 0 10-.513-1.41l-.735.268a8.24 8.24 0 00-.689-1.191l.6-.504a.75.75 0 10-.964-1.149l-.6.504a8.3 8.3 0 00-1.054-.885l.391-.678a.75.75 0 10-1.299-.75l-.39.677a8.188 8.188 0 00-1.295-.471l.136-.77a.75.75 0 00-1.477-.26l-.136.77a8.364 8.364 0 00-1.377 0l-.136-.77a.75.75 0 10-1.477.26l.136.77c-.448.121-.88.28-1.294.47l-.39-.676a.75.75 0 00-1.3.75l.392.678a8.29 8.29 0 00-1.054.885l-.6-.504a.75.75 0 00-.965 1.149l.6.503a8.243 8.243 0 00-.689 1.192L3.8 8.217a.75.75 0 10-.513 1.41l.735.267a8.222 8.222 0 00-.238 1.355h-.783a.75.75 0 000 1.5h.783c.042.464.122.917.238 1.356l-.735.268a.75.75 0 10.513 1.41l.735-.268c.197.417.428.816.69 1.192l-.6.504a.75.75 0 10.963 1.149l.601-.505c.326.323.679.62 1.054.885l-.392.68a.75.75 0 101.3.75l.39-.679c.414.192.847.35 1.294.471l-.136.771a.75.75 0 101.477.26l.137-.772a8.376 8.376 0 001.376 0l.136.773a.75.75 0 101.477-.26l-.136-.772a8.19 8.19 0 001.294-.47l.391.677a.75.75 0 101.3-.75l-.393-.679a8.282 8.282 0 001.054-.885l.601.504a.75.75 0 10.964-1.15l-.6-.503a8.24 8.24 0 00.69-1.191l.735.268a.75.75 0 10.512-1.41l-.734-.268c.115-.438.195-.892.237-1.356h.784zm-2.657-3.06a6.744 6.744 0 00-1.19-2.053 6.784 6.784 0 00-1.82-1.51A6.704 6.704 0 0012 5.25a6.801 6.801 0 00-1.225.111 6.7 6.7 0 00-2.15.792 6.784 6.784 0 00-2.952 3.489.758.758 0 01-.036.099A6.74 6.74 0 005.251 12a6.739 6.739 0 003.355 5.835l.01.006.01.005a6.706 6.706 0 002.203.802c.007 0 .014.002.021.004a6.792 6.792 0 002.301 0l.022-.004a6.707 6.707 0 002.228-.816 6.781 6.781 0 001.762-1.483l.009-.01.009-.012a6.744 6.744 0 001.18-2.064c.253-.708.39-1.47.39-2.264a6.74 6.74 0 00-.408-2.308z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def cog(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M17.004 10.407c.138.435-.216.842-.672.842h-3.465a.75.75 0 01-.65-.375l-1.732-3c-.229-.396-.053-.907.393-1.004a5.252 5.252 0 016.126 3.537zM8.12 8.464c.307-.338.838-.235 1.066.16l1.732 3a.75.75 0 010 .75l-1.732 3.001c-.229.396-.76.498-1.067.16A5.231 5.231 0 016.75 12c0-1.362.519-2.603 1.37-3.536zM10.878 17.13c-.447-.097-.623-.608-.394-1.003l1.733-3.003a.75.75 0 01.65-.375h3.465c.457 0 .81.408.672.843a5.252 5.252 0 01-6.126 3.538z\"/>\n  <path fill-rule=\"evenodd\" d=\"M21 12.75a.75.75 0 000-1.5h-.783a8.22 8.22 0 00-.237-1.357l.734-.267a.75.75 0 10-.513-1.41l-.735.268a8.24 8.24 0 00-.689-1.191l.6-.504a.75.75 0 10-.964-1.149l-.6.504a8.3 8.3 0 00-1.054-.885l.391-.678a.75.75 0 10-1.299-.75l-.39.677a8.188 8.188 0 00-1.295-.471l.136-.77a.75.75 0 00-1.477-.26l-.136.77a8.364 8.364 0 00-1.377 0l-.136-.77a.75.75 0 10-1.477.26l.136.77c-.448.121-.88.28-1.294.47l-.39-.676a.75.75 0 00-1.3.75l.392.678a8.29 8.29 0 00-1.054.885l-.6-.504a.75.75 0 00-.965 1.149l.6.503a8.243 8.243 0 00-.689 1.192L3.8 8.217a.75.75 0 10-.513 1.41l.735.267a8.222 8.222 0 00-.238 1.355h-.783a.75.75 0 000 1.5h.783c.042.464.122.917.238 1.356l-.735.268a.75.75 0 10.513 1.41l.735-.268c.197.417.428.816.69 1.192l-.6.504a.75.75 0 10.963 1.149l.601-.505c.326.323.679.62 1.054.885l-.392.68a.75.75 0 101.3.75l.39-.679c.414.192.847.35 1.294.471l-.136.771a.75.75 0 101.477.26l.137-.772a8.376 8.376 0 001.376 0l.136.773a.75.75 0 101.477-.26l-.136-.772a8.19 8.19 0 001.294-.47l.391.677a.75.75 0 101.3-.75l-.393-.679a8.282 8.282 0 001.054-.885l.601.504a.75.75 0 10.964-1.15l-.6-.503a8.24 8.24 0 00.69-1.191l.735.268a.75.75 0 10.512-1.41l-.734-.268c.115-.438.195-.892.237-1.356h.784zm-2.657-3.06a6.744 6.744 0 00-1.19-2.053 6.784 6.784 0 00-1.82-1.51A6.704 6.704 0 0012 5.25a6.801 6.801 0 00-1.225.111 6.7 6.7 0 00-2.15.792 6.784 6.784 0 00-2.952 3.489.758.758 0 01-.036.099A6.74 6.74 0 005.251 12a6.739 6.739 0 003.355 5.835l.01.006.01.005a6.706 6.706 0 002.203.802c.007 0 .014.002.021.004a6.792 6.792 0 002.301 0l.022-.004a6.707 6.707 0 002.228-.816 6.781 6.781 0 001.762-1.483l.009-.01.009-.012a6.744 6.744 0 001.18-2.064c.253-.708.39-1.47.39-2.264a6.74 6.74 0 00-.408-2.308z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/command-line.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.command_line />

      <.command_line class="h-6 w-6 text-gray-500" />

  or as a function

      <%= command_line() %>

      <%= command_line(class: "h-6 w-6 text-gray-500") %>
  """
  def command_line(assigns_or_opts \\ [])

  def command_line(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 6a3 3 0 013-3h13.5a3 3 0 013 3v12a3 3 0 01-3 3H5.25a3 3 0 01-3-3V6zm3.97.97a.75.75 0 011.06 0l2.25 2.25a.75.75 0 010 1.06l-2.25 2.25a.75.75 0 01-1.06-1.06l1.72-1.72-1.72-1.72a.75.75 0 010-1.06zm4.28 4.28a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def command_line(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 6a3 3 0 013-3h13.5a3 3 0 013 3v12a3 3 0 01-3 3H5.25a3 3 0 01-3-3V6zm3.97.97a.75.75 0 011.06 0l2.25 2.25a.75.75 0 010 1.06l-2.25 2.25a.75.75 0 01-1.06-1.06l1.72-1.72-1.72-1.72a.75.75 0 010-1.06zm4.28 4.28a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/computer-desktop.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.computer_desktop />

      <.computer_desktop class="h-6 w-6 text-gray-500" />

  or as a function

      <%= computer_desktop() %>

      <%= computer_desktop(class: "h-6 w-6 text-gray-500") %>
  """
  def computer_desktop(assigns_or_opts \\ [])

  def computer_desktop(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 5.25a3 3 0 013-3h13.5a3 3 0 013 3V15a3 3 0 01-3 3h-3v.257c0 .597.237 1.17.659 1.591l.621.622a.75.75 0 01-.53 1.28h-9a.75.75 0 01-.53-1.28l.621-.622a2.25 2.25 0 00.659-1.59V18h-3a3 3 0 01-3-3V5.25zm1.5 0v7.5a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5v-7.5a1.5 1.5 0 00-1.5-1.5H5.25a1.5 1.5 0 00-1.5 1.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def computer_desktop(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 5.25a3 3 0 013-3h13.5a3 3 0 013 3V15a3 3 0 01-3 3h-3v.257c0 .597.237 1.17.659 1.591l.621.622a.75.75 0 01-.53 1.28h-9a.75.75 0 01-.53-1.28l.621-.622a2.25 2.25 0 00.659-1.59V18h-3a3 3 0 01-3-3V5.25zm1.5 0v7.5a1.5 1.5 0 001.5 1.5h13.5a1.5 1.5 0 001.5-1.5v-7.5a1.5 1.5 0 00-1.5-1.5H5.25a1.5 1.5 0 00-1.5 1.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cpu-chip.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cpu_chip />

      <.cpu_chip class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cpu_chip() %>

      <%= cpu_chip(class: "h-6 w-6 text-gray-500") %>
  """
  def cpu_chip(assigns_or_opts \\ [])

  def cpu_chip(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M16.5 7.5h-9v9h9v-9z"/>
      <path fill-rule="evenodd" d="M8.25 2.25A.75.75 0 019 3v.75h2.25V3a.75.75 0 011.5 0v.75H15V3a.75.75 0 011.5 0v.75h.75a3 3 0 013 3v.75H21A.75.75 0 0121 9h-.75v2.25H21a.75.75 0 010 1.5h-.75V15H21a.75.75 0 010 1.5h-.75v.75a3 3 0 01-3 3h-.75V21a.75.75 0 01-1.5 0v-.75h-2.25V21a.75.75 0 01-1.5 0v-.75H9V21a.75.75 0 01-1.5 0v-.75h-.75a3 3 0 01-3-3v-.75H3A.75.75 0 013 15h.75v-2.25H3a.75.75 0 010-1.5h.75V9H3a.75.75 0 010-1.5h.75v-.75a3 3 0 013-3h.75V3a.75.75 0 01.75-.75zM6 6.75A.75.75 0 016.75 6h10.5a.75.75 0 01.75.75v10.5a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V6.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def cpu_chip(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M16.5 7.5h-9v9h9v-9z\"/>\n  <path fill-rule=\"evenodd\" d=\"M8.25 2.25A.75.75 0 019 3v.75h2.25V3a.75.75 0 011.5 0v.75H15V3a.75.75 0 011.5 0v.75h.75a3 3 0 013 3v.75H21A.75.75 0 0121 9h-.75v2.25H21a.75.75 0 010 1.5h-.75V15H21a.75.75 0 010 1.5h-.75v.75a3 3 0 01-3 3h-.75V21a.75.75 0 01-1.5 0v-.75h-2.25V21a.75.75 0 01-1.5 0v-.75H9V21a.75.75 0 01-1.5 0v-.75h-.75a3 3 0 01-3-3v-.75H3A.75.75 0 013 15h.75v-2.25H3a.75.75 0 010-1.5h.75V9H3a.75.75 0 010-1.5h.75v-.75a3 3 0 013-3h.75V3a.75.75 0 01.75-.75zM6 6.75A.75.75 0 016.75 6h10.5a.75.75 0 01.75.75v10.5a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V6.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/credit-card.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.credit_card />

      <.credit_card class="h-6 w-6 text-gray-500" />

  or as a function

      <%= credit_card() %>

      <%= credit_card(class: "h-6 w-6 text-gray-500") %>
  """
  def credit_card(assigns_or_opts \\ [])

  def credit_card(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M4.5 3.75a3 3 0 00-3 3v.75h21v-.75a3 3 0 00-3-3h-15z"/>
      <path fill-rule="evenodd" d="M22.5 9.75h-21v7.5a3 3 0 003 3h15a3 3 0 003-3v-7.5zm-18 3.75a.75.75 0 01.75-.75h6a.75.75 0 010 1.5h-6a.75.75 0 01-.75-.75zm.75 2.25a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def credit_card(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M4.5 3.75a3 3 0 00-3 3v.75h21v-.75a3 3 0 00-3-3h-15z\"/>\n  <path fill-rule=\"evenodd\" d=\"M22.5 9.75h-21v7.5a3 3 0 003 3h15a3 3 0 003-3v-7.5zm-18 3.75a.75.75 0 01.75-.75h6a.75.75 0 010 1.5h-6a.75.75 0 01-.75-.75zm.75 2.25a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cube.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cube />

      <.cube class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cube() %>

      <%= cube(class: "h-6 w-6 text-gray-500") %>
  """
  def cube(assigns_or_opts \\ [])

  def cube(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M12.378 1.602a.75.75 0 00-.756 0L3 6.632l9 5.25 9-5.25-8.622-5.03zM21.75 7.93l-9 5.25v9l8.628-5.032a.75.75 0 00.372-.648V7.93zM11.25 22.18v-9l-9-5.25v8.57a.75.75 0 00.372.648l8.628 5.033z"/>
    </svg>
    """
  end

  def cube(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M12.378 1.602a.75.75 0 00-.756 0L3 6.632l9 5.25 9-5.25-8.622-5.03zM21.75 7.93l-9 5.25v9l8.628-5.032a.75.75 0 00.372-.648V7.93zM11.25 22.18v-9l-9-5.25v8.57a.75.75 0 00.372.648l8.628 5.033z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-dollar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_dollar />

      <.currency_dollar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_dollar() %>

      <%= currency_dollar(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_dollar(assigns_or_opts \\ [])

  def currency_dollar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M10.464 8.746c.227-.18.497-.311.786-.394v2.795a2.252 2.252 0 01-.786-.393c-.394-.313-.546-.681-.546-1.004 0-.323.152-.691.546-1.004zM12.75 15.662v-2.824c.347.085.664.228.921.421.427.32.579.686.579.991 0 .305-.152.671-.579.991a2.534 2.534 0 01-.921.42z"/>
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM12.75 6a.75.75 0 00-1.5 0v.816a3.836 3.836 0 00-1.72.756c-.712.566-1.112 1.35-1.112 2.178 0 .829.4 1.612 1.113 2.178.502.4 1.102.647 1.719.756v2.978a2.536 2.536 0 01-.921-.421l-.879-.66a.75.75 0 00-.9 1.2l.879.66c.533.4 1.169.645 1.821.75V18a.75.75 0 001.5 0v-.81a4.124 4.124 0 001.821-.749c.745-.559 1.179-1.344 1.179-2.191 0-.847-.434-1.632-1.179-2.191a4.122 4.122 0 00-1.821-.75V8.354c.29.082.559.213.786.393l.415.33a.75.75 0 00.933-1.175l-.415-.33a3.836 3.836 0 00-1.719-.755V6z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def currency_dollar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M10.464 8.746c.227-.18.497-.311.786-.394v2.795a2.252 2.252 0 01-.786-.393c-.394-.313-.546-.681-.546-1.004 0-.323.152-.691.546-1.004zM12.75 15.662v-2.824c.347.085.664.228.921.421.427.32.579.686.579.991 0 .305-.152.671-.579.991a2.534 2.534 0 01-.921.42z\"/>\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM12.75 6a.75.75 0 00-1.5 0v.816a3.836 3.836 0 00-1.72.756c-.712.566-1.112 1.35-1.112 2.178 0 .829.4 1.612 1.113 2.178.502.4 1.102.647 1.719.756v2.978a2.536 2.536 0 01-.921-.421l-.879-.66a.75.75 0 00-.9 1.2l.879.66c.533.4 1.169.645 1.821.75V18a.75.75 0 001.5 0v-.81a4.124 4.124 0 001.821-.749c.745-.559 1.179-1.344 1.179-2.191 0-.847-.434-1.632-1.179-2.191a4.122 4.122 0 00-1.821-.75V8.354c.29.082.559.213.786.393l.415.33a.75.75 0 00.933-1.175l-.415-.33a3.836 3.836 0 00-1.719-.755V6z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-euro.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_euro />

      <.currency_euro class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_euro() %>

      <%= currency_euro(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_euro(assigns_or_opts \\ [])

  def currency_euro(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-1.902 7.098a3.75 3.75 0 013.903-.884.75.75 0 10.498-1.415A5.25 5.25 0 008.005 9.75H7.5a.75.75 0 000 1.5h.054a5.281 5.281 0 000 1.5H7.5a.75.75 0 000 1.5h.505a5.25 5.25 0 006.494 2.701.75.75 0 00-.498-1.415 3.75 3.75 0 01-4.252-1.286h3.001a.75.75 0 000-1.5H9.075a3.77 3.77 0 010-1.5h3.675a.75.75 0 000-1.5h-3c.105-.14.221-.274.348-.402z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def currency_euro(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-1.902 7.098a3.75 3.75 0 013.903-.884.75.75 0 10.498-1.415A5.25 5.25 0 008.005 9.75H7.5a.75.75 0 000 1.5h.054a5.281 5.281 0 000 1.5H7.5a.75.75 0 000 1.5h.505a5.25 5.25 0 006.494 2.701.75.75 0 00-.498-1.415 3.75 3.75 0 01-4.252-1.286h3.001a.75.75 0 000-1.5H9.075a3.77 3.77 0 010-1.5h3.675a.75.75 0 000-1.5h-3c.105-.14.221-.274.348-.402z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-pound.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_pound />

      <.currency_pound class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_pound() %>

      <%= currency_pound(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_pound(assigns_or_opts \\ [])

  def currency_pound(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM9.763 9.51a2.25 2.25 0 013.828-1.351.75.75 0 001.06-1.06 3.75 3.75 0 00-6.38 2.252c-.033.307 0 .595.032.822l.154 1.077H8.25a.75.75 0 000 1.5h.421l.138.964a3.75 3.75 0 01-.358 2.208l-.122.242a.75.75 0 00.908 1.047l1.539-.512a1.5 1.5 0 01.948 0l.655.218a3 3 0 002.29-.163l.666-.333a.75.75 0 10-.67-1.342l-.667.333a1.5 1.5 0 01-1.145.082l-.654-.218a3 3 0 00-1.898 0l-.06.02a5.25 5.25 0 00.053-1.794l-.108-.752H12a.75.75 0 000-1.5H9.972l-.184-1.29a1.863 1.863 0 01-.025-.45z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def currency_pound(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM9.763 9.51a2.25 2.25 0 013.828-1.351.75.75 0 001.06-1.06 3.75 3.75 0 00-6.38 2.252c-.033.307 0 .595.032.822l.154 1.077H8.25a.75.75 0 000 1.5h.421l.138.964a3.75 3.75 0 01-.358 2.208l-.122.242a.75.75 0 00.908 1.047l1.539-.512a1.5 1.5 0 01.948 0l.655.218a3 3 0 002.29-.163l.666-.333a.75.75 0 10-.67-1.342l-.667.333a1.5 1.5 0 01-1.145.082l-.654-.218a3 3 0 00-1.898 0l-.06.02a5.25 5.25 0 00.053-1.794l-.108-.752H12a.75.75 0 000-1.5H9.972l-.184-1.29a1.863 1.863 0 01-.025-.45z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-rupee.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_rupee />

      <.currency_rupee class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_rupee() %>

      <%= currency_rupee(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_rupee(assigns_or_opts \\ [])

  def currency_rupee(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM9 7.5A.75.75 0 009 9h1.5c.98 0 1.813.626 2.122 1.5H9A.75.75 0 009 12h3.622a2.251 2.251 0 01-2.122 1.5H9a.75.75 0 00-.53 1.28l3 3a.75.75 0 101.06-1.06L10.8 14.988A3.752 3.752 0 0014.175 12H15a.75.75 0 000-1.5h-.825A3.733 3.733 0 0013.5 9H15a.75.75 0 000-1.5H9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def currency_rupee(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM9 7.5A.75.75 0 009 9h1.5c.98 0 1.813.626 2.122 1.5H9A.75.75 0 009 12h3.622a2.251 2.251 0 01-2.122 1.5H9a.75.75 0 00-.53 1.28l3 3a.75.75 0 101.06-1.06L10.8 14.988A3.752 3.752 0 0014.175 12H15a.75.75 0 000-1.5h-.825A3.733 3.733 0 0013.5 9H15a.75.75 0 000-1.5H9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-yen.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_yen />

      <.currency_yen class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_yen() %>

      <%= currency_yen(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_yen(assigns_or_opts \\ [])

  def currency_yen(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM9.624 7.084a.75.75 0 00-1.248.832l2.223 3.334H9a.75.75 0 000 1.5h2.25v1.5H9a.75.75 0 000 1.5h2.25v1.5a.75.75 0 001.5 0v-1.5H15a.75.75 0 000-1.5h-2.25v-1.5H15a.75.75 0 000-1.5h-1.599l2.223-3.334a.75.75 0 10-1.248-.832L12 10.648 9.624 7.084z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def currency_yen(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM9.624 7.084a.75.75 0 00-1.248.832l2.223 3.334H9a.75.75 0 000 1.5h2.25v1.5H9a.75.75 0 000 1.5h2.25v1.5a.75.75 0 001.5 0v-1.5H15a.75.75 0 000-1.5h-2.25v-1.5H15a.75.75 0 000-1.5h-1.599l2.223-3.334a.75.75 0 10-1.248-.832L12 10.648 9.624 7.084z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cursor-arrow-rays.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cursor_arrow_rays />

      <.cursor_arrow_rays class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cursor_arrow_rays() %>

      <%= cursor_arrow_rays(class: "h-6 w-6 text-gray-500") %>
  """
  def cursor_arrow_rays(assigns_or_opts \\ [])

  def cursor_arrow_rays(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 1.5a.75.75 0 01.75.75V4.5a.75.75 0 01-1.5 0V2.25A.75.75 0 0112 1.5zM5.636 4.136a.75.75 0 011.06 0l1.592 1.591a.75.75 0 01-1.061 1.06l-1.591-1.59a.75.75 0 010-1.061zm12.728 0a.75.75 0 010 1.06l-1.591 1.592a.75.75 0 01-1.06-1.061l1.59-1.591a.75.75 0 011.061 0zm-6.816 4.496a.75.75 0 01.82.311l5.228 7.917a.75.75 0 01-.777 1.148l-2.097-.43 1.045 3.9a.75.75 0 01-1.45.388l-1.044-3.899-1.601 1.42a.75.75 0 01-1.247-.606l.569-9.47a.75.75 0 01.554-.68zM3 10.5a.75.75 0 01.75-.75H6a.75.75 0 010 1.5H3.75A.75.75 0 013 10.5zm14.25 0a.75.75 0 01.75-.75h2.25a.75.75 0 010 1.5H18a.75.75 0 01-.75-.75zm-8.962 3.712a.75.75 0 010 1.061l-1.591 1.591a.75.75 0 11-1.061-1.06l1.591-1.592a.75.75 0 011.06 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def cursor_arrow_rays(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 1.5a.75.75 0 01.75.75V4.5a.75.75 0 01-1.5 0V2.25A.75.75 0 0112 1.5zM5.636 4.136a.75.75 0 011.06 0l1.592 1.591a.75.75 0 01-1.061 1.06l-1.591-1.59a.75.75 0 010-1.061zm12.728 0a.75.75 0 010 1.06l-1.591 1.592a.75.75 0 01-1.06-1.061l1.59-1.591a.75.75 0 011.061 0zm-6.816 4.496a.75.75 0 01.82.311l5.228 7.917a.75.75 0 01-.777 1.148l-2.097-.43 1.045 3.9a.75.75 0 01-1.45.388l-1.044-3.899-1.601 1.42a.75.75 0 01-1.247-.606l.569-9.47a.75.75 0 01.554-.68zM3 10.5a.75.75 0 01.75-.75H6a.75.75 0 010 1.5H3.75A.75.75 0 013 10.5zm14.25 0a.75.75 0 01.75-.75h2.25a.75.75 0 010 1.5H18a.75.75 0 01-.75-.75zm-8.962 3.712a.75.75 0 010 1.061l-1.591 1.591a.75.75 0 11-1.061-1.06l1.591-1.592a.75.75 0 011.06 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cursor-arrow-ripple.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cursor_arrow_ripple />

      <.cursor_arrow_ripple class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cursor_arrow_ripple() %>

      <%= cursor_arrow_ripple(class: "h-6 w-6 text-gray-500") %>
  """
  def cursor_arrow_ripple(assigns_or_opts \\ [])

  def cursor_arrow_ripple(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M17.303 5.197A7.5 7.5 0 006.697 15.803a.75.75 0 01-1.061 1.061A9 9 0 1121 10.5a.75.75 0 01-1.5 0c0-1.92-.732-3.839-2.197-5.303zm-2.121 2.121a4.5 4.5 0 00-6.364 6.364.75.75 0 11-1.06 1.06A6 6 0 1118 10.5a.75.75 0 01-1.5 0c0-1.153-.44-2.303-1.318-3.182zm-3.634 1.314a.75.75 0 01.82.311l5.228 7.917a.75.75 0 01-.777 1.148l-2.097-.43 1.045 3.9a.75.75 0 01-1.45.388l-1.044-3.899-1.601 1.42a.75.75 0 01-1.247-.606l.569-9.47a.75.75 0 01.554-.68z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def cursor_arrow_ripple(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M17.303 5.197A7.5 7.5 0 006.697 15.803a.75.75 0 01-1.061 1.061A9 9 0 1121 10.5a.75.75 0 01-1.5 0c0-1.92-.732-3.839-2.197-5.303zm-2.121 2.121a4.5 4.5 0 00-6.364 6.364.75.75 0 11-1.06 1.06A6 6 0 1118 10.5a.75.75 0 01-1.5 0c0-1.153-.44-2.303-1.318-3.182zm-3.634 1.314a.75.75 0 01.82.311l5.228 7.917a.75.75 0 01-.777 1.148l-2.097-.43 1.045 3.9a.75.75 0 01-1.45.388l-1.044-3.899-1.601 1.42a.75.75 0 01-1.247-.606l.569-9.47a.75.75 0 01.554-.68z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/device-phone-mobile.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.device_phone_mobile />

      <.device_phone_mobile class="h-6 w-6 text-gray-500" />

  or as a function

      <%= device_phone_mobile() %>

      <%= device_phone_mobile(class: "h-6 w-6 text-gray-500") %>
  """
  def device_phone_mobile(assigns_or_opts \\ [])

  def device_phone_mobile(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M10.5 18.75a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z"/>
      <path fill-rule="evenodd" d="M8.625.75A3.375 3.375 0 005.25 4.125v15.75a3.375 3.375 0 003.375 3.375h6.75a3.375 3.375 0 003.375-3.375V4.125A3.375 3.375 0 0015.375.75h-6.75zM7.5 4.125C7.5 3.504 8.004 3 8.625 3H9.75v.375c0 .621.504 1.125 1.125 1.125h2.25c.621 0 1.125-.504 1.125-1.125V3h1.125c.621 0 1.125.504 1.125 1.125v15.75c0 .621-.504 1.125-1.125 1.125h-6.75A1.125 1.125 0 017.5 19.875V4.125z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def device_phone_mobile(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M10.5 18.75a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z\"/>\n  <path fill-rule=\"evenodd\" d=\"M8.625.75A3.375 3.375 0 005.25 4.125v15.75a3.375 3.375 0 003.375 3.375h6.75a3.375 3.375 0 003.375-3.375V4.125A3.375 3.375 0 0015.375.75h-6.75zM7.5 4.125C7.5 3.504 8.004 3 8.625 3H9.75v.375c0 .621.504 1.125 1.125 1.125h2.25c.621 0 1.125-.504 1.125-1.125V3h1.125c.621 0 1.125.504 1.125 1.125v15.75c0 .621-.504 1.125-1.125 1.125h-6.75A1.125 1.125 0 017.5 19.875V4.125z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/device-tablet.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.device_tablet />

      <.device_tablet class="h-6 w-6 text-gray-500" />

  or as a function

      <%= device_tablet() %>

      <%= device_tablet(class: "h-6 w-6 text-gray-500") %>
  """
  def device_tablet(assigns_or_opts \\ [])

  def device_tablet(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M10.5 18a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z"/>
      <path fill-rule="evenodd" d="M7.125 1.5A3.375 3.375 0 003.75 4.875v14.25A3.375 3.375 0 007.125 22.5h9.75a3.375 3.375 0 003.375-3.375V4.875A3.375 3.375 0 0016.875 1.5h-9.75zM6 4.875c0-.621.504-1.125 1.125-1.125h9.75c.621 0 1.125.504 1.125 1.125v14.25c0 .621-.504 1.125-1.125 1.125h-9.75A1.125 1.125 0 016 19.125V4.875z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def device_tablet(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M10.5 18a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z\"/>\n  <path fill-rule=\"evenodd\" d=\"M7.125 1.5A3.375 3.375 0 003.75 4.875v14.25A3.375 3.375 0 007.125 22.5h9.75a3.375 3.375 0 003.375-3.375V4.875A3.375 3.375 0 0016.875 1.5h-9.75zM6 4.875c0-.621.504-1.125 1.125-1.125h9.75c.621 0 1.125.504 1.125 1.125v14.25c0 .621-.504 1.125-1.125 1.125h-9.75A1.125 1.125 0 016 19.125V4.875z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_arrow_down />

      <.document_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_arrow_down() %>

      <%= document_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def document_arrow_down(assigns_or_opts \\ [])

  def document_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zm5.845 17.03a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V12a.75.75 0 00-1.5 0v4.19l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3z" clip-rule="evenodd"/>
      <path d="M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z"/>
    </svg>
    """
  end

  def document_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zm5.845 17.03a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V12a.75.75 0 00-1.5 0v4.19l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3z\" clip-rule=\"evenodd\"/>\n  <path d=\"M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-arrow-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_arrow_up />

      <.document_arrow_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_arrow_up() %>

      <%= document_arrow_up(class: "h-6 w-6 text-gray-500") %>
  """
  def document_arrow_up(assigns_or_opts \\ [])

  def document_arrow_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zm6.905 9.97a.75.75 0 00-1.06 0l-3 3a.75.75 0 101.06 1.06l1.72-1.72V18a.75.75 0 001.5 0v-4.19l1.72 1.72a.75.75 0 101.06-1.06l-3-3z" clip-rule="evenodd"/>
      <path d="M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z"/>
    </svg>
    """
  end

  def document_arrow_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zm6.905 9.97a.75.75 0 00-1.06 0l-3 3a.75.75 0 101.06 1.06l1.72-1.72V18a.75.75 0 001.5 0v-4.19l1.72 1.72a.75.75 0 101.06-1.06l-3-3z\" clip-rule=\"evenodd\"/>\n  <path d=\"M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-chart-bar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_chart_bar />

      <.document_chart_bar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_chart_bar() %>

      <%= document_chart_bar(class: "h-6 w-6 text-gray-500") %>
  """
  def document_chart_bar(assigns_or_opts \\ [])

  def document_chart_bar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zM9.75 17.25a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-.75zm2.25-3a.75.75 0 01.75.75v3a.75.75 0 01-1.5 0v-3a.75.75 0 01.75-.75zm3.75-1.5a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-5.25z" clip-rule="evenodd"/>
      <path d="M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z"/>
    </svg>
    """
  end

  def document_chart_bar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zM9.75 17.25a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-.75zm2.25-3a.75.75 0 01.75.75v3a.75.75 0 01-1.5 0v-3a.75.75 0 01.75-.75zm3.75-1.5a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-5.25z\" clip-rule=\"evenodd\"/>\n  <path d=\"M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-check.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_check />

      <.document_check class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_check() %>

      <%= document_check(class: "h-6 w-6 text-gray-500") %>
  """
  def document_check(assigns_or_opts \\ [])

  def document_check(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zm9.434 11.812a.75.75 0 10-.993-1.124 12.785 12.785 0 00-3.209 4.358L9.53 15.22a.75.75 0 00-1.06 1.06l2.135 2.136a.75.75 0 001.24-.289 11.264 11.264 0 013.214-4.815z" clip-rule="evenodd"/>
      <path d="M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z"/>
    </svg>
    """
  end

  def document_check(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zm9.434 11.812a.75.75 0 10-.993-1.124 12.785 12.785 0 00-3.209 4.358L9.53 15.22a.75.75 0 00-1.06 1.06l2.135 2.136a.75.75 0 001.24-.289 11.264 11.264 0 013.214-4.815z\" clip-rule=\"evenodd\"/>\n  <path d=\"M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-duplicate.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_duplicate />

      <.document_duplicate class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_duplicate() %>

      <%= document_duplicate(class: "h-6 w-6 text-gray-500") %>
  """
  def document_duplicate(assigns_or_opts \\ [])

  def document_duplicate(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M7.5 3.375c0-1.036.84-1.875 1.875-1.875h.375a3.75 3.75 0 013.75 3.75v1.875C13.5 8.161 14.34 9 15.375 9h1.875A3.75 3.75 0 0121 12.75v3.375C21 17.16 20.16 18 19.125 18h-9.75A1.875 1.875 0 017.5 16.125V3.375z"/>
      <path d="M15 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0017.25 7.5h-1.875A.375.375 0 0115 7.125V5.25zM4.875 6H6v10.125A3.375 3.375 0 009.375 19.5H16.5v1.125c0 1.035-.84 1.875-1.875 1.875h-9.75A1.875 1.875 0 013 20.625V7.875C3 6.839 3.84 6 4.875 6z"/>
    </svg>
    """
  end

  def document_duplicate(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M7.5 3.375c0-1.036.84-1.875 1.875-1.875h.375a3.75 3.75 0 013.75 3.75v1.875C13.5 8.161 14.34 9 15.375 9h1.875A3.75 3.75 0 0121 12.75v3.375C21 17.16 20.16 18 19.125 18h-9.75A1.875 1.875 0 017.5 16.125V3.375z\"/>\n  <path d=\"M15 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0017.25 7.5h-1.875A.375.375 0 0115 7.125V5.25zM4.875 6H6v10.125A3.375 3.375 0 009.375 19.5H16.5v1.125c0 1.035-.84 1.875-1.875 1.875h-9.75A1.875 1.875 0 013 20.625V7.875C3 6.839 3.84 6 4.875 6z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-magnifying-glass.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_magnifying_glass />

      <.document_magnifying_glass class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_magnifying_glass() %>

      <%= document_magnifying_glass(class: "h-6 w-6 text-gray-500") %>
  """
  def document_magnifying_glass(assigns_or_opts \\ [])

  def document_magnifying_glass(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M11.625 16.5a1.875 1.875 0 100-3.75 1.875 1.875 0 000 3.75z"/>
      <path fill-rule="evenodd" d="M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zm6 16.5c.66 0 1.277-.19 1.797-.518l1.048 1.048a.75.75 0 001.06-1.06l-1.047-1.048A3.375 3.375 0 1011.625 18z" clip-rule="evenodd"/>
      <path d="M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z"/>
    </svg>
    """
  end

  def document_magnifying_glass(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M11.625 16.5a1.875 1.875 0 100-3.75 1.875 1.875 0 000 3.75z\"/>\n  <path fill-rule=\"evenodd\" d=\"M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zm6 16.5c.66 0 1.277-.19 1.797-.518l1.048 1.048a.75.75 0 001.06-1.06l-1.047-1.048A3.375 3.375 0 1011.625 18z\" clip-rule=\"evenodd\"/>\n  <path d=\"M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_minus />

      <.document_minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_minus() %>

      <%= document_minus(class: "h-6 w-6 text-gray-500") %>
  """
  def document_minus(assigns_or_opts \\ [])

  def document_minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zM9.75 14.25a.75.75 0 000 1.5H15a.75.75 0 000-1.5H9.75z" clip-rule="evenodd"/>
      <path d="M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z"/>
    </svg>
    """
  end

  def document_minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zM9.75 14.25a.75.75 0 000 1.5H15a.75.75 0 000-1.5H9.75z\" clip-rule=\"evenodd\"/>\n  <path d=\"M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_plus />

      <.document_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_plus() %>

      <%= document_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def document_plus(assigns_or_opts \\ [])

  def document_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zM12.75 12a.75.75 0 00-1.5 0v2.25H9a.75.75 0 000 1.5h2.25V18a.75.75 0 001.5 0v-2.25H15a.75.75 0 000-1.5h-2.25V12z" clip-rule="evenodd"/>
      <path d="M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z"/>
    </svg>
    """
  end

  def document_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.625 1.5H9a3.75 3.75 0 013.75 3.75v1.875c0 1.036.84 1.875 1.875 1.875H16.5a3.75 3.75 0 013.75 3.75v7.875c0 1.035-.84 1.875-1.875 1.875H5.625a1.875 1.875 0 01-1.875-1.875V3.375c0-1.036.84-1.875 1.875-1.875zM12.75 12a.75.75 0 00-1.5 0v2.25H9a.75.75 0 000 1.5h2.25V18a.75.75 0 001.5 0v-2.25H15a.75.75 0 000-1.5h-2.25V12z\" clip-rule=\"evenodd\"/>\n  <path d=\"M14.25 5.25a5.23 5.23 0 00-1.279-3.434 9.768 9.768 0 016.963 6.963A5.23 5.23 0 0016.5 7.5h-1.875a.375.375 0 01-.375-.375V5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-text.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_text />

      <.document_text class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_text() %>

      <%= document_text(class: "h-6 w-6 text-gray-500") %>
  """
  def document_text(assigns_or_opts \\ [])

  def document_text(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.625 1.5c-1.036 0-1.875.84-1.875 1.875v17.25c0 1.035.84 1.875 1.875 1.875h12.75c1.035 0 1.875-.84 1.875-1.875V12.75A3.75 3.75 0 0016.5 9h-1.875a1.875 1.875 0 01-1.875-1.875V5.25A3.75 3.75 0 009 1.5H5.625zM7.5 15a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5A.75.75 0 017.5 15zm.75 2.25a.75.75 0 000 1.5H12a.75.75 0 000-1.5H8.25z" clip-rule="evenodd"/>
      <path d="M12.971 1.816A5.23 5.23 0 0114.25 5.25v1.875c0 .207.168.375.375.375H16.5a5.23 5.23 0 013.434 1.279 9.768 9.768 0 00-6.963-6.963z"/>
    </svg>
    """
  end

  def document_text(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.625 1.5c-1.036 0-1.875.84-1.875 1.875v17.25c0 1.035.84 1.875 1.875 1.875h12.75c1.035 0 1.875-.84 1.875-1.875V12.75A3.75 3.75 0 0016.5 9h-1.875a1.875 1.875 0 01-1.875-1.875V5.25A3.75 3.75 0 009 1.5H5.625zM7.5 15a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5A.75.75 0 017.5 15zm.75 2.25a.75.75 0 000 1.5H12a.75.75 0 000-1.5H8.25z\" clip-rule=\"evenodd\"/>\n  <path d=\"M12.971 1.816A5.23 5.23 0 0114.25 5.25v1.875c0 .207.168.375.375.375H16.5a5.23 5.23 0 013.434 1.279 9.768 9.768 0 00-6.963-6.963z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document />

      <.document class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document() %>

      <%= document(class: "h-6 w-6 text-gray-500") %>
  """
  def document(assigns_or_opts \\ [])

  def document(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M5.625 1.5c-1.036 0-1.875.84-1.875 1.875v17.25c0 1.035.84 1.875 1.875 1.875h12.75c1.035 0 1.875-.84 1.875-1.875V12.75A3.75 3.75 0 0016.5 9h-1.875a1.875 1.875 0 01-1.875-1.875V5.25A3.75 3.75 0 009 1.5H5.625z"/>
      <path d="M12.971 1.816A5.23 5.23 0 0114.25 5.25v1.875c0 .207.168.375.375.375H16.5a5.23 5.23 0 013.434 1.279 9.768 9.768 0 00-6.963-6.963z"/>
    </svg>
    """
  end

  def document(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M5.625 1.5c-1.036 0-1.875.84-1.875 1.875v17.25c0 1.035.84 1.875 1.875 1.875h12.75c1.035 0 1.875-.84 1.875-1.875V12.75A3.75 3.75 0 0016.5 9h-1.875a1.875 1.875 0 01-1.875-1.875V5.25A3.75 3.75 0 009 1.5H5.625z\"/>\n  <path d=\"M12.971 1.816A5.23 5.23 0 0114.25 5.25v1.875c0 .207.168.375.375.375H16.5a5.23 5.23 0 013.434 1.279 9.768 9.768 0 00-6.963-6.963z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/ellipsis-horizontal-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.ellipsis_horizontal_circle />

      <.ellipsis_horizontal_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= ellipsis_horizontal_circle() %>

      <%= ellipsis_horizontal_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def ellipsis_horizontal_circle(assigns_or_opts \\ [])

  def ellipsis_horizontal_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm0 8.625a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25zM15.375 12a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zM7.5 10.875a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def ellipsis_horizontal_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm0 8.625a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25zM15.375 12a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zM7.5 10.875a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/ellipsis-horizontal.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.ellipsis_horizontal />

      <.ellipsis_horizontal class="h-6 w-6 text-gray-500" />

  or as a function

      <%= ellipsis_horizontal() %>

      <%= ellipsis_horizontal(class: "h-6 w-6 text-gray-500") %>
  """
  def ellipsis_horizontal(assigns_or_opts \\ [])

  def ellipsis_horizontal(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.5 12a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm6 0a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm6 0a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def ellipsis_horizontal(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.5 12a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm6 0a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm6 0a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/ellipsis-vertical.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.ellipsis_vertical />

      <.ellipsis_vertical class="h-6 w-6 text-gray-500" />

  or as a function

      <%= ellipsis_vertical() %>

      <%= ellipsis_vertical(class: "h-6 w-6 text-gray-500") %>
  """
  def ellipsis_vertical(assigns_or_opts \\ [])

  def ellipsis_vertical(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M10.5 6a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm0 6a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm0 6a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def ellipsis_vertical(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M10.5 6a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm0 6a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zm0 6a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/envelope-open.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.envelope_open />

      <.envelope_open class="h-6 w-6 text-gray-500" />

  or as a function

      <%= envelope_open() %>

      <%= envelope_open(class: "h-6 w-6 text-gray-500") %>
  """
  def envelope_open(assigns_or_opts \\ [])

  def envelope_open(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M19.5 22.5a3 3 0 003-3v-8.174l-6.879 4.022 3.485 1.876a.75.75 0 01-.712 1.321l-5.683-3.06a1.5 1.5 0 00-1.422 0l-5.683 3.06a.75.75 0 01-.712-1.32l3.485-1.877L1.5 11.326V19.5a3 3 0 003 3h15z"/>
      <path d="M1.5 9.589v-.745a3 3 0 011.578-2.641l7.5-4.039a3 3 0 012.844 0l7.5 4.039A3 3 0 0122.5 8.844v.745l-8.426 4.926-.652-.35a3 3 0 00-2.844 0l-.652.35L1.5 9.59z"/>
    </svg>
    """
  end

  def envelope_open(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M19.5 22.5a3 3 0 003-3v-8.174l-6.879 4.022 3.485 1.876a.75.75 0 01-.712 1.321l-5.683-3.06a1.5 1.5 0 00-1.422 0l-5.683 3.06a.75.75 0 01-.712-1.32l3.485-1.877L1.5 11.326V19.5a3 3 0 003 3h15z\"/>\n  <path d=\"M1.5 9.589v-.745a3 3 0 011.578-2.641l7.5-4.039a3 3 0 012.844 0l7.5 4.039A3 3 0 0122.5 8.844v.745l-8.426 4.926-.652-.35a3 3 0 00-2.844 0l-.652.35L1.5 9.59z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/envelope.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.envelope />

      <.envelope class="h-6 w-6 text-gray-500" />

  or as a function

      <%= envelope() %>

      <%= envelope(class: "h-6 w-6 text-gray-500") %>
  """
  def envelope(assigns_or_opts \\ [])

  def envelope(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M1.5 8.67v8.58a3 3 0 003 3h15a3 3 0 003-3V8.67l-8.928 5.493a3 3 0 01-3.144 0L1.5 8.67z"/>
      <path d="M22.5 6.908V6.75a3 3 0 00-3-3h-15a3 3 0 00-3 3v.158l9.714 5.978a1.5 1.5 0 001.572 0L22.5 6.908z"/>
    </svg>
    """
  end

  def envelope(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M1.5 8.67v8.58a3 3 0 003 3h15a3 3 0 003-3V8.67l-8.928 5.493a3 3 0 01-3.144 0L1.5 8.67z\"/>\n  <path d=\"M22.5 6.908V6.75a3 3 0 00-3-3h-15a3 3 0 00-3 3v.158l9.714 5.978a1.5 1.5 0 001.572 0L22.5 6.908z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/exclaimation-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.exclaimation_circle />

      <.exclaimation_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= exclaimation_circle() %>

      <%= exclaimation_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def exclaimation_circle(assigns_or_opts \\ [])

  def exclaimation_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 12c0-5.385 4.365-9.75 9.75-9.75s9.75 4.365 9.75 9.75-4.365 9.75-9.75 9.75S2.25 17.385 2.25 12zM12 8.25a.75.75 0 01.75.75v3.75a.75.75 0 01-1.5 0V9a.75.75 0 01.75-.75zm0 8.25a.75.75 0 100-1.5.75.75 0 000 1.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def exclaimation_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 12c0-5.385 4.365-9.75 9.75-9.75s9.75 4.365 9.75 9.75-4.365 9.75-9.75 9.75S2.25 17.385 2.25 12zM12 8.25a.75.75 0 01.75.75v3.75a.75.75 0 01-1.5 0V9a.75.75 0 01.75-.75zm0 8.25a.75.75 0 100-1.5.75.75 0 000 1.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/exclaimation-triangle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.exclaimation_triangle />

      <.exclaimation_triangle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= exclaimation_triangle() %>

      <%= exclaimation_triangle(class: "h-6 w-6 text-gray-500") %>
  """
  def exclaimation_triangle(assigns_or_opts \\ [])

  def exclaimation_triangle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M9.401 4.504c1.155-2.001 4.043-2.001 5.197 0l7.355 12.747c1.154 2-.29 4.5-2.599 4.5H4.645c-2.309 0-3.752-2.5-2.598-4.5L9.4 4.504zM12 9.75a.75.75 0 01.75.75v3.75a.75.75 0 01-1.5 0V10.5a.75.75 0 01.75-.75zM12 18a.75.75 0 100-1.5.75.75 0 000 1.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def exclaimation_triangle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M9.401 4.504c1.155-2.001 4.043-2.001 5.197 0l7.355 12.747c1.154 2-.29 4.5-2.599 4.5H4.645c-2.309 0-3.752-2.5-2.598-4.5L9.4 4.504zM12 9.75a.75.75 0 01.75.75v3.75a.75.75 0 01-1.5 0V10.5a.75.75 0 01.75-.75zM12 18a.75.75 0 100-1.5.75.75 0 000 1.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/eye-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.eye_slash />

      <.eye_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= eye_slash() %>

      <%= eye_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def eye_slash(assigns_or_opts \\ [])

  def eye_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM22.676 12.553a11.249 11.249 0 01-2.631 4.31l-3.099-3.099a5.25 5.25 0 00-6.71-6.71L7.759 4.577a11.217 11.217 0 014.242-.827c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113z"/>
      <path d="M15.75 12c0 .18-.013.357-.037.53l-4.244-4.243A3.75 3.75 0 0115.75 12zM12.53 15.713l-4.243-4.244a3.75 3.75 0 004.243 4.243z"/>
      <path d="M6.75 12c0-.619.107-1.213.304-1.764l-3.1-3.1a11.25 11.25 0 00-2.63 4.31c-.12.362-.12.752 0 1.114 1.489 4.467 5.704 7.69 10.675 7.69 1.5 0 2.933-.294 4.242-.827l-2.477-2.477A5.25 5.25 0 016.75 12z"/>
    </svg>
    """
  end

  def eye_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM22.676 12.553a11.249 11.249 0 01-2.631 4.31l-3.099-3.099a5.25 5.25 0 00-6.71-6.71L7.759 4.577a11.217 11.217 0 014.242-.827c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113z\"/>\n  <path d=\"M15.75 12c0 .18-.013.357-.037.53l-4.244-4.243A3.75 3.75 0 0115.75 12zM12.53 15.713l-4.243-4.244a3.75 3.75 0 004.243 4.243z\"/>\n  <path d=\"M6.75 12c0-.619.107-1.213.304-1.764l-3.1-3.1a11.25 11.25 0 00-2.63 4.31c-.12.362-.12.752 0 1.114 1.489 4.467 5.704 7.69 10.675 7.69 1.5 0 2.933-.294 4.242-.827l-2.477-2.477A5.25 5.25 0 016.75 12z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/eye.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.eye />

      <.eye class="h-6 w-6 text-gray-500" />

  or as a function

      <%= eye() %>

      <%= eye(class: "h-6 w-6 text-gray-500") %>
  """
  def eye(assigns_or_opts \\ [])

  def eye(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 15a3 3 0 100-6 3 3 0 000 6z"/>
      <path fill-rule="evenodd" d="M1.323 11.447C2.811 6.976 7.028 3.75 12.001 3.75c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113-1.487 4.471-5.705 7.697-10.677 7.697-4.97 0-9.186-3.223-10.675-7.69a1.762 1.762 0 010-1.113zM17.25 12a5.25 5.25 0 11-10.5 0 5.25 5.25 0 0110.5 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def eye(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M12 15a3 3 0 100-6 3 3 0 000 6z\"/>\n  <path fill-rule=\"evenodd\" d=\"M1.323 11.447C2.811 6.976 7.028 3.75 12.001 3.75c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113-1.487 4.471-5.705 7.697-10.677 7.697-4.97 0-9.186-3.223-10.675-7.69a1.762 1.762 0 010-1.113zM17.25 12a5.25 5.25 0 11-10.5 0 5.25 5.25 0 0110.5 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/face-frown.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.face_frown />

      <.face_frown class="h-6 w-6 text-gray-500" />

  or as a function

      <%= face_frown() %>

      <%= face_frown(class: "h-6 w-6 text-gray-500") %>
  """
  def face_frown(assigns_or_opts \\ [])

  def face_frown(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-2.625 6c-.54 0-.828.419-.936.634a1.96 1.96 0 00-.189.866c0 .298.059.605.189.866.108.215.395.634.936.634.54 0 .828-.419.936-.634.13-.26.189-.568.189-.866 0-.298-.059-.605-.189-.866-.108-.215-.395-.634-.936-.634zm4.314.634c.108-.215.395-.634.936-.634.54 0 .828.419.936.634.13.26.189.568.189.866 0 .298-.059.605-.189.866-.108.215-.395.634-.936.634-.54 0-.828-.419-.936-.634a1.96 1.96 0 01-.189-.866c0-.298.059-.605.189-.866zm-4.34 7.964a.75.75 0 01-1.061-1.06 5.236 5.236 0 013.73-1.538 5.236 5.236 0 013.695 1.538.75.75 0 11-1.061 1.06 3.736 3.736 0 00-2.639-1.098 3.736 3.736 0 00-2.664 1.098z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def face_frown(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-2.625 6c-.54 0-.828.419-.936.634a1.96 1.96 0 00-.189.866c0 .298.059.605.189.866.108.215.395.634.936.634.54 0 .828-.419.936-.634.13-.26.189-.568.189-.866 0-.298-.059-.605-.189-.866-.108-.215-.395-.634-.936-.634zm4.314.634c.108-.215.395-.634.936-.634.54 0 .828.419.936.634.13.26.189.568.189.866 0 .298-.059.605-.189.866-.108.215-.395.634-.936.634-.54 0-.828-.419-.936-.634a1.96 1.96 0 01-.189-.866c0-.298.059-.605.189-.866zm-4.34 7.964a.75.75 0 01-1.061-1.06 5.236 5.236 0 013.73-1.538 5.236 5.236 0 013.695 1.538.75.75 0 11-1.061 1.06 3.736 3.736 0 00-2.639-1.098 3.736 3.736 0 00-2.664 1.098z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/face-smile.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.face_smile />

      <.face_smile class="h-6 w-6 text-gray-500" />

  or as a function

      <%= face_smile() %>

      <%= face_smile(class: "h-6 w-6 text-gray-500") %>
  """
  def face_smile(assigns_or_opts \\ [])

  def face_smile(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-2.625 6c-.54 0-.828.419-.936.634a1.96 1.96 0 00-.189.866c0 .298.059.605.189.866.108.215.395.634.936.634.54 0 .828-.419.936-.634.13-.26.189-.568.189-.866 0-.298-.059-.605-.189-.866-.108-.215-.395-.634-.936-.634zm4.314.634c.108-.215.395-.634.936-.634.54 0 .828.419.936.634.13.26.189.568.189.866 0 .298-.059.605-.189.866-.108.215-.395.634-.936.634-.54 0-.828-.419-.936-.634a1.96 1.96 0 01-.189-.866c0-.298.059-.605.189-.866zm2.023 6.828a.75.75 0 10-1.06-1.06 3.75 3.75 0 01-5.304 0 .75.75 0 00-1.06 1.06 5.25 5.25 0 007.424 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def face_smile(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-2.625 6c-.54 0-.828.419-.936.634a1.96 1.96 0 00-.189.866c0 .298.059.605.189.866.108.215.395.634.936.634.54 0 .828-.419.936-.634.13-.26.189-.568.189-.866 0-.298-.059-.605-.189-.866-.108-.215-.395-.634-.936-.634zm4.314.634c.108-.215.395-.634.936-.634.54 0 .828.419.936.634.13.26.189.568.189.866 0 .298-.059.605-.189.866-.108.215-.395.634-.936.634-.54 0-.828-.419-.936-.634a1.96 1.96 0 01-.189-.866c0-.298.059-.605.189-.866zm2.023 6.828a.75.75 0 10-1.06-1.06 3.75 3.75 0 01-5.304 0 .75.75 0 00-1.06 1.06 5.25 5.25 0 007.424 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/film.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.film />

      <.film class="h-6 w-6 text-gray-500" />

  or as a function

      <%= film() %>

      <%= film(class: "h-6 w-6 text-gray-500") %>
  """
  def film(assigns_or_opts \\ [])

  def film(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M1.5 5.625c0-1.036.84-1.875 1.875-1.875h17.25c1.035 0 1.875.84 1.875 1.875v12.75c0 1.035-.84 1.875-1.875 1.875H3.375A1.875 1.875 0 011.5 18.375V5.625zm1.5 0v1.5c0 .207.168.375.375.375h1.5a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-1.5A.375.375 0 003 5.625zm16.125-.375a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5A.375.375 0 0021 7.125v-1.5a.375.375 0 00-.375-.375h-1.5zM21 9.375A.375.375 0 0020.625 9h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5a.375.375 0 00.375-.375v-1.5zm0 3.75a.375.375 0 00-.375-.375h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5a.375.375 0 00.375-.375v-1.5zm0 3.75a.375.375 0 00-.375-.375h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5a.375.375 0 00.375-.375v-1.5zM4.875 18.75a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5zM3.375 15h1.5a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375zm0-3.75h1.5a.375.375 0 00.375-.375v-1.5A.375.375 0 004.875 9h-1.5A.375.375 0 003 9.375v1.5c0 .207.168.375.375.375zm4.125 0a.75.75 0 000 1.5h9a.75.75 0 000-1.5h-9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def film(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M1.5 5.625c0-1.036.84-1.875 1.875-1.875h17.25c1.035 0 1.875.84 1.875 1.875v12.75c0 1.035-.84 1.875-1.875 1.875H3.375A1.875 1.875 0 011.5 18.375V5.625zm1.5 0v1.5c0 .207.168.375.375.375h1.5a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-1.5A.375.375 0 003 5.625zm16.125-.375a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5A.375.375 0 0021 7.125v-1.5a.375.375 0 00-.375-.375h-1.5zM21 9.375A.375.375 0 0020.625 9h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5a.375.375 0 00.375-.375v-1.5zm0 3.75a.375.375 0 00-.375-.375h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5a.375.375 0 00.375-.375v-1.5zm0 3.75a.375.375 0 00-.375-.375h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5a.375.375 0 00.375-.375v-1.5zM4.875 18.75a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h1.5zM3.375 15h1.5a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-1.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375zm0-3.75h1.5a.375.375 0 00.375-.375v-1.5A.375.375 0 004.875 9h-1.5A.375.375 0 003 9.375v1.5c0 .207.168.375.375.375zm4.125 0a.75.75 0 000 1.5h9a.75.75 0 000-1.5h-9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/finger-print.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.finger_print />

      <.finger_print class="h-6 w-6 text-gray-500" />

  or as a function

      <%= finger_print() %>

      <%= finger_print(class: "h-6 w-6 text-gray-500") %>
  """
  def finger_print(assigns_or_opts \\ [])

  def finger_print(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 3.75a6.715 6.715 0 00-3.722 1.118.75.75 0 11-.828-1.25 8.25 8.25 0 0112.8 6.883c0 3.014-.574 5.897-1.62 8.543a.75.75 0 01-1.395-.551A21.69 21.69 0 0018.75 10.5 6.75 6.75 0 0012 3.75zM6.157 5.739a.75.75 0 01.21 1.04A6.715 6.715 0 005.25 10.5c0 1.613-.463 3.12-1.265 4.393a.75.75 0 01-1.27-.8A6.715 6.715 0 003.75 10.5c0-1.68.503-3.246 1.367-4.55a.75.75 0 011.04-.211zM12 7.5a3 3 0 00-3 3c0 3.1-1.176 5.927-3.105 8.056a.75.75 0 11-1.112-1.008A10.459 10.459 0 007.5 10.5a4.5 4.5 0 119 0c0 .547-.022 1.09-.067 1.626a.75.75 0 01-1.495-.123c.041-.495.062-.996.062-1.503a3 3 0 00-3-3zm0 2.25a.75.75 0 01.75.75A15.69 15.69 0 018.97 20.738a.75.75 0 01-1.14-.975A14.19 14.19 0 0011.25 10.5a.75.75 0 01.75-.75zm3.239 5.183a.75.75 0 01.515.927 19.415 19.415 0 01-2.585 5.544.75.75 0 11-1.243-.84 17.912 17.912 0 002.386-5.116.75.75 0 01.927-.515z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def finger_print(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 3.75a6.715 6.715 0 00-3.722 1.118.75.75 0 11-.828-1.25 8.25 8.25 0 0112.8 6.883c0 3.014-.574 5.897-1.62 8.543a.75.75 0 01-1.395-.551A21.69 21.69 0 0018.75 10.5 6.75 6.75 0 0012 3.75zM6.157 5.739a.75.75 0 01.21 1.04A6.715 6.715 0 005.25 10.5c0 1.613-.463 3.12-1.265 4.393a.75.75 0 01-1.27-.8A6.715 6.715 0 003.75 10.5c0-1.68.503-3.246 1.367-4.55a.75.75 0 011.04-.211zM12 7.5a3 3 0 00-3 3c0 3.1-1.176 5.927-3.105 8.056a.75.75 0 11-1.112-1.008A10.459 10.459 0 007.5 10.5a4.5 4.5 0 119 0c0 .547-.022 1.09-.067 1.626a.75.75 0 01-1.495-.123c.041-.495.062-.996.062-1.503a3 3 0 00-3-3zm0 2.25a.75.75 0 01.75.75A15.69 15.69 0 018.97 20.738a.75.75 0 01-1.14-.975A14.19 14.19 0 0011.25 10.5a.75.75 0 01.75-.75zm3.239 5.183a.75.75 0 01.515.927 19.415 19.415 0 01-2.585 5.544.75.75 0 11-1.243-.84 17.912 17.912 0 002.386-5.116.75.75 0 01.927-.515z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/fire.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.fire />

      <.fire class="h-6 w-6 text-gray-500" />

  or as a function

      <%= fire() %>

      <%= fire(class: "h-6 w-6 text-gray-500") %>
  """
  def fire(assigns_or_opts \\ [])

  def fire(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12.963 2.286a.75.75 0 00-1.071-.136 9.742 9.742 0 00-3.539 6.177A7.547 7.547 0 016.648 6.61a.75.75 0 00-1.152-.082A9 9 0 1015.68 4.534a7.46 7.46 0 01-2.717-2.248zM15.75 14.25a3.75 3.75 0 11-7.313-1.172c.628.465 1.35.81 2.133 1a5.99 5.99 0 011.925-3.545 3.75 3.75 0 013.255 3.717z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def fire(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12.963 2.286a.75.75 0 00-1.071-.136 9.742 9.742 0 00-3.539 6.177A7.547 7.547 0 016.648 6.61a.75.75 0 00-1.152-.082A9 9 0 1015.68 4.534a7.46 7.46 0 01-2.717-2.248zM15.75 14.25a3.75 3.75 0 11-7.313-1.172c.628.465 1.35.81 2.133 1a5.99 5.99 0 011.925-3.545 3.75 3.75 0 013.255 3.717z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/flag.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.flag />

      <.flag class="h-6 w-6 text-gray-500" />

  or as a function

      <%= flag() %>

      <%= flag(class: "h-6 w-6 text-gray-500") %>
  """
  def flag(assigns_or_opts \\ [])

  def flag(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 2.25a.75.75 0 01.75.75v.54l1.838-.46a9.75 9.75 0 016.725.738l.108.054a8.25 8.25 0 005.58.652l3.109-.732a.75.75 0 01.917.81 47.784 47.784 0 00.005 10.337.75.75 0 01-.574.812l-3.114.733a9.75 9.75 0 01-6.594-.77l-.108-.054a8.25 8.25 0 00-5.69-.625l-2.202.55V21a.75.75 0 01-1.5 0V3A.75.75 0 013 2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def flag(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 2.25a.75.75 0 01.75.75v.54l1.838-.46a9.75 9.75 0 016.725.738l.108.054a8.25 8.25 0 005.58.652l3.109-.732a.75.75 0 01.917.81 47.784 47.784 0 00.005 10.337.75.75 0 01-.574.812l-3.114.733a9.75 9.75 0 01-6.594-.77l-.108-.054a8.25 8.25 0 00-5.69-.625l-2.202.55V21a.75.75 0 01-1.5 0V3A.75.75 0 013 2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder_arrow_down />

      <.folder_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder_arrow_down() %>

      <%= folder_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def folder_arrow_down(assigns_or_opts \\ [])

  def folder_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M19.5 21a3 3 0 003-3V9a3 3 0 00-3-3h-5.379a.75.75 0 01-.53-.22L11.47 3.66A2.25 2.25 0 009.879 3H4.5a3 3 0 00-3 3v12a3 3 0 003 3h15zm-6.75-10.5a.75.75 0 00-1.5 0v4.19l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V10.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def folder_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M19.5 21a3 3 0 003-3V9a3 3 0 00-3-3h-5.379a.75.75 0 01-.53-.22L11.47 3.66A2.25 2.25 0 009.879 3H4.5a3 3 0 00-3 3v12a3 3 0 003 3h15zm-6.75-10.5a.75.75 0 00-1.5 0v4.19l-1.72-1.72a.75.75 0 00-1.06 1.06l3 3a.75.75 0 001.06 0l3-3a.75.75 0 10-1.06-1.06l-1.72 1.72V10.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder-minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder_minus />

      <.folder_minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder_minus() %>

      <%= folder_minus(class: "h-6 w-6 text-gray-500") %>
  """
  def folder_minus(assigns_or_opts \\ [])

  def folder_minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M19.5 21a3 3 0 003-3V9a3 3 0 00-3-3h-5.379a.75.75 0 01-.53-.22L11.47 3.66A2.25 2.25 0 009.879 3H4.5a3 3 0 00-3 3v12a3 3 0 003 3h15zM9 12.75a.75.75 0 000 1.5h6a.75.75 0 000-1.5H9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def folder_minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M19.5 21a3 3 0 003-3V9a3 3 0 00-3-3h-5.379a.75.75 0 01-.53-.22L11.47 3.66A2.25 2.25 0 009.879 3H4.5a3 3 0 00-3 3v12a3 3 0 003 3h15zM9 12.75a.75.75 0 000 1.5h6a.75.75 0 000-1.5H9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder-open.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder_open />

      <.folder_open class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder_open() %>

      <%= folder_open(class: "h-6 w-6 text-gray-500") %>
  """
  def folder_open(assigns_or_opts \\ [])

  def folder_open(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M19.906 9c.382 0 .749.057 1.094.162V9a3 3 0 00-3-3h-3.879a.75.75 0 01-.53-.22L11.47 3.66A2.25 2.25 0 009.879 3H6a3 3 0 00-3 3v3.162A3.756 3.756 0 014.094 9h15.812zM4.094 10.5a2.25 2.25 0 00-2.227 2.568l.857 6A2.25 2.25 0 004.951 21H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-2.227-2.568H4.094z"/>
    </svg>
    """
  end

  def folder_open(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M19.906 9c.382 0 .749.057 1.094.162V9a3 3 0 00-3-3h-3.879a.75.75 0 01-.53-.22L11.47 3.66A2.25 2.25 0 009.879 3H6a3 3 0 00-3 3v3.162A3.756 3.756 0 014.094 9h15.812zM4.094 10.5a2.25 2.25 0 00-2.227 2.568l.857 6A2.25 2.25 0 004.951 21H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-2.227-2.568H4.094z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder_plus />

      <.folder_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder_plus() %>

      <%= folder_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def folder_plus(assigns_or_opts \\ [])

  def folder_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M19.5 21a3 3 0 003-3V9a3 3 0 00-3-3h-5.379a.75.75 0 01-.53-.22L11.47 3.66A2.25 2.25 0 009.879 3H4.5a3 3 0 00-3 3v12a3 3 0 003 3h15zm-6.75-10.5a.75.75 0 00-1.5 0v2.25H9a.75.75 0 000 1.5h2.25v2.25a.75.75 0 001.5 0v-2.25H15a.75.75 0 000-1.5h-2.25V10.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def folder_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M19.5 21a3 3 0 003-3V9a3 3 0 00-3-3h-5.379a.75.75 0 01-.53-.22L11.47 3.66A2.25 2.25 0 009.879 3H4.5a3 3 0 00-3 3v12a3 3 0 003 3h15zm-6.75-10.5a.75.75 0 00-1.5 0v2.25H9a.75.75 0 000 1.5h2.25v2.25a.75.75 0 001.5 0v-2.25H15a.75.75 0 000-1.5h-2.25V10.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder />

      <.folder class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder() %>

      <%= folder(class: "h-6 w-6 text-gray-500") %>
  """
  def folder(assigns_or_opts \\ [])

  def folder(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M19.5 21a3 3 0 003-3v-4.5a3 3 0 00-3-3h-15a3 3 0 00-3 3V18a3 3 0 003 3h15zM1.5 10.146V6a3 3 0 013-3h5.379a2.25 2.25 0 011.59.659l2.122 2.121c.14.141.331.22.53.22H19.5a3 3 0 013 3v1.146A4.483 4.483 0 0019.5 9h-15a4.483 4.483 0 00-3 1.146z"/>
    </svg>
    """
  end

  def folder(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M19.5 21a3 3 0 003-3v-4.5a3 3 0 00-3-3h-15a3 3 0 00-3 3V18a3 3 0 003 3h15zM1.5 10.146V6a3 3 0 013-3h5.379a2.25 2.25 0 011.59.659l2.122 2.121c.14.141.331.22.53.22H19.5a3 3 0 013 3v1.146A4.483 4.483 0 0019.5 9h-15a4.483 4.483 0 00-3 1.146z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/forward.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.forward />

      <.forward class="h-6 w-6 text-gray-500" />

  or as a function

      <%= forward() %>

      <%= forward(class: "h-6 w-6 text-gray-500") %>
  """
  def forward(assigns_or_opts \\ [])

  def forward(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M5.055 7.06c-1.25-.714-2.805.189-2.805 1.628v8.123c0 1.44 1.555 2.342 2.805 1.628L12 14.471v2.34c0 1.44 1.555 2.342 2.805 1.628l7.108-4.061c1.26-.72 1.26-2.536 0-3.256L14.805 7.06C13.555 6.346 12 7.25 12 8.688v2.34L5.055 7.06z"/>
    </svg>
    """
  end

  def forward(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M5.055 7.06c-1.25-.714-2.805.189-2.805 1.628v8.123c0 1.44 1.555 2.342 2.805 1.628L12 14.471v2.34c0 1.44 1.555 2.342 2.805 1.628l7.108-4.061c1.26-.72 1.26-2.536 0-3.256L14.805 7.06C13.555 6.346 12 7.25 12 8.688v2.34L5.055 7.06z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/funnel.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.funnel />

      <.funnel class="h-6 w-6 text-gray-500" />

  or as a function

      <%= funnel() %>

      <%= funnel(class: "h-6 w-6 text-gray-500") %>
  """
  def funnel(assigns_or_opts \\ [])

  def funnel(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3.792 2.938A49.069 49.069 0 0112 2.25c2.797 0 5.54.236 8.209.688a1.857 1.857 0 011.541 1.836v1.044a3 3 0 01-.879 2.121l-6.182 6.182a1.5 1.5 0 00-.439 1.061v2.927a3 3 0 01-1.658 2.684l-1.757.878A.75.75 0 019.75 21v-5.818a1.5 1.5 0 00-.44-1.06L3.13 7.938a3 3 0 01-.879-2.121V4.774c0-.897.64-1.683 1.542-1.836z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def funnel(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3.792 2.938A49.069 49.069 0 0112 2.25c2.797 0 5.54.236 8.209.688a1.857 1.857 0 011.541 1.836v1.044a3 3 0 01-.879 2.121l-6.182 6.182a1.5 1.5 0 00-.439 1.061v2.927a3 3 0 01-1.658 2.684l-1.757.878A.75.75 0 019.75 21v-5.818a1.5 1.5 0 00-.44-1.06L3.13 7.938a3 3 0 01-.879-2.121V4.774c0-.897.64-1.683 1.542-1.836z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/gif.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.gif />

      <.gif class="h-6 w-6 text-gray-500" />

  or as a function

      <%= gif() %>

      <%= gif(class: "h-6 w-6 text-gray-500") %>
  """
  def gif(assigns_or_opts \\ [])

  def gif(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.5 3.75a3 3 0 00-3 3v10.5a3 3 0 003 3h15a3 3 0 003-3V6.75a3 3 0 00-3-3h-15zm9 4.5a.75.75 0 00-1.5 0v7.5a.75.75 0 001.5 0v-7.5zm1.5 0a.75.75 0 01.75-.75h3a.75.75 0 010 1.5H16.5v2.25H18a.75.75 0 010 1.5h-1.5v3a.75.75 0 01-1.5 0v-7.5zM6.636 9.78c.404-.575.867-.78 1.25-.78s.846.205 1.25.78a.75.75 0 001.228-.863C9.738 8.027 8.853 7.5 7.886 7.5c-.966 0-1.852.527-2.478 1.417-.62.882-.908 2-.908 3.083 0 1.083.288 2.201.909 3.083.625.89 1.51 1.417 2.477 1.417.967 0 1.852-.527 2.478-1.417a.75.75 0 00.136-.431V12a.75.75 0 00-.75-.75h-1.5a.75.75 0 000 1.5H9v1.648c-.37.44-.774.602-1.114.602-.383 0-.846-.205-1.25-.78C6.226 13.638 6 12.837 6 12c0-.837.226-1.638.636-2.22z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def gif(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.5 3.75a3 3 0 00-3 3v10.5a3 3 0 003 3h15a3 3 0 003-3V6.75a3 3 0 00-3-3h-15zm9 4.5a.75.75 0 00-1.5 0v7.5a.75.75 0 001.5 0v-7.5zm1.5 0a.75.75 0 01.75-.75h3a.75.75 0 010 1.5H16.5v2.25H18a.75.75 0 010 1.5h-1.5v3a.75.75 0 01-1.5 0v-7.5zM6.636 9.78c.404-.575.867-.78 1.25-.78s.846.205 1.25.78a.75.75 0 001.228-.863C9.738 8.027 8.853 7.5 7.886 7.5c-.966 0-1.852.527-2.478 1.417-.62.882-.908 2-.908 3.083 0 1.083.288 2.201.909 3.083.625.89 1.51 1.417 2.477 1.417.967 0 1.852-.527 2.478-1.417a.75.75 0 00.136-.431V12a.75.75 0 00-.75-.75h-1.5a.75.75 0 000 1.5H9v1.648c-.37.44-.774.602-1.114.602-.383 0-.846-.205-1.25-.78C6.226 13.638 6 12.837 6 12c0-.837.226-1.638.636-2.22z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/gift-top.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.gift_top />

      <.gift_top class="h-6 w-6 text-gray-500" />

  or as a function

      <%= gift_top() %>

      <%= gift_top(class: "h-6 w-6 text-gray-500") %>
  """
  def gift_top(assigns_or_opts \\ [])

  def gift_top(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M11.25 3v4.046a3 3 0 00-4.277 4.204H1.5v-6A2.25 2.25 0 013.75 3h7.5zM12.75 3v4.011a3 3 0 014.239 4.239H22.5v-6A2.25 2.25 0 0020.25 3h-7.5zM22.5 12.75h-8.983a4.125 4.125 0 004.108 3.75.75.75 0 010 1.5 5.623 5.623 0 01-4.875-2.817V21h7.5a2.25 2.25 0 002.25-2.25v-6zM11.25 21v-5.817A5.623 5.623 0 016.375 18a.75.75 0 010-1.5 4.126 4.126 0 004.108-3.75H1.5v6A2.25 2.25 0 003.75 21h7.5z"/>
      <path d="M11.085 10.354c.03.297.038.575.036.805a7.484 7.484 0 01-.805-.036c-.833-.084-1.677-.325-2.195-.843a1.5 1.5 0 012.122-2.12c.517.517.759 1.36.842 2.194zM12.877 10.354c-.03.297-.038.575-.036.805.23.002.508-.006.805-.036.833-.084 1.677-.325 2.195-.843A1.5 1.5 0 0013.72 8.16c-.518.518-.76 1.362-.843 2.194z"/>
    </svg>
    """
  end

  def gift_top(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M11.25 3v4.046a3 3 0 00-4.277 4.204H1.5v-6A2.25 2.25 0 013.75 3h7.5zM12.75 3v4.011a3 3 0 014.239 4.239H22.5v-6A2.25 2.25 0 0020.25 3h-7.5zM22.5 12.75h-8.983a4.125 4.125 0 004.108 3.75.75.75 0 010 1.5 5.623 5.623 0 01-4.875-2.817V21h7.5a2.25 2.25 0 002.25-2.25v-6zM11.25 21v-5.817A5.623 5.623 0 016.375 18a.75.75 0 010-1.5 4.126 4.126 0 004.108-3.75H1.5v6A2.25 2.25 0 003.75 21h7.5z\"/>\n  <path d=\"M11.085 10.354c.03.297.038.575.036.805a7.484 7.484 0 01-.805-.036c-.833-.084-1.677-.325-2.195-.843a1.5 1.5 0 012.122-2.12c.517.517.759 1.36.842 2.194zM12.877 10.354c-.03.297-.038.575-.036.805.23.002.508-.006.805-.036.833-.084 1.677-.325 2.195-.843A1.5 1.5 0 0013.72 8.16c-.518.518-.76 1.362-.843 2.194z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/gift.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.gift />

      <.gift class="h-6 w-6 text-gray-500" />

  or as a function

      <%= gift() %>

      <%= gift(class: "h-6 w-6 text-gray-500") %>
  """
  def gift(assigns_or_opts \\ [])

  def gift(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M9.375 3a1.875 1.875 0 000 3.75h1.875v4.5H3.375A1.875 1.875 0 011.5 9.375v-.75c0-1.036.84-1.875 1.875-1.875h3.193A3.375 3.375 0 0112 2.753a3.375 3.375 0 015.432 3.997h3.943c1.035 0 1.875.84 1.875 1.875v.75c0 1.036-.84 1.875-1.875 1.875H12.75v-4.5h1.875a1.875 1.875 0 10-1.875-1.875V6.75h-1.5V4.875C11.25 3.839 10.41 3 9.375 3zM11.25 12.75H3v6.75a2.25 2.25 0 002.25 2.25h6v-9zM12.75 12.75v9h6.75a2.25 2.25 0 002.25-2.25v-6.75h-9z"/>
    </svg>
    """
  end

  def gift(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M9.375 3a1.875 1.875 0 000 3.75h1.875v4.5H3.375A1.875 1.875 0 011.5 9.375v-.75c0-1.036.84-1.875 1.875-1.875h3.193A3.375 3.375 0 0112 2.753a3.375 3.375 0 015.432 3.997h3.943c1.035 0 1.875.84 1.875 1.875v.75c0 1.036-.84 1.875-1.875 1.875H12.75v-4.5h1.875a1.875 1.875 0 10-1.875-1.875V6.75h-1.5V4.875C11.25 3.839 10.41 3 9.375 3zM11.25 12.75H3v6.75a2.25 2.25 0 002.25 2.25h6v-9zM12.75 12.75v9h6.75a2.25 2.25 0 002.25-2.25v-6.75h-9z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/globe-alt.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.globe_alt />

      <.globe_alt class="h-6 w-6 text-gray-500" />

  or as a function

      <%= globe_alt() %>

      <%= globe_alt(class: "h-6 w-6 text-gray-500") %>
  """
  def globe_alt(assigns_or_opts \\ [])

  def globe_alt(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M21.721 12.752a9.711 9.711 0 00-.945-5.003 12.754 12.754 0 01-4.339 2.708 18.991 18.991 0 01-.214 4.772 17.165 17.165 0 005.498-2.477zM14.634 15.55a17.324 17.324 0 00.332-4.647c-.952.227-1.945.347-2.966.347-1.021 0-2.014-.12-2.966-.347a17.515 17.515 0 00.332 4.647 17.385 17.385 0 005.268 0zM9.772 17.119a18.963 18.963 0 004.456 0A17.182 17.182 0 0112 21.724a17.18 17.18 0 01-2.228-4.605zM7.777 15.23a18.87 18.87 0 01-.214-4.774 12.753 12.753 0 01-4.34-2.708 9.711 9.711 0 00-.944 5.004 17.165 17.165 0 005.498 2.477zM21.356 14.752a9.765 9.765 0 01-7.478 6.817 18.64 18.64 0 001.988-4.718 18.627 18.627 0 005.49-2.098zM2.644 14.752c1.682.971 3.53 1.688 5.49 2.099a18.64 18.64 0 001.988 4.718 9.765 9.765 0 01-7.478-6.816zM13.878 2.43a9.755 9.755 0 016.116 3.986 11.267 11.267 0 01-3.746 2.504 18.63 18.63 0 00-2.37-6.49zM12 2.276a17.152 17.152 0 012.805 7.121c-.897.23-1.837.353-2.805.353-.968 0-1.908-.122-2.805-.353A17.151 17.151 0 0112 2.276zM10.122 2.43a18.629 18.629 0 00-2.37 6.49 11.266 11.266 0 01-3.746-2.504 9.754 9.754 0 016.116-3.985z"/>
    </svg>
    """
  end

  def globe_alt(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M21.721 12.752a9.711 9.711 0 00-.945-5.003 12.754 12.754 0 01-4.339 2.708 18.991 18.991 0 01-.214 4.772 17.165 17.165 0 005.498-2.477zM14.634 15.55a17.324 17.324 0 00.332-4.647c-.952.227-1.945.347-2.966.347-1.021 0-2.014-.12-2.966-.347a17.515 17.515 0 00.332 4.647 17.385 17.385 0 005.268 0zM9.772 17.119a18.963 18.963 0 004.456 0A17.182 17.182 0 0112 21.724a17.18 17.18 0 01-2.228-4.605zM7.777 15.23a18.87 18.87 0 01-.214-4.774 12.753 12.753 0 01-4.34-2.708 9.711 9.711 0 00-.944 5.004 17.165 17.165 0 005.498 2.477zM21.356 14.752a9.765 9.765 0 01-7.478 6.817 18.64 18.64 0 001.988-4.718 18.627 18.627 0 005.49-2.098zM2.644 14.752c1.682.971 3.53 1.688 5.49 2.099a18.64 18.64 0 001.988 4.718 9.765 9.765 0 01-7.478-6.816zM13.878 2.43a9.755 9.755 0 016.116 3.986 11.267 11.267 0 01-3.746 2.504 18.63 18.63 0 00-2.37-6.49zM12 2.276a17.152 17.152 0 012.805 7.121c-.897.23-1.837.353-2.805.353-.968 0-1.908-.122-2.805-.353A17.151 17.151 0 0112 2.276zM10.122 2.43a18.629 18.629 0 00-2.37 6.49 11.266 11.266 0 01-3.746-2.504 9.754 9.754 0 016.116-3.985z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/globe-americas.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.globe_americas />

      <.globe_americas class="h-6 w-6 text-gray-500" />

  or as a function

      <%= globe_americas() %>

      <%= globe_americas(class: "h-6 w-6 text-gray-500") %>
  """
  def globe_americas(assigns_or_opts \\ [])

  def globe_americas(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM6.262 6.072a8.25 8.25 0 1010.562-.766 4.5 4.5 0 01-1.318 1.357L14.25 7.5l.165.33a.809.809 0 01-1.086 1.085l-.604-.302a1.125 1.125 0 00-1.298.21l-.132.131c-.439.44-.439 1.152 0 1.591l.296.296c.256.257.622.374.98.314l1.17-.195c.323-.054.654.036.905.245l1.33 1.108c.32.267.46.694.358 1.1a8.7 8.7 0 01-2.288 4.04l-.723.724a1.125 1.125 0 01-1.298.21l-.153-.076a1.125 1.125 0 01-.622-1.006v-1.089c0-.298-.119-.585-.33-.796l-1.347-1.347a1.125 1.125 0 01-.21-1.298L9.75 12l-1.64-1.64a6 6 0 01-1.676-3.257l-.172-1.03z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def globe_americas(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM6.262 6.072a8.25 8.25 0 1010.562-.766 4.5 4.5 0 01-1.318 1.357L14.25 7.5l.165.33a.809.809 0 01-1.086 1.085l-.604-.302a1.125 1.125 0 00-1.298.21l-.132.131c-.439.44-.439 1.152 0 1.591l.296.296c.256.257.622.374.98.314l1.17-.195c.323-.054.654.036.905.245l1.33 1.108c.32.267.46.694.358 1.1a8.7 8.7 0 01-2.288 4.04l-.723.724a1.125 1.125 0 01-1.298.21l-.153-.076a1.125 1.125 0 01-.622-1.006v-1.089c0-.298-.119-.585-.33-.796l-1.347-1.347a1.125 1.125 0 01-.21-1.298L9.75 12l-1.64-1.64a6 6 0 01-1.676-3.257l-.172-1.03z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/globe-asia-australia.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.globe_asia_australia />

      <.globe_asia_australia class="h-6 w-6 text-gray-500" />

  or as a function

      <%= globe_asia_australia() %>

      <%= globe_asia_australia(class: "h-6 w-6 text-gray-500") %>
  """
  def globe_asia_australia(assigns_or_opts \\ [])

  def globe_asia_australia(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M15.75 8.25a.75.75 0 01.75.75c0 1.12-.492 2.126-1.27 2.812a.75.75 0 11-.992-1.124A2.243 2.243 0 0015 9a.75.75 0 01.75-.75z"/>
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM4.575 15.6a8.25 8.25 0 009.348 4.425 1.966 1.966 0 00-1.84-1.275.983.983 0 01-.97-.822l-.073-.437c-.094-.565.25-1.11.8-1.267l.99-.282c.427-.123.783-.418.982-.816l.036-.073a1.453 1.453 0 012.328-.377L16.5 15h.628a2.25 2.25 0 011.983 1.186 8.25 8.25 0 00-6.345-12.4c.044.262.18.503.389.676l1.068.89c.442.369.535 1.01.216 1.49l-.51.766a2.25 2.25 0 01-1.161.886l-.143.048a1.107 1.107 0 00-.57 1.664c.369.555.169 1.307-.427 1.605L9 13.125l.423 1.059a.956.956 0 01-1.652.928l-.679-.906a1.125 1.125 0 00-1.906.172L4.575 15.6z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def globe_asia_australia(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M15.75 8.25a.75.75 0 01.75.75c0 1.12-.492 2.126-1.27 2.812a.75.75 0 11-.992-1.124A2.243 2.243 0 0015 9a.75.75 0 01.75-.75z\"/>\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM4.575 15.6a8.25 8.25 0 009.348 4.425 1.966 1.966 0 00-1.84-1.275.983.983 0 01-.97-.822l-.073-.437c-.094-.565.25-1.11.8-1.267l.99-.282c.427-.123.783-.418.982-.816l.036-.073a1.453 1.453 0 012.328-.377L16.5 15h.628a2.25 2.25 0 011.983 1.186 8.25 8.25 0 00-6.345-12.4c.044.262.18.503.389.676l1.068.89c.442.369.535 1.01.216 1.49l-.51.766a2.25 2.25 0 01-1.161.886l-.143.048a1.107 1.107 0 00-.57 1.664c.369.555.169 1.307-.427 1.605L9 13.125l.423 1.059a.956.956 0 01-1.652.928l-.679-.906a1.125 1.125 0 00-1.906.172L4.575 15.6z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/globe-europe-africa.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.globe_europe_africa />

      <.globe_europe_africa class="h-6 w-6 text-gray-500" />

  or as a function

      <%= globe_europe_africa() %>

      <%= globe_europe_africa(class: "h-6 w-6 text-gray-500") %>
  """
  def globe_europe_africa(assigns_or_opts \\ [])

  def globe_europe_africa(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM8.547 4.505a8.25 8.25 0 1011.672 8.214l-.46-.46a2.252 2.252 0 01-.422-.586l-1.08-2.16a.414.414 0 00-.663-.107.827.827 0 01-.812.21l-1.273-.363a.89.89 0 00-.738 1.595l.587.39c.59.395.674 1.23.172 1.732l-.2.2c-.211.212-.33.498-.33.796v.41c0 .409-.11.809-.32 1.158l-1.315 2.191a2.11 2.11 0 01-1.81 1.025 1.055 1.055 0 01-1.055-1.055v-1.172c0-.92-.56-1.747-1.414-2.089l-.654-.261a2.25 2.25 0 01-1.384-2.46l.007-.042a2.25 2.25 0 01.29-.787l.09-.15a2.25 2.25 0 012.37-1.048l1.178.236a1.125 1.125 0 001.302-.795l.208-.73a1.125 1.125 0 00-.578-1.315l-.665-.332-.091.091a2.25 2.25 0 01-1.591.659h-.18c-.249 0-.487.1-.662.274a.931.931 0 01-1.458-1.137l1.279-2.132z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def globe_europe_africa(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM8.547 4.505a8.25 8.25 0 1011.672 8.214l-.46-.46a2.252 2.252 0 01-.422-.586l-1.08-2.16a.414.414 0 00-.663-.107.827.827 0 01-.812.21l-1.273-.363a.89.89 0 00-.738 1.595l.587.39c.59.395.674 1.23.172 1.732l-.2.2c-.211.212-.33.498-.33.796v.41c0 .409-.11.809-.32 1.158l-1.315 2.191a2.11 2.11 0 01-1.81 1.025 1.055 1.055 0 01-1.055-1.055v-1.172c0-.92-.56-1.747-1.414-2.089l-.654-.261a2.25 2.25 0 01-1.384-2.46l.007-.042a2.25 2.25 0 01.29-.787l.09-.15a2.25 2.25 0 012.37-1.048l1.178.236a1.125 1.125 0 001.302-.795l.208-.73a1.125 1.125 0 00-.578-1.315l-.665-.332-.091.091a2.25 2.25 0 01-1.591.659h-.18c-.249 0-.487.1-.662.274a.931.931 0 01-1.458-1.137l1.279-2.132z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/hand-raised.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.hand_raised />

      <.hand_raised class="h-6 w-6 text-gray-500" />

  or as a function

      <%= hand_raised() %>

      <%= hand_raised(class: "h-6 w-6 text-gray-500") %>
  """
  def hand_raised(assigns_or_opts \\ [])

  def hand_raised(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M10.5 1.875a1.125 1.125 0 012.25 0v8.219c.517.162 1.02.382 1.5.659V3.375a1.125 1.125 0 012.25 0v10.937a4.505 4.505 0 00-3.25 2.373 8.963 8.963 0 014-.935A.75.75 0 0018 15v-2.266a3.368 3.368 0 01.988-2.37 1.125 1.125 0 011.591 1.59 1.118 1.118 0 00-.329.79v3.006h-.005a6 6 0 01-1.752 4.007l-1.736 1.736a6 6 0 01-4.242 1.757H10.5a7.5 7.5 0 01-7.5-7.5V6.375a1.125 1.125 0 012.25 0v5.519c.46-.452.965-.832 1.5-1.141V3.375a1.125 1.125 0 012.25 0v6.526c.495-.1.997-.151 1.5-.151V1.875z"/>
    </svg>
    """
  end

  def hand_raised(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M10.5 1.875a1.125 1.125 0 012.25 0v8.219c.517.162 1.02.382 1.5.659V3.375a1.125 1.125 0 012.25 0v10.937a4.505 4.505 0 00-3.25 2.373 8.963 8.963 0 014-.935A.75.75 0 0018 15v-2.266a3.368 3.368 0 01.988-2.37 1.125 1.125 0 011.591 1.59 1.118 1.118 0 00-.329.79v3.006h-.005a6 6 0 01-1.752 4.007l-1.736 1.736a6 6 0 01-4.242 1.757H10.5a7.5 7.5 0 01-7.5-7.5V6.375a1.125 1.125 0 012.25 0v5.519c.46-.452.965-.832 1.5-1.141V3.375a1.125 1.125 0 012.25 0v6.526c.495-.1.997-.151 1.5-.151V1.875z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/hand-thumb-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.hand_thumb_down />

      <.hand_thumb_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= hand_thumb_down() %>

      <%= hand_thumb_down(class: "h-6 w-6 text-gray-500") %>
  """
  def hand_thumb_down(assigns_or_opts \\ [])

  def hand_thumb_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M15.73 4.5h1.035A7.465 7.465 0 0118 8.625a7.465 7.465 0 01-1.235 4.125h-.148c-.806 0-1.534.446-2.031 1.08a9.04 9.04 0 01-2.861 2.4c-.723.384-1.35.956-1.653 1.715a4.499 4.499 0 00-.322 1.672v.633A.75.75 0 019 21a2.25 2.25 0 01-2.25-2.25c0-1.152.26-2.243.723-3.218.266-.558-.107-1.282-.725-1.282H3.622c-1.026 0-1.945-.694-2.054-1.715A12.137 12.137 0 011.5 11.25c0-2.848.992-5.464 2.649-7.521C4.537 3.247 5.136 3 5.754 3H9.77a4.5 4.5 0 011.423.23l3.114 1.04a4.5 4.5 0 001.423.23zM21.669 13.023c.536-1.362.831-2.845.831-4.398 0-1.22-.182-2.398-.52-3.507-.26-.85-1.084-1.368-1.973-1.368H19.1c-.445 0-.72.498-.523.898.591 1.2.924 2.55.924 3.977a8.958 8.958 0 01-1.302 4.666c-.245.403.028.959.5.959h1.053c.832 0 1.612-.453 1.918-1.227z"/>
    </svg>
    """
  end

  def hand_thumb_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M15.73 4.5h1.035A7.465 7.465 0 0118 8.625a7.465 7.465 0 01-1.235 4.125h-.148c-.806 0-1.534.446-2.031 1.08a9.04 9.04 0 01-2.861 2.4c-.723.384-1.35.956-1.653 1.715a4.499 4.499 0 00-.322 1.672v.633A.75.75 0 019 21a2.25 2.25 0 01-2.25-2.25c0-1.152.26-2.243.723-3.218.266-.558-.107-1.282-.725-1.282H3.622c-1.026 0-1.945-.694-2.054-1.715A12.137 12.137 0 011.5 11.25c0-2.848.992-5.464 2.649-7.521C4.537 3.247 5.136 3 5.754 3H9.77a4.5 4.5 0 011.423.23l3.114 1.04a4.5 4.5 0 001.423.23zM21.669 13.023c.536-1.362.831-2.845.831-4.398 0-1.22-.182-2.398-.52-3.507-.26-.85-1.084-1.368-1.973-1.368H19.1c-.445 0-.72.498-.523.898.591 1.2.924 2.55.924 3.977a8.958 8.958 0 01-1.302 4.666c-.245.403.028.959.5.959h1.053c.832 0 1.612-.453 1.918-1.227z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/hand-thumb-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.hand_thumb_up />

      <.hand_thumb_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= hand_thumb_up() %>

      <%= hand_thumb_up(class: "h-6 w-6 text-gray-500") %>
  """
  def hand_thumb_up(assigns_or_opts \\ [])

  def hand_thumb_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M7.493 19.5c-.425 0-.82-.236-.975-.632A7.48 7.48 0 016 16.125c0-1.75.599-3.358 1.602-4.634.151-.192.373-.309.6-.397.473-.183.89-.514 1.212-.924a9.041 9.041 0 012.861-2.4c.723-.384 1.35-.956 1.653-1.715a4.498 4.498 0 00.322-1.672V3.75A.75.75 0 0115 3a2.25 2.25 0 012.25 2.25c0 1.152-.26 2.243-.723 3.218-.266.558.107 1.282.725 1.282h3.126c1.026 0 1.945.694 2.054 1.715.045.422.068.85.068 1.285a11.95 11.95 0 01-2.649 7.521c-.388.482-.987.729-1.605.729H14.23c-.483 0-.964-.078-1.423-.23l-3.114-1.04a4.501 4.501 0 00-1.423-.23h-.777zM2.331 11.727a11.969 11.969 0 00-.831 4.398 12 12 0 00.52 3.507C2.28 20.482 3.105 21 3.994 21H4.9c.445 0 .72-.498.523-.898a8.963 8.963 0 01-.924-3.977c0-1.708.476-3.305 1.302-4.666.245-.403-.028-.959-.5-.959H4.25c-.832 0-1.612.453-1.918 1.227z"/>
    </svg>
    """
  end

  def hand_thumb_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M7.493 19.5c-.425 0-.82-.236-.975-.632A7.48 7.48 0 016 16.125c0-1.75.599-3.358 1.602-4.634.151-.192.373-.309.6-.397.473-.183.89-.514 1.212-.924a9.041 9.041 0 012.861-2.4c.723-.384 1.35-.956 1.653-1.715a4.498 4.498 0 00.322-1.672V3.75A.75.75 0 0115 3a2.25 2.25 0 012.25 2.25c0 1.152-.26 2.243-.723 3.218-.266.558.107 1.282.725 1.282h3.126c1.026 0 1.945.694 2.054 1.715.045.422.068.85.068 1.285a11.95 11.95 0 01-2.649 7.521c-.388.482-.987.729-1.605.729H14.23c-.483 0-.964-.078-1.423-.23l-3.114-1.04a4.501 4.501 0 00-1.423-.23h-.777zM2.331 11.727a11.969 11.969 0 00-.831 4.398 12 12 0 00.52 3.507C2.28 20.482 3.105 21 3.994 21H4.9c.445 0 .72-.498.523-.898a8.963 8.963 0 01-.924-3.977c0-1.708.476-3.305 1.302-4.666.245-.403-.028-.959-.5-.959H4.25c-.832 0-1.612.453-1.918 1.227z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/hashtag.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.hashtag />

      <.hashtag class="h-6 w-6 text-gray-500" />

  or as a function

      <%= hashtag() %>

      <%= hashtag(class: "h-6 w-6 text-gray-500") %>
  """
  def hashtag(assigns_or_opts \\ [])

  def hashtag(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.097 1.515a.75.75 0 01.589.882L10.666 7.5h4.47l1.079-5.397a.75.75 0 111.47.294L16.665 7.5h3.585a.75.75 0 010 1.5h-3.885l-1.2 6h3.585a.75.75 0 010 1.5h-3.885l-1.08 5.397a.75.75 0 11-1.47-.294l1.02-5.103h-4.47l-1.08 5.397a.75.75 0 01-1.47-.294l1.02-5.103H3.75a.75.75 0 110-1.5h3.885l1.2-6H5.25a.75.75 0 010-1.5h3.885l1.08-5.397a.75.75 0 01.882-.588zM10.365 9l-1.2 6h4.47l1.2-6h-4.47z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def hashtag(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.097 1.515a.75.75 0 01.589.882L10.666 7.5h4.47l1.079-5.397a.75.75 0 111.47.294L16.665 7.5h3.585a.75.75 0 010 1.5h-3.885l-1.2 6h3.585a.75.75 0 010 1.5h-3.885l-1.08 5.397a.75.75 0 11-1.47-.294l1.02-5.103h-4.47l-1.08 5.397a.75.75 0 01-1.47-.294l1.02-5.103H3.75a.75.75 0 110-1.5h3.885l1.2-6H5.25a.75.75 0 010-1.5h3.885l1.08-5.397a.75.75 0 01.882-.588zM10.365 9l-1.2 6h4.47l1.2-6h-4.47z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/heart.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.heart />

      <.heart class="h-6 w-6 text-gray-500" />

  or as a function

      <%= heart() %>

      <%= heart(class: "h-6 w-6 text-gray-500") %>
  """
  def heart(assigns_or_opts \\ [])

  def heart(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M11.645 20.91l-.007-.003-.022-.012a15.247 15.247 0 01-.383-.218 25.18 25.18 0 01-4.244-3.17C4.688 15.36 2.25 12.174 2.25 8.25 2.25 5.322 4.714 3 7.688 3A5.5 5.5 0 0112 5.052 5.5 5.5 0 0116.313 3c2.973 0 5.437 2.322 5.437 5.25 0 3.925-2.438 7.111-4.739 9.256a25.175 25.175 0 01-4.244 3.17 15.247 15.247 0 01-.383.219l-.022.012-.007.004-.003.001a.752.752 0 01-.704 0l-.003-.001z"/>
    </svg>
    """
  end

  def heart(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M11.645 20.91l-.007-.003-.022-.012a15.247 15.247 0 01-.383-.218 25.18 25.18 0 01-4.244-3.17C4.688 15.36 2.25 12.174 2.25 8.25 2.25 5.322 4.714 3 7.688 3A5.5 5.5 0 0112 5.052 5.5 5.5 0 0116.313 3c2.973 0 5.437 2.322 5.437 5.25 0 3.925-2.438 7.111-4.739 9.256a25.175 25.175 0 01-4.244 3.17 15.247 15.247 0 01-.383.219l-.022.012-.007.004-.003.001a.752.752 0 01-.704 0l-.003-.001z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/home-modern.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.home_modern />

      <.home_modern class="h-6 w-6 text-gray-500" />

  or as a function

      <%= home_modern() %>

      <%= home_modern(class: "h-6 w-6 text-gray-500") %>
  """
  def home_modern(assigns_or_opts \\ [])

  def home_modern(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M19.006 3.705a.75.75 0 00-.512-1.41L6 6.838V3a.75.75 0 00-.75-.75h-1.5A.75.75 0 003 3v4.93l-1.006.365a.75.75 0 00.512 1.41l16.5-6z"/>
      <path fill-rule="evenodd" d="M3.019 11.115L18 5.667V9.09l4.006 1.456a.75.75 0 11-.512 1.41l-.494-.18v8.475h.75a.75.75 0 010 1.5H2.25a.75.75 0 010-1.5H3v-9.129l.019-.006zM18 20.25v-9.565l1.5.545v9.02H18zm-9-6a.75.75 0 00-.75.75v4.5c0 .414.336.75.75.75h3a.75.75 0 00.75-.75V15a.75.75 0 00-.75-.75H9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def home_modern(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M19.006 3.705a.75.75 0 00-.512-1.41L6 6.838V3a.75.75 0 00-.75-.75h-1.5A.75.75 0 003 3v4.93l-1.006.365a.75.75 0 00.512 1.41l16.5-6z\"/>\n  <path fill-rule=\"evenodd\" d=\"M3.019 11.115L18 5.667V9.09l4.006 1.456a.75.75 0 11-.512 1.41l-.494-.18v8.475h.75a.75.75 0 010 1.5H2.25a.75.75 0 010-1.5H3v-9.129l.019-.006zM18 20.25v-9.565l1.5.545v9.02H18zm-9-6a.75.75 0 00-.75.75v4.5c0 .414.336.75.75.75h3a.75.75 0 00.75-.75V15a.75.75 0 00-.75-.75H9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/home.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.home />

      <.home class="h-6 w-6 text-gray-500" />

  or as a function

      <%= home() %>

      <%= home(class: "h-6 w-6 text-gray-500") %>
  """
  def home(assigns_or_opts \\ [])

  def home(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M11.47 3.84a.75.75 0 011.06 0l8.69 8.69a.75.75 0 101.06-1.06l-8.689-8.69a2.25 2.25 0 00-3.182 0l-8.69 8.69a.75.75 0 001.061 1.06l8.69-8.69z"/>
      <path d="M12 5.432l8.159 8.159c.03.03.06.058.091.086v6.198c0 1.035-.84 1.875-1.875 1.875H15a.75.75 0 01-.75-.75v-4.5a.75.75 0 00-.75-.75h-3a.75.75 0 00-.75.75V21a.75.75 0 01-.75.75H5.625a1.875 1.875 0 01-1.875-1.875v-6.198a2.29 2.29 0 00.091-.086L12 5.43z"/>
    </svg>
    """
  end

  def home(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M11.47 3.84a.75.75 0 011.06 0l8.69 8.69a.75.75 0 101.06-1.06l-8.689-8.69a2.25 2.25 0 00-3.182 0l-8.69 8.69a.75.75 0 001.061 1.06l8.69-8.69z\"/>\n  <path d=\"M12 5.432l8.159 8.159c.03.03.06.058.091.086v6.198c0 1.035-.84 1.875-1.875 1.875H15a.75.75 0 01-.75-.75v-4.5a.75.75 0 00-.75-.75h-3a.75.75 0 00-.75.75V21a.75.75 0 01-.75.75H5.625a1.875 1.875 0 01-1.875-1.875v-6.198a2.29 2.29 0 00.091-.086L12 5.43z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/identification.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.identification />

      <.identification class="h-6 w-6 text-gray-500" />

  or as a function

      <%= identification() %>

      <%= identification(class: "h-6 w-6 text-gray-500") %>
  """
  def identification(assigns_or_opts \\ [])

  def identification(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.5 3.75a3 3 0 00-3 3v10.5a3 3 0 003 3h15a3 3 0 003-3V6.75a3 3 0 00-3-3h-15zm4.125 3a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5zm-3.873 8.703a4.126 4.126 0 017.746 0 .75.75 0 01-.351.92 7.47 7.47 0 01-3.522.877 7.47 7.47 0 01-3.522-.877.75.75 0 01-.351-.92zM15 8.25a.75.75 0 000 1.5h3.75a.75.75 0 000-1.5H15zM14.25 12a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H15a.75.75 0 01-.75-.75zm.75 2.25a.75.75 0 000 1.5h3.75a.75.75 0 000-1.5H15z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def identification(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.5 3.75a3 3 0 00-3 3v10.5a3 3 0 003 3h15a3 3 0 003-3V6.75a3 3 0 00-3-3h-15zm4.125 3a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5zm-3.873 8.703a4.126 4.126 0 017.746 0 .75.75 0 01-.351.92 7.47 7.47 0 01-3.522.877 7.47 7.47 0 01-3.522-.877.75.75 0 01-.351-.92zM15 8.25a.75.75 0 000 1.5h3.75a.75.75 0 000-1.5H15zM14.25 12a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H15a.75.75 0 01-.75-.75zm.75 2.25a.75.75 0 000 1.5h3.75a.75.75 0 000-1.5H15z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/inbox-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.inbox_arrow_down />

      <.inbox_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= inbox_arrow_down() %>

      <%= inbox_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def inbox_arrow_down(assigns_or_opts \\ [])

  def inbox_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.478 5.559A1.5 1.5 0 016.912 4.5H9A.75.75 0 009 3H6.912a3 3 0 00-2.868 2.118l-2.411 7.838a3 3 0 00-.133.882V18a3 3 0 003 3h15a3 3 0 003-3v-4.162c0-.299-.045-.596-.133-.882l-2.412-7.838A3 3 0 0017.088 3H15a.75.75 0 000 1.5h2.088a1.5 1.5 0 011.434 1.059l2.213 7.191H17.89a3 3 0 00-2.684 1.658l-.256.513a1.5 1.5 0 01-1.342.829h-3.218a1.5 1.5 0 01-1.342-.83l-.256-.512a3 3 0 00-2.684-1.658H3.265l2.213-7.191z" clip-rule="evenodd"/>
      <path fill-rule="evenodd" d="M12 2.25a.75.75 0 01.75.75v6.44l1.72-1.72a.75.75 0 111.06 1.06l-3 3a.75.75 0 01-1.06 0l-3-3a.75.75 0 011.06-1.06l1.72 1.72V3a.75.75 0 01.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def inbox_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.478 5.559A1.5 1.5 0 016.912 4.5H9A.75.75 0 009 3H6.912a3 3 0 00-2.868 2.118l-2.411 7.838a3 3 0 00-.133.882V18a3 3 0 003 3h15a3 3 0 003-3v-4.162c0-.299-.045-.596-.133-.882l-2.412-7.838A3 3 0 0017.088 3H15a.75.75 0 000 1.5h2.088a1.5 1.5 0 011.434 1.059l2.213 7.191H17.89a3 3 0 00-2.684 1.658l-.256.513a1.5 1.5 0 01-1.342.829h-3.218a1.5 1.5 0 01-1.342-.83l-.256-.512a3 3 0 00-2.684-1.658H3.265l2.213-7.191z\" clip-rule=\"evenodd\"/>\n  <path fill-rule=\"evenodd\" d=\"M12 2.25a.75.75 0 01.75.75v6.44l1.72-1.72a.75.75 0 111.06 1.06l-3 3a.75.75 0 01-1.06 0l-3-3a.75.75 0 011.06-1.06l1.72 1.72V3a.75.75 0 01.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/inbox-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.inbox_stack />

      <.inbox_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= inbox_stack() %>

      <%= inbox_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def inbox_stack(assigns_or_opts \\ [])

  def inbox_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M1.5 9.832v1.793c0 1.036.84 1.875 1.875 1.875h17.25c1.035 0 1.875-.84 1.875-1.875V9.832a3 3 0 00-.722-1.952l-3.285-3.832A3 3 0 0016.215 3h-8.43a3 3 0 00-2.278 1.048L2.222 7.88A3 3 0 001.5 9.832zM7.785 4.5a1.5 1.5 0 00-1.139.524L3.881 8.25h3.165a3 3 0 012.496 1.336l.164.246a1.5 1.5 0 001.248.668h2.092a1.5 1.5 0 001.248-.668l.164-.246a3 3 0 012.496-1.336h3.165l-2.765-3.226a1.5 1.5 0 00-1.139-.524h-8.43z" clip-rule="evenodd"/>
      <path d="M2.813 15c-.725 0-1.313.588-1.313 1.313V18a3 3 0 003 3h15a3 3 0 003-3v-1.688c0-.724-.588-1.312-1.313-1.312h-4.233a3 3 0 00-2.496 1.336l-.164.246a1.5 1.5 0 01-1.248.668h-2.092a1.5 1.5 0 01-1.248-.668l-.164-.246A3 3 0 007.046 15H2.812z"/>
    </svg>
    """
  end

  def inbox_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M1.5 9.832v1.793c0 1.036.84 1.875 1.875 1.875h17.25c1.035 0 1.875-.84 1.875-1.875V9.832a3 3 0 00-.722-1.952l-3.285-3.832A3 3 0 0016.215 3h-8.43a3 3 0 00-2.278 1.048L2.222 7.88A3 3 0 001.5 9.832zM7.785 4.5a1.5 1.5 0 00-1.139.524L3.881 8.25h3.165a3 3 0 012.496 1.336l.164.246a1.5 1.5 0 001.248.668h2.092a1.5 1.5 0 001.248-.668l.164-.246a3 3 0 012.496-1.336h3.165l-2.765-3.226a1.5 1.5 0 00-1.139-.524h-8.43z\" clip-rule=\"evenodd\"/>\n  <path d=\"M2.813 15c-.725 0-1.313.588-1.313 1.313V18a3 3 0 003 3h15a3 3 0 003-3v-1.688c0-.724-.588-1.312-1.313-1.312h-4.233a3 3 0 00-2.496 1.336l-.164.246a1.5 1.5 0 01-1.248.668h-2.092a1.5 1.5 0 01-1.248-.668l-.164-.246A3 3 0 007.046 15H2.812z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/inbox.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.inbox />

      <.inbox class="h-6 w-6 text-gray-500" />

  or as a function

      <%= inbox() %>

      <%= inbox(class: "h-6 w-6 text-gray-500") %>
  """
  def inbox(assigns_or_opts \\ [])

  def inbox(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M6.912 3a3 3 0 00-2.868 2.118l-2.411 7.838a3 3 0 00-.133.882V18a3 3 0 003 3h15a3 3 0 003-3v-4.162c0-.299-.045-.596-.133-.882l-2.412-7.838A3 3 0 0017.088 3H6.912zm13.823 9.75l-2.213-7.191A1.5 1.5 0 0017.088 4.5H6.912a1.5 1.5 0 00-1.434 1.059L3.265 12.75H6.11a3 3 0 012.684 1.658l.256.513a1.5 1.5 0 001.342.829h3.218a1.5 1.5 0 001.342-.83l.256-.512a3 3 0 012.684-1.658h2.844z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def inbox(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M6.912 3a3 3 0 00-2.868 2.118l-2.411 7.838a3 3 0 00-.133.882V18a3 3 0 003 3h15a3 3 0 003-3v-4.162c0-.299-.045-.596-.133-.882l-2.412-7.838A3 3 0 0017.088 3H6.912zm13.823 9.75l-2.213-7.191A1.5 1.5 0 0017.088 4.5H6.912a1.5 1.5 0 00-1.434 1.059L3.265 12.75H6.11a3 3 0 012.684 1.658l.256.513a1.5 1.5 0 001.342.829h3.218a1.5 1.5 0 001.342-.83l.256-.512a3 3 0 012.684-1.658h2.844z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/information-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.information_circle />

      <.information_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= information_circle() %>

      <%= information_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def information_circle(assigns_or_opts \\ [])

  def information_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 12c0-5.385 4.365-9.75 9.75-9.75s9.75 4.365 9.75 9.75-4.365 9.75-9.75 9.75S2.25 17.385 2.25 12zm8.706-1.442c1.146-.573 2.437.463 2.126 1.706l-.709 2.836.042-.02a.75.75 0 01.67 1.34l-.04.022c-1.147.573-2.438-.463-2.127-1.706l.71-2.836-.042.02a.75.75 0 11-.671-1.34l.041-.022zM12 9a.75.75 0 100-1.5.75.75 0 000 1.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def information_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 12c0-5.385 4.365-9.75 9.75-9.75s9.75 4.365 9.75 9.75-4.365 9.75-9.75 9.75S2.25 17.385 2.25 12zm8.706-1.442c1.146-.573 2.437.463 2.126 1.706l-.709 2.836.042-.02a.75.75 0 01.67 1.34l-.04.022c-1.147.573-2.438-.463-2.127-1.706l.71-2.836-.042.02a.75.75 0 11-.671-1.34l.041-.022zM12 9a.75.75 0 100-1.5.75.75 0 000 1.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/key.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.key />

      <.key class="h-6 w-6 text-gray-500" />

  or as a function

      <%= key() %>

      <%= key(class: "h-6 w-6 text-gray-500") %>
  """
  def key(assigns_or_opts \\ [])

  def key(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M15.75 1.5a6.75 6.75 0 00-6.651 7.906c.067.39-.032.717-.221.906l-6.5 6.499a3 3 0 00-.878 2.121v2.818c0 .414.336.75.75.75H6a.75.75 0 00.75-.75v-1.5h1.5A.75.75 0 009 19.5V18h1.5a.75.75 0 00.53-.22l2.658-2.658c.19-.189.517-.288.906-.22A6.75 6.75 0 1015.75 1.5zm0 3a.75.75 0 000 1.5A2.25 2.25 0 0118 8.25a.75.75 0 001.5 0 3.75 3.75 0 00-3.75-3.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def key(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M15.75 1.5a6.75 6.75 0 00-6.651 7.906c.067.39-.032.717-.221.906l-6.5 6.499a3 3 0 00-.878 2.121v2.818c0 .414.336.75.75.75H6a.75.75 0 00.75-.75v-1.5h1.5A.75.75 0 009 19.5V18h1.5a.75.75 0 00.53-.22l2.658-2.658c.19-.189.517-.288.906-.22A6.75 6.75 0 1015.75 1.5zm0 3a.75.75 0 000 1.5A2.25 2.25 0 0118 8.25a.75.75 0 001.5 0 3.75 3.75 0 00-3.75-3.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/language.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.language />

      <.language class="h-6 w-6 text-gray-500" />

  or as a function

      <%= language() %>

      <%= language(class: "h-6 w-6 text-gray-500") %>
  """
  def language(assigns_or_opts \\ [])

  def language(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M9 2.25a.75.75 0 01.75.75v1.506a49.38 49.38 0 015.343.371.75.75 0 11-.186 1.489c-.66-.083-1.323-.151-1.99-.206a18.67 18.67 0 01-2.969 6.323c.317.384.65.753.998 1.107a.75.75 0 11-1.07 1.052A18.902 18.902 0 019 13.687a18.823 18.823 0 01-5.656 4.482.75.75 0 11-.688-1.333 17.323 17.323 0 005.396-4.353A18.72 18.72 0 015.89 8.598a.75.75 0 011.388-.568A17.21 17.21 0 009 11.224a17.17 17.17 0 002.391-5.165 48.038 48.038 0 00-8.298.307.75.75 0 01-.186-1.489 49.159 49.159 0 015.343-.371V3A.75.75 0 019 2.25zM15.75 9a.75.75 0 01.68.433l5.25 11.25a.75.75 0 01-1.36.634l-1.198-2.567h-6.744l-1.198 2.567a.75.75 0 01-1.36-.634l5.25-11.25A.75.75 0 0115.75 9zm-2.672 8.25h5.344l-2.672-5.726-2.672 5.726z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def language(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M9 2.25a.75.75 0 01.75.75v1.506a49.38 49.38 0 015.343.371.75.75 0 11-.186 1.489c-.66-.083-1.323-.151-1.99-.206a18.67 18.67 0 01-2.969 6.323c.317.384.65.753.998 1.107a.75.75 0 11-1.07 1.052A18.902 18.902 0 019 13.687a18.823 18.823 0 01-5.656 4.482.75.75 0 11-.688-1.333 17.323 17.323 0 005.396-4.353A18.72 18.72 0 015.89 8.598a.75.75 0 011.388-.568A17.21 17.21 0 009 11.224a17.17 17.17 0 002.391-5.165 48.038 48.038 0 00-8.298.307.75.75 0 01-.186-1.489 49.159 49.159 0 015.343-.371V3A.75.75 0 019 2.25zM15.75 9a.75.75 0 01.68.433l5.25 11.25a.75.75 0 01-1.36.634l-1.198-2.567h-6.744l-1.198 2.567a.75.75 0 01-1.36-.634l5.25-11.25A.75.75 0 0115.75 9zm-2.672 8.25h5.344l-2.672-5.726-2.672 5.726z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/lifebuoy.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.lifebuoy />

      <.lifebuoy class="h-6 w-6 text-gray-500" />

  or as a function

      <%= lifebuoy() %>

      <%= lifebuoy(class: "h-6 w-6 text-gray-500") %>
  """
  def lifebuoy(assigns_or_opts \\ [])

  def lifebuoy(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M19.449 8.448L16.388 11a4.52 4.52 0 010 2.002l3.061 2.55a8.275 8.275 0 000-7.103zM15.552 19.45L13 16.388a4.52 4.52 0 01-2.002 0l-2.55 3.061a8.275 8.275 0 007.103 0zM4.55 15.552L7.612 13a4.52 4.52 0 010-2.002L4.551 8.45a8.275 8.275 0 000 7.103zM8.448 4.55L11 7.612a4.52 4.52 0 012.002 0l2.55-3.061a8.275 8.275 0 00-7.103 0zm8.657-.86a9.776 9.776 0 011.79 1.415 9.776 9.776 0 011.414 1.788 9.764 9.764 0 010 10.211 9.777 9.777 0 01-1.415 1.79 9.777 9.777 0 01-1.788 1.414 9.764 9.764 0 01-10.212 0 9.776 9.776 0 01-1.788-1.415 9.776 9.776 0 01-1.415-1.788 9.764 9.764 0 010-10.212 9.774 9.774 0 011.415-1.788A9.774 9.774 0 016.894 3.69a9.764 9.764 0 0110.211 0zM14.121 9.88a2.985 2.985 0 00-1.11-.704 3.015 3.015 0 00-2.022 0 2.985 2.985 0 00-1.11.704c-.326.325-.56.705-.704 1.11a3.015 3.015 0 000 2.022c.144.405.378.785.704 1.11.325.326.705.56 1.11.704.652.233 1.37.233 2.022 0a2.985 2.985 0 001.11-.704c.326-.325.56-.705.704-1.11a3.016 3.016 0 000-2.022 2.985 2.985 0 00-.704-1.11z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def lifebuoy(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M19.449 8.448L16.388 11a4.52 4.52 0 010 2.002l3.061 2.55a8.275 8.275 0 000-7.103zM15.552 19.45L13 16.388a4.52 4.52 0 01-2.002 0l-2.55 3.061a8.275 8.275 0 007.103 0zM4.55 15.552L7.612 13a4.52 4.52 0 010-2.002L4.551 8.45a8.275 8.275 0 000 7.103zM8.448 4.55L11 7.612a4.52 4.52 0 012.002 0l2.55-3.061a8.275 8.275 0 00-7.103 0zm8.657-.86a9.776 9.776 0 011.79 1.415 9.776 9.776 0 011.414 1.788 9.764 9.764 0 010 10.211 9.777 9.777 0 01-1.415 1.79 9.777 9.777 0 01-1.788 1.414 9.764 9.764 0 01-10.212 0 9.776 9.776 0 01-1.788-1.415 9.776 9.776 0 01-1.415-1.788 9.764 9.764 0 010-10.212 9.774 9.774 0 011.415-1.788A9.774 9.774 0 016.894 3.69a9.764 9.764 0 0110.211 0zM14.121 9.88a2.985 2.985 0 00-1.11-.704 3.015 3.015 0 00-2.022 0 2.985 2.985 0 00-1.11.704c-.326.325-.56.705-.704 1.11a3.015 3.015 0 000 2.022c.144.405.378.785.704 1.11.325.326.705.56 1.11.704.652.233 1.37.233 2.022 0a2.985 2.985 0 001.11-.704c.326-.325.56-.705.704-1.11a3.016 3.016 0 000-2.022 2.985 2.985 0 00-.704-1.11z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/light-bulb.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.light_bulb />

      <.light_bulb class="h-6 w-6 text-gray-500" />

  or as a function

      <%= light_bulb() %>

      <%= light_bulb(class: "h-6 w-6 text-gray-500") %>
  """
  def light_bulb(assigns_or_opts \\ [])

  def light_bulb(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 .75a8.25 8.25 0 00-4.135 15.39c.686.398 1.115 1.008 1.134 1.623a.75.75 0 00.577.706c.352.083.71.148 1.074.195.323.041.6-.218.6-.544v-4.661a6.714 6.714 0 01-.937-.171.75.75 0 11.374-1.453 5.261 5.261 0 002.626 0 .75.75 0 11.374 1.452 6.712 6.712 0 01-.937.172v4.66c0 .327.277.586.6.545.364-.047.722-.112 1.074-.195a.75.75 0 00.577-.706c.02-.615.448-1.225 1.134-1.623A8.25 8.25 0 0012 .75z"/>
      <path fill-rule="evenodd" d="M9.013 19.9a.75.75 0 01.877-.597 11.319 11.319 0 004.22 0 .75.75 0 11.28 1.473 12.819 12.819 0 01-4.78 0 .75.75 0 01-.597-.876zM9.754 22.344a.75.75 0 01.824-.668 13.682 13.682 0 002.844 0 .75.75 0 11.156 1.492 15.156 15.156 0 01-3.156 0 .75.75 0 01-.668-.824z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def light_bulb(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M12 .75a8.25 8.25 0 00-4.135 15.39c.686.398 1.115 1.008 1.134 1.623a.75.75 0 00.577.706c.352.083.71.148 1.074.195.323.041.6-.218.6-.544v-4.661a6.714 6.714 0 01-.937-.171.75.75 0 11.374-1.453 5.261 5.261 0 002.626 0 .75.75 0 11.374 1.452 6.712 6.712 0 01-.937.172v4.66c0 .327.277.586.6.545.364-.047.722-.112 1.074-.195a.75.75 0 00.577-.706c.02-.615.448-1.225 1.134-1.623A8.25 8.25 0 0012 .75z\"/>\n  <path fill-rule=\"evenodd\" d=\"M9.013 19.9a.75.75 0 01.877-.597 11.319 11.319 0 004.22 0 .75.75 0 11.28 1.473 12.819 12.819 0 01-4.78 0 .75.75 0 01-.597-.876zM9.754 22.344a.75.75 0 01.824-.668 13.682 13.682 0 002.844 0 .75.75 0 11.156 1.492 15.156 15.156 0 01-3.156 0 .75.75 0 01-.668-.824z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/link.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.link />

      <.link class="h-6 w-6 text-gray-500" />

  or as a function

      <%= link() %>

      <%= link(class: "h-6 w-6 text-gray-500") %>
  """
  def link(assigns_or_opts \\ [])

  def link(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M19.902 4.098a3.75 3.75 0 00-5.304 0l-4.5 4.5a3.75 3.75 0 001.035 6.037.75.75 0 01-.646 1.353 5.25 5.25 0 01-1.449-8.45l4.5-4.5a5.25 5.25 0 117.424 7.424l-1.757 1.757a.75.75 0 11-1.06-1.06l1.757-1.757a3.75 3.75 0 000-5.304zm-7.389 4.267a.75.75 0 011-.353 5.25 5.25 0 011.449 8.45l-4.5 4.5a5.25 5.25 0 11-7.424-7.424l1.757-1.757a.75.75 0 111.06 1.06l-1.757 1.757a3.75 3.75 0 105.304 5.304l4.5-4.5a3.75 3.75 0 00-1.035-6.037.75.75 0 01-.354-1z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def link(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M19.902 4.098a3.75 3.75 0 00-5.304 0l-4.5 4.5a3.75 3.75 0 001.035 6.037.75.75 0 01-.646 1.353 5.25 5.25 0 01-1.449-8.45l4.5-4.5a5.25 5.25 0 117.424 7.424l-1.757 1.757a.75.75 0 11-1.06-1.06l1.757-1.757a3.75 3.75 0 000-5.304zm-7.389 4.267a.75.75 0 011-.353 5.25 5.25 0 011.449 8.45l-4.5 4.5a5.25 5.25 0 11-7.424-7.424l1.757-1.757a.75.75 0 111.06 1.06l-1.757 1.757a3.75 3.75 0 105.304 5.304l4.5-4.5a3.75 3.75 0 00-1.035-6.037.75.75 0 01-.354-1z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/list-bullet.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.list_bullet />

      <.list_bullet class="h-6 w-6 text-gray-500" />

  or as a function

      <%= list_bullet() %>

      <%= list_bullet(class: "h-6 w-6 text-gray-500") %>
  """
  def list_bullet(assigns_or_opts \\ [])

  def list_bullet(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.625 6.75a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm4.875 0A.75.75 0 018.25 6h12a.75.75 0 010 1.5h-12a.75.75 0 01-.75-.75zM2.625 12a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zM7.5 12a.75.75 0 01.75-.75h12a.75.75 0 010 1.5h-12A.75.75 0 017.5 12zm-4.875 5.25a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm4.875 0a.75.75 0 01.75-.75h12a.75.75 0 010 1.5h-12a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def list_bullet(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.625 6.75a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm4.875 0A.75.75 0 018.25 6h12a.75.75 0 010 1.5h-12a.75.75 0 01-.75-.75zM2.625 12a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zM7.5 12a.75.75 0 01.75-.75h12a.75.75 0 010 1.5h-12A.75.75 0 017.5 12zm-4.875 5.25a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm4.875 0a.75.75 0 01.75-.75h12a.75.75 0 010 1.5h-12a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/lock-closed.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.lock_closed />

      <.lock_closed class="h-6 w-6 text-gray-500" />

  or as a function

      <%= lock_closed() %>

      <%= lock_closed(class: "h-6 w-6 text-gray-500") %>
  """
  def lock_closed(assigns_or_opts \\ [])

  def lock_closed(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 1.5a5.25 5.25 0 00-5.25 5.25v3a3 3 0 00-3 3v6.75a3 3 0 003 3h10.5a3 3 0 003-3v-6.75a3 3 0 00-3-3v-3c0-2.9-2.35-5.25-5.25-5.25zm3.75 8.25v-3a3.75 3.75 0 10-7.5 0v3h7.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def lock_closed(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 1.5a5.25 5.25 0 00-5.25 5.25v3a3 3 0 00-3 3v6.75a3 3 0 003 3h10.5a3 3 0 003-3v-6.75a3 3 0 00-3-3v-3c0-2.9-2.35-5.25-5.25-5.25zm3.75 8.25v-3a3.75 3.75 0 10-7.5 0v3h7.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/lock-open.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.lock_open />

      <.lock_open class="h-6 w-6 text-gray-500" />

  or as a function

      <%= lock_open() %>

      <%= lock_open(class: "h-6 w-6 text-gray-500") %>
  """
  def lock_open(assigns_or_opts \\ [])

  def lock_open(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M18 1.5c2.9 0 5.25 2.35 5.25 5.25v3.75a.75.75 0 01-1.5 0V6.75a3.75 3.75 0 10-7.5 0v3a3 3 0 013 3v6.75a3 3 0 01-3 3H3.75a3 3 0 01-3-3v-6.75a3 3 0 013-3h9v-3c0-2.9 2.35-5.25 5.25-5.25z"/>
    </svg>
    """
  end

  def lock_open(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M18 1.5c2.9 0 5.25 2.35 5.25 5.25v3.75a.75.75 0 01-1.5 0V6.75a3.75 3.75 0 10-7.5 0v3a3 3 0 013 3v6.75a3 3 0 01-3 3H3.75a3 3 0 01-3-3v-6.75a3 3 0 013-3h9v-3c0-2.9 2.35-5.25 5.25-5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/magnifying-glass-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.magnifying_glass_circle />

      <.magnifying_glass_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= magnifying_glass_circle() %>

      <%= magnifying_glass_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def magnifying_glass_circle(assigns_or_opts \\ [])

  def magnifying_glass_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M8.25 10.875a2.625 2.625 0 115.25 0 2.625 2.625 0 01-5.25 0z"/>
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-1.125 4.5a4.125 4.125 0 102.338 7.524l2.007 2.006a.75.75 0 101.06-1.06l-2.006-2.007a4.125 4.125 0 00-3.399-6.463z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def magnifying_glass_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M8.25 10.875a2.625 2.625 0 115.25 0 2.625 2.625 0 01-5.25 0z\"/>\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-1.125 4.5a4.125 4.125 0 102.338 7.524l2.007 2.006a.75.75 0 101.06-1.06l-2.006-2.007a4.125 4.125 0 00-3.399-6.463z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/magnifying-glass-minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.magnifying_glass_minus />

      <.magnifying_glass_minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= magnifying_glass_minus() %>

      <%= magnifying_glass_minus(class: "h-6 w-6 text-gray-500") %>
  """
  def magnifying_glass_minus(assigns_or_opts \\ [])

  def magnifying_glass_minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M10.5 3.75a6.75 6.75 0 100 13.5 6.75 6.75 0 000-13.5zM2.25 10.5a8.25 8.25 0 1114.59 5.28l4.69 4.69a.75.75 0 11-1.06 1.06l-4.69-4.69A8.25 8.25 0 012.25 10.5zm4.5 0a.75.75 0 01.75-.75h6a.75.75 0 010 1.5h-6a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def magnifying_glass_minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M10.5 3.75a6.75 6.75 0 100 13.5 6.75 6.75 0 000-13.5zM2.25 10.5a8.25 8.25 0 1114.59 5.28l4.69 4.69a.75.75 0 11-1.06 1.06l-4.69-4.69A8.25 8.25 0 012.25 10.5zm4.5 0a.75.75 0 01.75-.75h6a.75.75 0 010 1.5h-6a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/magnifying-glass-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.magnifying_glass_plus />

      <.magnifying_glass_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= magnifying_glass_plus() %>

      <%= magnifying_glass_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def magnifying_glass_plus(assigns_or_opts \\ [])

  def magnifying_glass_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M10.5 3.75a6.75 6.75 0 100 13.5 6.75 6.75 0 000-13.5zM2.25 10.5a8.25 8.25 0 1114.59 5.28l4.69 4.69a.75.75 0 11-1.06 1.06l-4.69-4.69A8.25 8.25 0 012.25 10.5zm8.25-3.75a.75.75 0 01.75.75v2.25h2.25a.75.75 0 010 1.5h-2.25v2.25a.75.75 0 01-1.5 0v-2.25H7.5a.75.75 0 010-1.5h2.25V7.5a.75.75 0 01.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def magnifying_glass_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M10.5 3.75a6.75 6.75 0 100 13.5 6.75 6.75 0 000-13.5zM2.25 10.5a8.25 8.25 0 1114.59 5.28l4.69 4.69a.75.75 0 11-1.06 1.06l-4.69-4.69A8.25 8.25 0 012.25 10.5zm8.25-3.75a.75.75 0 01.75.75v2.25h2.25a.75.75 0 010 1.5h-2.25v2.25a.75.75 0 01-1.5 0v-2.25H7.5a.75.75 0 010-1.5h2.25V7.5a.75.75 0 01.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/magnifying-glass.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.magnifying_glass />

      <.magnifying_glass class="h-6 w-6 text-gray-500" />

  or as a function

      <%= magnifying_glass() %>

      <%= magnifying_glass(class: "h-6 w-6 text-gray-500") %>
  """
  def magnifying_glass(assigns_or_opts \\ [])

  def magnifying_glass(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M10.5 3.75a6.75 6.75 0 100 13.5 6.75 6.75 0 000-13.5zM2.25 10.5a8.25 8.25 0 1114.59 5.28l4.69 4.69a.75.75 0 11-1.06 1.06l-4.69-4.69A8.25 8.25 0 012.25 10.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def magnifying_glass(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M10.5 3.75a6.75 6.75 0 100 13.5 6.75 6.75 0 000-13.5zM2.25 10.5a8.25 8.25 0 1114.59 5.28l4.69 4.69a.75.75 0 11-1.06 1.06l-4.69-4.69A8.25 8.25 0 012.25 10.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/map-pin.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.map_pin />

      <.map_pin class="h-6 w-6 text-gray-500" />

  or as a function

      <%= map_pin() %>

      <%= map_pin(class: "h-6 w-6 text-gray-500") %>
  """
  def map_pin(assigns_or_opts \\ [])

  def map_pin(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def map_pin(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/map.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.map />

      <.map class="h-6 w-6 text-gray-500" />

  or as a function

      <%= map() %>

      <%= map(class: "h-6 w-6 text-gray-500") %>
  """
  def map(assigns_or_opts \\ [])

  def map(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M8.161 2.58a1.875 1.875 0 011.678 0l4.993 2.498c.106.052.23.052.336 0l3.869-1.935A1.875 1.875 0 0121.75 4.82v12.485c0 .71-.401 1.36-1.037 1.677l-4.875 2.437a1.875 1.875 0 01-1.676 0l-4.994-2.497a.375.375 0 00-.336 0l-3.868 1.935A1.875 1.875 0 012.25 19.18V6.695c0-.71.401-1.36 1.036-1.677l4.875-2.437zM9 6a.75.75 0 01.75.75V15a.75.75 0 01-1.5 0V6.75A.75.75 0 019 6zm6.75 3a.75.75 0 00-1.5 0v8.25a.75.75 0 001.5 0V9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def map(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M8.161 2.58a1.875 1.875 0 011.678 0l4.993 2.498c.106.052.23.052.336 0l3.869-1.935A1.875 1.875 0 0121.75 4.82v12.485c0 .71-.401 1.36-1.037 1.677l-4.875 2.437a1.875 1.875 0 01-1.676 0l-4.994-2.497a.375.375 0 00-.336 0l-3.868 1.935A1.875 1.875 0 012.25 19.18V6.695c0-.71.401-1.36 1.036-1.677l4.875-2.437zM9 6a.75.75 0 01.75.75V15a.75.75 0 01-1.5 0V6.75A.75.75 0 019 6zm6.75 3a.75.75 0 00-1.5 0v8.25a.75.75 0 001.5 0V9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/megaphone.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.megaphone />

      <.megaphone class="h-6 w-6 text-gray-500" />

  or as a function

      <%= megaphone() %>

      <%= megaphone(class: "h-6 w-6 text-gray-500") %>
  """
  def megaphone(assigns_or_opts \\ [])

  def megaphone(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M16.881 4.346A23.112 23.112 0 018.25 6H7.5a5.25 5.25 0 00-.88 10.427 21.593 21.593 0 001.378 3.94c.464 1.004 1.674 1.32 2.582.796l.657-.379c.88-.508 1.165-1.592.772-2.468a17.116 17.116 0 01-.628-1.607c1.918.258 3.76.75 5.5 1.446A21.727 21.727 0 0018 11.25c0-2.413-.393-4.735-1.119-6.904zM18.26 3.74a23.22 23.22 0 011.24 7.51 23.22 23.22 0 01-1.24 7.51c-.055.161-.111.322-.17.482a.75.75 0 101.409.516 24.555 24.555 0 001.415-6.43 2.992 2.992 0 00.836-2.078c0-.806-.319-1.54-.836-2.078a24.65 24.65 0 00-1.415-6.43.75.75 0 10-1.409.516c.059.16.116.321.17.483z"/>
    </svg>
    """
  end

  def megaphone(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M16.881 4.346A23.112 23.112 0 018.25 6H7.5a5.25 5.25 0 00-.88 10.427 21.593 21.593 0 001.378 3.94c.464 1.004 1.674 1.32 2.582.796l.657-.379c.88-.508 1.165-1.592.772-2.468a17.116 17.116 0 01-.628-1.607c1.918.258 3.76.75 5.5 1.446A21.727 21.727 0 0018 11.25c0-2.413-.393-4.735-1.119-6.904zM18.26 3.74a23.22 23.22 0 011.24 7.51 23.22 23.22 0 01-1.24 7.51c-.055.161-.111.322-.17.482a.75.75 0 101.409.516 24.555 24.555 0 001.415-6.43 2.992 2.992 0 00.836-2.078c0-.806-.319-1.54-.836-2.078a24.65 24.65 0 00-1.415-6.43.75.75 0 10-1.409.516c.059.16.116.321.17.483z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/microphone.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.microphone />

      <.microphone class="h-6 w-6 text-gray-500" />

  or as a function

      <%= microphone() %>

      <%= microphone(class: "h-6 w-6 text-gray-500") %>
  """
  def microphone(assigns_or_opts \\ [])

  def microphone(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M8.25 4.5a3.75 3.75 0 117.5 0v8.25a3.75 3.75 0 11-7.5 0V4.5z"/>
      <path d="M6 10.5a.75.75 0 01.75.75v1.5a5.25 5.25 0 1010.5 0v-1.5a.75.75 0 011.5 0v1.5a6.751 6.751 0 01-6 6.709v2.291h3a.75.75 0 010 1.5h-7.5a.75.75 0 010-1.5h3v-2.291a6.751 6.751 0 01-6-6.709v-1.5A.75.75 0 016 10.5z"/>
    </svg>
    """
  end

  def microphone(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M8.25 4.5a3.75 3.75 0 117.5 0v8.25a3.75 3.75 0 11-7.5 0V4.5z\"/>\n  <path d=\"M6 10.5a.75.75 0 01.75.75v1.5a5.25 5.25 0 1010.5 0v-1.5a.75.75 0 011.5 0v1.5a6.751 6.751 0 01-6 6.709v2.291h3a.75.75 0 010 1.5h-7.5a.75.75 0 010-1.5h3v-2.291a6.751 6.751 0 01-6-6.709v-1.5A.75.75 0 016 10.5z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/minus-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.minus_circle />

      <.minus_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= minus_circle() %>

      <%= minus_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def minus_circle(assigns_or_opts \\ [])

  def minus_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm3 10.5a.75.75 0 000-1.5H9a.75.75 0 000 1.5h6z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def minus_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm3 10.5a.75.75 0 000-1.5H9a.75.75 0 000 1.5h6z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.minus />

      <.minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= minus() %>

      <%= minus(class: "h-6 w-6 text-gray-500") %>
  """
  def minus(assigns_or_opts \\ [])

  def minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 12a.75.75 0 01.75-.75h18a.75.75 0 010 1.5H3a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 12a.75.75 0 01.75-.75h18a.75.75 0 010 1.5H3a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/moon.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.moon />

      <.moon class="h-6 w-6 text-gray-500" />

  or as a function

      <%= moon() %>

      <%= moon(class: "h-6 w-6 text-gray-500") %>
  """
  def moon(assigns_or_opts \\ [])

  def moon(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M9.528 1.718a.75.75 0 01.162.819A8.97 8.97 0 009 6a9 9 0 009 9 8.97 8.97 0 003.463-.69.75.75 0 01.981.98 10.503 10.503 0 01-9.694 6.46c-5.799 0-10.5-4.701-10.5-10.5 0-4.368 2.667-8.112 6.46-9.694a.75.75 0 01.818.162z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def moon(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M9.528 1.718a.75.75 0 01.162.819A8.97 8.97 0 009 6a9 9 0 009 9 8.97 8.97 0 003.463-.69.75.75 0 01.981.98 10.503 10.503 0 01-9.694 6.46c-5.799 0-10.5-4.701-10.5-10.5 0-4.368 2.667-8.112 6.46-9.694a.75.75 0 01.818.162z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/musical-note.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.musical_note />

      <.musical_note class="h-6 w-6 text-gray-500" />

  or as a function

      <%= musical_note() %>

      <%= musical_note(class: "h-6 w-6 text-gray-500") %>
  """
  def musical_note(assigns_or_opts \\ [])

  def musical_note(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M19.952 1.651a.75.75 0 01.298.599V16.303a3 3 0 01-2.176 2.884l-1.32.377a2.553 2.553 0 11-1.403-4.909l2.311-.66a1.5 1.5 0 001.088-1.442V6.994l-9 2.572v9.737a3 3 0 01-2.176 2.884l-1.32.377a2.553 2.553 0 11-1.402-4.909l2.31-.66a1.5 1.5 0 001.088-1.442V9.017 5.25a.75.75 0 01.544-.721l10.5-3a.75.75 0 01.658.122z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def musical_note(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M19.952 1.651a.75.75 0 01.298.599V16.303a3 3 0 01-2.176 2.884l-1.32.377a2.553 2.553 0 11-1.403-4.909l2.311-.66a1.5 1.5 0 001.088-1.442V6.994l-9 2.572v9.737a3 3 0 01-2.176 2.884l-1.32.377a2.553 2.553 0 11-1.402-4.909l2.31-.66a1.5 1.5 0 001.088-1.442V9.017 5.25a.75.75 0 01.544-.721l10.5-3a.75.75 0 01.658.122z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/newspaper.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.newspaper />

      <.newspaper class="h-6 w-6 text-gray-500" />

  or as a function

      <%= newspaper() %>

      <%= newspaper(class: "h-6 w-6 text-gray-500") %>
  """
  def newspaper(assigns_or_opts \\ [])

  def newspaper(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.125 3C3.089 3 2.25 3.84 2.25 4.875V18a3 3 0 003 3h15a3 3 0 01-3-3V4.875C17.25 3.839 16.41 3 15.375 3H4.125zM12 9.75a.75.75 0 000 1.5h1.5a.75.75 0 000-1.5H12zm-.75-2.25a.75.75 0 01.75-.75h1.5a.75.75 0 010 1.5H12a.75.75 0 01-.75-.75zM6 12.75a.75.75 0 000 1.5h7.5a.75.75 0 000-1.5H6zm-.75 3.75a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5H6a.75.75 0 01-.75-.75zM6 6.75a.75.75 0 00-.75.75v3c0 .414.336.75.75.75h3a.75.75 0 00.75-.75v-3A.75.75 0 009 6.75H6z" clip-rule="evenodd"/>
      <path d="M18.75 6.75h1.875c.621 0 1.125.504 1.125 1.125V18a1.5 1.5 0 01-3 0V6.75z"/>
    </svg>
    """
  end

  def newspaper(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.125 3C3.089 3 2.25 3.84 2.25 4.875V18a3 3 0 003 3h15a3 3 0 01-3-3V4.875C17.25 3.839 16.41 3 15.375 3H4.125zM12 9.75a.75.75 0 000 1.5h1.5a.75.75 0 000-1.5H12zm-.75-2.25a.75.75 0 01.75-.75h1.5a.75.75 0 010 1.5H12a.75.75 0 01-.75-.75zM6 12.75a.75.75 0 000 1.5h7.5a.75.75 0 000-1.5H6zm-.75 3.75a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5H6a.75.75 0 01-.75-.75zM6 6.75a.75.75 0 00-.75.75v3c0 .414.336.75.75.75h3a.75.75 0 00.75-.75v-3A.75.75 0 009 6.75H6z\" clip-rule=\"evenodd\"/>\n  <path d=\"M18.75 6.75h1.875c.621 0 1.125.504 1.125 1.125V18a1.5 1.5 0 01-3 0V6.75z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/no-symbol.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.no_symbol />

      <.no_symbol class="h-6 w-6 text-gray-500" />

  or as a function

      <%= no_symbol() %>

      <%= no_symbol(class: "h-6 w-6 text-gray-500") %>
  """
  def no_symbol(assigns_or_opts \\ [])

  def no_symbol(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M6.72 5.66l11.62 11.62A8.25 8.25 0 006.72 5.66zm10.56 12.68L5.66 6.72a8.25 8.25 0 0011.62 11.62zM5.105 5.106c3.807-3.808 9.98-3.808 13.788 0 3.808 3.807 3.808 9.98 0 13.788-3.807 3.808-9.98 3.808-13.788 0-3.808-3.807-3.808-9.98 0-13.788z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def no_symbol(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M6.72 5.66l11.62 11.62A8.25 8.25 0 006.72 5.66zm10.56 12.68L5.66 6.72a8.25 8.25 0 0011.62 11.62zM5.105 5.106c3.807-3.808 9.98-3.808 13.788 0 3.808 3.807 3.808 9.98 0 13.788-3.807 3.808-9.98 3.808-13.788 0-3.808-3.807-3.808-9.98 0-13.788z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/paper-airplane.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.paper_airplane />

      <.paper_airplane class="h-6 w-6 text-gray-500" />

  or as a function

      <%= paper_airplane() %>

      <%= paper_airplane(class: "h-6 w-6 text-gray-500") %>
  """
  def paper_airplane(assigns_or_opts \\ [])

  def paper_airplane(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.478 2.405a.75.75 0 00-.926.94l2.432 7.905H13.5a.75.75 0 010 1.5H4.984l-2.432 7.905a.75.75 0 00.926.94 60.519 60.519 0 0018.445-8.986.75.75 0 000-1.218A60.517 60.517 0 003.478 2.405z"/>
    </svg>
    """
  end

  def paper_airplane(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M3.478 2.405a.75.75 0 00-.926.94l2.432 7.905H13.5a.75.75 0 010 1.5H4.984l-2.432 7.905a.75.75 0 00.926.94 60.519 60.519 0 0018.445-8.986.75.75 0 000-1.218A60.517 60.517 0 003.478 2.405z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/paper-clip.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.paper_clip />

      <.paper_clip class="h-6 w-6 text-gray-500" />

  or as a function

      <%= paper_clip() %>

      <%= paper_clip(class: "h-6 w-6 text-gray-500") %>
  """
  def paper_clip(assigns_or_opts \\ [])

  def paper_clip(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M18.97 3.659a2.25 2.25 0 00-3.182 0l-10.94 10.94a3.75 3.75 0 105.304 5.303l7.693-7.693a.75.75 0 011.06 1.06l-7.693 7.693a5.25 5.25 0 11-7.424-7.424l10.939-10.94a3.75 3.75 0 115.303 5.304L9.097 18.835l-.008.008-.007.007-.002.002-.003.002A2.25 2.25 0 015.91 15.66l7.81-7.81a.75.75 0 011.061 1.06l-7.81 7.81a.75.75 0 001.054 1.068L18.97 6.84a2.25 2.25 0 000-3.182z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def paper_clip(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M18.97 3.659a2.25 2.25 0 00-3.182 0l-10.94 10.94a3.75 3.75 0 105.304 5.303l7.693-7.693a.75.75 0 011.06 1.06l-7.693 7.693a5.25 5.25 0 11-7.424-7.424l10.939-10.94a3.75 3.75 0 115.303 5.304L9.097 18.835l-.008.008-.007.007-.002.002-.003.002A2.25 2.25 0 015.91 15.66l7.81-7.81a.75.75 0 011.061 1.06l-7.81 7.81a.75.75 0 001.054 1.068L18.97 6.84a2.25 2.25 0 000-3.182z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/pause.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.pause />

      <.pause class="h-6 w-6 text-gray-500" />

  or as a function

      <%= pause() %>

      <%= pause(class: "h-6 w-6 text-gray-500") %>
  """
  def pause(assigns_or_opts \\ [])

  def pause(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M6.75 5.25a.75.75 0 01.75-.75H9a.75.75 0 01.75.75v13.5a.75.75 0 01-.75.75H7.5a.75.75 0 01-.75-.75V5.25zm7.5 0A.75.75 0 0115 4.5h1.5a.75.75 0 01.75.75v13.5a.75.75 0 01-.75.75H15a.75.75 0 01-.75-.75V5.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def pause(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M6.75 5.25a.75.75 0 01.75-.75H9a.75.75 0 01.75.75v13.5a.75.75 0 01-.75.75H7.5a.75.75 0 01-.75-.75V5.25zm7.5 0A.75.75 0 0115 4.5h1.5a.75.75 0 01.75.75v13.5a.75.75 0 01-.75.75H15a.75.75 0 01-.75-.75V5.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/pencil-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.pencil_square />

      <.pencil_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= pencil_square() %>

      <%= pencil_square(class: "h-6 w-6 text-gray-500") %>
  """
  def pencil_square(assigns_or_opts \\ [])

  def pencil_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M21.731 2.269a2.625 2.625 0 00-3.712 0l-1.157 1.157 3.712 3.712 1.157-1.157a2.625 2.625 0 000-3.712zM19.513 8.199l-3.712-3.712-8.4 8.4a5.25 5.25 0 00-1.32 2.214l-.8 2.685a.75.75 0 00.933.933l2.685-.8a5.25 5.25 0 002.214-1.32l8.4-8.4z"/>
      <path d="M5.25 5.25a3 3 0 00-3 3v10.5a3 3 0 003 3h10.5a3 3 0 003-3V13.5a.75.75 0 00-1.5 0v5.25a1.5 1.5 0 01-1.5 1.5H5.25a1.5 1.5 0 01-1.5-1.5V8.25a1.5 1.5 0 011.5-1.5h5.25a.75.75 0 000-1.5H5.25z"/>
    </svg>
    """
  end

  def pencil_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M21.731 2.269a2.625 2.625 0 00-3.712 0l-1.157 1.157 3.712 3.712 1.157-1.157a2.625 2.625 0 000-3.712zM19.513 8.199l-3.712-3.712-8.4 8.4a5.25 5.25 0 00-1.32 2.214l-.8 2.685a.75.75 0 00.933.933l2.685-.8a5.25 5.25 0 002.214-1.32l8.4-8.4z\"/>\n  <path d=\"M5.25 5.25a3 3 0 00-3 3v10.5a3 3 0 003 3h10.5a3 3 0 003-3V13.5a.75.75 0 00-1.5 0v5.25a1.5 1.5 0 01-1.5 1.5H5.25a1.5 1.5 0 01-1.5-1.5V8.25a1.5 1.5 0 011.5-1.5h5.25a.75.75 0 000-1.5H5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/pencil.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.pencil />

      <.pencil class="h-6 w-6 text-gray-500" />

  or as a function

      <%= pencil() %>

      <%= pencil(class: "h-6 w-6 text-gray-500") %>
  """
  def pencil(assigns_or_opts \\ [])

  def pencil(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M21.731 2.269a2.625 2.625 0 00-3.712 0l-1.157 1.157 3.712 3.712 1.157-1.157a2.625 2.625 0 000-3.712zM19.513 8.199l-3.712-3.712-12.15 12.15a5.25 5.25 0 00-1.32 2.214l-.8 2.685a.75.75 0 00.933.933l2.685-.8a5.25 5.25 0 002.214-1.32L19.513 8.2z"/>
    </svg>
    """
  end

  def pencil(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M21.731 2.269a2.625 2.625 0 00-3.712 0l-1.157 1.157 3.712 3.712 1.157-1.157a2.625 2.625 0 000-3.712zM19.513 8.199l-3.712-3.712-12.15 12.15a5.25 5.25 0 00-1.32 2.214l-.8 2.685a.75.75 0 00.933.933l2.685-.8a5.25 5.25 0 002.214-1.32L19.513 8.2z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/phone-arrow-down-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.phone_arrow_down_left />

      <.phone_arrow_down_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= phone_arrow_down_left() %>

      <%= phone_arrow_down_left(class: "h-6 w-6 text-gray-500") %>
  """
  def phone_arrow_down_left(assigns_or_opts \\ [])

  def phone_arrow_down_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M19.5 9.75a.75.75 0 01-.75.75h-4.5a.75.75 0 01-.75-.75v-4.5a.75.75 0 011.5 0v2.69l4.72-4.72a.75.75 0 111.06 1.06L16.06 9h2.69a.75.75 0 01.75.75z" clip-rule="evenodd"/>
      <path fill-rule="evenodd" d="M1.5 4.5a3 3 0 013-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 01-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 006.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 011.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 01-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def phone_arrow_down_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M19.5 9.75a.75.75 0 01-.75.75h-4.5a.75.75 0 01-.75-.75v-4.5a.75.75 0 011.5 0v2.69l4.72-4.72a.75.75 0 111.06 1.06L16.06 9h2.69a.75.75 0 01.75.75z\" clip-rule=\"evenodd\"/>\n  <path fill-rule=\"evenodd\" d=\"M1.5 4.5a3 3 0 013-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 01-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 006.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 011.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 01-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/phone-arrow-up-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.phone_arrow_up_right />

      <.phone_arrow_up_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= phone_arrow_up_right() %>

      <%= phone_arrow_up_right(class: "h-6 w-6 text-gray-500") %>
  """
  def phone_arrow_up_right(assigns_or_opts \\ [])

  def phone_arrow_up_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M15 3.75a.75.75 0 01.75-.75h4.5a.75.75 0 01.75.75v4.5a.75.75 0 01-1.5 0V5.56l-4.72 4.72a.75.75 0 11-1.06-1.06l4.72-4.72h-2.69a.75.75 0 01-.75-.75z" clip-rule="evenodd"/>
      <path fill-rule="evenodd" d="M1.5 4.5a3 3 0 013-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 01-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 006.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 011.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 01-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def phone_arrow_up_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M15 3.75a.75.75 0 01.75-.75h4.5a.75.75 0 01.75.75v4.5a.75.75 0 01-1.5 0V5.56l-4.72 4.72a.75.75 0 11-1.06-1.06l4.72-4.72h-2.69a.75.75 0 01-.75-.75z\" clip-rule=\"evenodd\"/>\n  <path fill-rule=\"evenodd\" d=\"M1.5 4.5a3 3 0 013-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 01-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 006.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 011.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 01-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/phone-x-mark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.phone_x_mark />

      <.phone_x_mark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= phone_x_mark() %>

      <%= phone_x_mark(class: "h-6 w-6 text-gray-500") %>
  """
  def phone_x_mark(assigns_or_opts \\ [])

  def phone_x_mark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M15.22 3.22a.75.75 0 011.06 0L18 4.94l1.72-1.72a.75.75 0 111.06 1.06L19.06 6l1.72 1.72a.75.75 0 01-1.06 1.06L18 7.06l-1.72 1.72a.75.75 0 11-1.06-1.06L16.94 6l-1.72-1.72a.75.75 0 010-1.06zM1.5 4.5a3 3 0 013-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 01-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 006.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 011.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 01-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def phone_x_mark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M15.22 3.22a.75.75 0 011.06 0L18 4.94l1.72-1.72a.75.75 0 111.06 1.06L19.06 6l1.72 1.72a.75.75 0 01-1.06 1.06L18 7.06l-1.72 1.72a.75.75 0 11-1.06-1.06L16.94 6l-1.72-1.72a.75.75 0 010-1.06zM1.5 4.5a3 3 0 013-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 01-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 006.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 011.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 01-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/phone.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.phone />

      <.phone class="h-6 w-6 text-gray-500" />

  or as a function

      <%= phone() %>

      <%= phone(class: "h-6 w-6 text-gray-500") %>
  """
  def phone(assigns_or_opts \\ [])

  def phone(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M1.5 4.5a3 3 0 013-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 01-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 006.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 011.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 01-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def phone(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M1.5 4.5a3 3 0 013-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 01-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 006.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 011.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 01-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/photo.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.photo />

      <.photo class="h-6 w-6 text-gray-500" />

  or as a function

      <%= photo() %>

      <%= photo(class: "h-6 w-6 text-gray-500") %>
  """
  def photo(assigns_or_opts \\ [])

  def photo(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M1.5 6a2.25 2.25 0 012.25-2.25h16.5A2.25 2.25 0 0122.5 6v12a2.25 2.25 0 01-2.25 2.25H3.75A2.25 2.25 0 011.5 18V6zM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0021 18v-1.94l-2.69-2.689a1.5 1.5 0 00-2.12 0l-.88.879.97.97a.75.75 0 11-1.06 1.06l-5.16-5.159a1.5 1.5 0 00-2.12 0L3 16.061zm10.125-7.81a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def photo(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M1.5 6a2.25 2.25 0 012.25-2.25h16.5A2.25 2.25 0 0122.5 6v12a2.25 2.25 0 01-2.25 2.25H3.75A2.25 2.25 0 011.5 18V6zM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0021 18v-1.94l-2.69-2.689a1.5 1.5 0 00-2.12 0l-.88.879.97.97a.75.75 0 11-1.06 1.06l-5.16-5.159a1.5 1.5 0 00-2.12 0L3 16.061zm10.125-7.81a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/play-pause.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.play_pause />

      <.play_pause class="h-6 w-6 text-gray-500" />

  or as a function

      <%= play_pause() %>

      <%= play_pause(class: "h-6 w-6 text-gray-500") %>
  """
  def play_pause(assigns_or_opts \\ [])

  def play_pause(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M15 6.75a.75.75 0 00-.75.75V18a.75.75 0 00.75.75h.75a.75.75 0 00.75-.75V7.5a.75.75 0 00-.75-.75H15zM20.25 6.75a.75.75 0 00-.75.75V18c0 .414.336.75.75.75H21a.75.75 0 00.75-.75V7.5a.75.75 0 00-.75-.75h-.75zM5.055 7.06C3.805 6.347 2.25 7.25 2.25 8.69v8.122c0 1.44 1.555 2.343 2.805 1.628l7.108-4.061c1.26-.72 1.26-2.536 0-3.256L5.055 7.061z"/>
    </svg>
    """
  end

  def play_pause(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M15 6.75a.75.75 0 00-.75.75V18a.75.75 0 00.75.75h.75a.75.75 0 00.75-.75V7.5a.75.75 0 00-.75-.75H15zM20.25 6.75a.75.75 0 00-.75.75V18c0 .414.336.75.75.75H21a.75.75 0 00.75-.75V7.5a.75.75 0 00-.75-.75h-.75zM5.055 7.06C3.805 6.347 2.25 7.25 2.25 8.69v8.122c0 1.44 1.555 2.343 2.805 1.628l7.108-4.061c1.26-.72 1.26-2.536 0-3.256L5.055 7.061z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/play.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.play />

      <.play class="h-6 w-6 text-gray-500" />

  or as a function

      <%= play() %>

      <%= play(class: "h-6 w-6 text-gray-500") %>
  """
  def play(assigns_or_opts \\ [])

  def play(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.5 5.653c0-1.426 1.529-2.33 2.779-1.643l11.54 6.348c1.295.712 1.295 2.573 0 3.285L7.28 19.991c-1.25.687-2.779-.217-2.779-1.643V5.653z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def play(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.5 5.653c0-1.426 1.529-2.33 2.779-1.643l11.54 6.348c1.295.712 1.295 2.573 0 3.285L7.28 19.991c-1.25.687-2.779-.217-2.779-1.643V5.653z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/plus-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.plus_circle />

      <.plus_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= plus_circle() %>

      <%= plus_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def plus_circle(assigns_or_opts \\ [])

  def plus_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM12.75 9a.75.75 0 00-1.5 0v2.25H9a.75.75 0 000 1.5h2.25V15a.75.75 0 001.5 0v-2.25H15a.75.75 0 000-1.5h-2.25V9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def plus_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zM12.75 9a.75.75 0 00-1.5 0v2.25H9a.75.75 0 000 1.5h2.25V15a.75.75 0 001.5 0v-2.25H15a.75.75 0 000-1.5h-2.25V9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.plus />

      <.plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= plus() %>

      <%= plus(class: "h-6 w-6 text-gray-500") %>
  """
  def plus(assigns_or_opts \\ [])

  def plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25a.75.75 0 01.75.75v8.25H21a.75.75 0 010 1.5h-8.25V21a.75.75 0 01-1.5 0v-8.25H3a.75.75 0 010-1.5h8.25V3a.75.75 0 01.75-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25a.75.75 0 01.75.75v8.25H21a.75.75 0 010 1.5h-8.25V21a.75.75 0 01-1.5 0v-8.25H3a.75.75 0 010-1.5h8.25V3a.75.75 0 01.75-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/presentation-chart-bar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.presentation_chart_bar />

      <.presentation_chart_bar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= presentation_chart_bar() %>

      <%= presentation_chart_bar(class: "h-6 w-6 text-gray-500") %>
  """
  def presentation_chart_bar(assigns_or_opts \\ [])

  def presentation_chart_bar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 2.25a.75.75 0 000 1.5H3v10.5a3 3 0 003 3h1.21l-1.172 3.513a.75.75 0 001.424.474l.329-.987h8.418l.33.987a.75.75 0 001.422-.474l-1.17-3.513H18a3 3 0 003-3V3.75h.75a.75.75 0 000-1.5H2.25zm6.04 16.5l.5-1.5h6.42l.5 1.5H8.29zm7.46-12a.75.75 0 00-1.5 0v6a.75.75 0 001.5 0v-6zm-3 2.25a.75.75 0 00-1.5 0v3.75a.75.75 0 001.5 0V9zm-3 2.25a.75.75 0 00-1.5 0v1.5a.75.75 0 001.5 0v-1.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def presentation_chart_bar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 2.25a.75.75 0 000 1.5H3v10.5a3 3 0 003 3h1.21l-1.172 3.513a.75.75 0 001.424.474l.329-.987h8.418l.33.987a.75.75 0 001.422-.474l-1.17-3.513H18a3 3 0 003-3V3.75h.75a.75.75 0 000-1.5H2.25zm6.04 16.5l.5-1.5h6.42l.5 1.5H8.29zm7.46-12a.75.75 0 00-1.5 0v6a.75.75 0 001.5 0v-6zm-3 2.25a.75.75 0 00-1.5 0v3.75a.75.75 0 001.5 0V9zm-3 2.25a.75.75 0 00-1.5 0v1.5a.75.75 0 001.5 0v-1.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/presentation-chart-line.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.presentation_chart_line />

      <.presentation_chart_line class="h-6 w-6 text-gray-500" />

  or as a function

      <%= presentation_chart_line() %>

      <%= presentation_chart_line(class: "h-6 w-6 text-gray-500") %>
  """
  def presentation_chart_line(assigns_or_opts \\ [])

  def presentation_chart_line(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 2.25a.75.75 0 000 1.5H3v10.5a3 3 0 003 3h1.21l-1.172 3.513a.75.75 0 001.424.474l.329-.987h8.418l.33.987a.75.75 0 001.422-.474l-1.17-3.513H18a3 3 0 003-3V3.75h.75a.75.75 0 000-1.5H2.25zm6.54 15h6.42l.5 1.5H8.29l.5-1.5zm8.085-8.995a.75.75 0 10-.75-1.299 12.81 12.81 0 00-3.558 3.05L11.03 8.47a.75.75 0 00-1.06 0l-3 3a.75.75 0 101.06 1.06l2.47-2.47 1.617 1.618a.75.75 0 001.146-.102 11.312 11.312 0 013.612-3.321z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def presentation_chart_line(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 2.25a.75.75 0 000 1.5H3v10.5a3 3 0 003 3h1.21l-1.172 3.513a.75.75 0 001.424.474l.329-.987h8.418l.33.987a.75.75 0 001.422-.474l-1.17-3.513H18a3 3 0 003-3V3.75h.75a.75.75 0 000-1.5H2.25zm6.54 15h6.42l.5 1.5H8.29l.5-1.5zm8.085-8.995a.75.75 0 10-.75-1.299 12.81 12.81 0 00-3.558 3.05L11.03 8.47a.75.75 0 00-1.06 0l-3 3a.75.75 0 101.06 1.06l2.47-2.47 1.617 1.618a.75.75 0 001.146-.102 11.312 11.312 0 013.612-3.321z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/printer.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.printer />

      <.printer class="h-6 w-6 text-gray-500" />

  or as a function

      <%= printer() %>

      <%= printer(class: "h-6 w-6 text-gray-500") %>
  """
  def printer(assigns_or_opts \\ [])

  def printer(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M7.875 1.5C6.839 1.5 6 2.34 6 3.375v2.99c-.426.053-.851.11-1.274.174-1.454.218-2.476 1.483-2.476 2.917v6.294a3 3 0 003 3h.27l-.155 1.705A1.875 1.875 0 007.232 22.5h9.536a1.875 1.875 0 001.867-2.045l-.155-1.705h.27a3 3 0 003-3V9.456c0-1.434-1.022-2.7-2.476-2.917A48.716 48.716 0 0018 6.366V3.375c0-1.036-.84-1.875-1.875-1.875h-8.25zM16.5 6.205v-2.83A.375.375 0 0016.125 3h-8.25a.375.375 0 00-.375.375v2.83a49.353 49.353 0 019 0zm-.217 8.265c.178.018.317.16.333.337l.526 5.784a.375.375 0 01-.374.409H7.232a.375.375 0 01-.374-.409l.526-5.784a.373.373 0 01.333-.337 41.741 41.741 0 018.566 0zm.967-3.97a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H18a.75.75 0 01-.75-.75V10.5zM15 9.75a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V10.5a.75.75 0 00-.75-.75H15z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def printer(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M7.875 1.5C6.839 1.5 6 2.34 6 3.375v2.99c-.426.053-.851.11-1.274.174-1.454.218-2.476 1.483-2.476 2.917v6.294a3 3 0 003 3h.27l-.155 1.705A1.875 1.875 0 007.232 22.5h9.536a1.875 1.875 0 001.867-2.045l-.155-1.705h.27a3 3 0 003-3V9.456c0-1.434-1.022-2.7-2.476-2.917A48.716 48.716 0 0018 6.366V3.375c0-1.036-.84-1.875-1.875-1.875h-8.25zM16.5 6.205v-2.83A.375.375 0 0016.125 3h-8.25a.375.375 0 00-.375.375v2.83a49.353 49.353 0 019 0zm-.217 8.265c.178.018.317.16.333.337l.526 5.784a.375.375 0 01-.374.409H7.232a.375.375 0 01-.374-.409l.526-5.784a.373.373 0 01.333-.337 41.741 41.741 0 018.566 0zm.967-3.97a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H18a.75.75 0 01-.75-.75V10.5zM15 9.75a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75V10.5a.75.75 0 00-.75-.75H15z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/puzzle-piece.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.puzzle_piece />

      <.puzzle_piece class="h-6 w-6 text-gray-500" />

  or as a function

      <%= puzzle_piece() %>

      <%= puzzle_piece(class: "h-6 w-6 text-gray-500") %>
  """
  def puzzle_piece(assigns_or_opts \\ [])

  def puzzle_piece(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M11.25 5.337c0-.355-.186-.676-.401-.959a1.647 1.647 0 01-.349-1.003c0-1.036 1.007-1.875 2.25-1.875S15 2.34 15 3.375c0 .369-.128.713-.349 1.003-.215.283-.401.604-.401.959 0 .332.278.598.61.578 1.91-.114 3.79-.342 5.632-.676a.75.75 0 01.878.645 49.17 49.17 0 01.376 5.452.657.657 0 01-.66.664c-.354 0-.675-.186-.958-.401a1.647 1.647 0 00-1.003-.349c-1.035 0-1.875 1.007-1.875 2.25s.84 2.25 1.875 2.25c.369 0 .713-.128 1.003-.349.283-.215.604-.401.959-.401.31 0 .557.262.534.571a48.774 48.774 0 01-.595 4.845.75.75 0 01-.61.61c-1.82.317-3.673.533-5.555.642a.58.58 0 01-.611-.581c0-.355.186-.676.401-.959.221-.29.349-.634.349-1.003 0-1.035-1.007-1.875-2.25-1.875s-2.25.84-2.25 1.875c0 .369.128.713.349 1.003.215.283.401.604.401.959a.641.641 0 01-.658.643 49.118 49.118 0 01-4.708-.36.75.75 0 01-.645-.878c.293-1.614.504-3.257.629-4.924A.53.53 0 005.337 15c-.355 0-.676.186-.959.401-.29.221-.634.349-1.003.349-1.036 0-1.875-1.007-1.875-2.25s.84-2.25 1.875-2.25c.369 0 .713.128 1.003.349.283.215.604.401.959.401a.656.656 0 00.659-.663 47.703 47.703 0 00-.31-4.82.75.75 0 01.83-.832c1.343.155 2.703.254 4.077.294a.64.64 0 00.657-.642z"/>
    </svg>
    """
  end

  def puzzle_piece(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M11.25 5.337c0-.355-.186-.676-.401-.959a1.647 1.647 0 01-.349-1.003c0-1.036 1.007-1.875 2.25-1.875S15 2.34 15 3.375c0 .369-.128.713-.349 1.003-.215.283-.401.604-.401.959 0 .332.278.598.61.578 1.91-.114 3.79-.342 5.632-.676a.75.75 0 01.878.645 49.17 49.17 0 01.376 5.452.657.657 0 01-.66.664c-.354 0-.675-.186-.958-.401a1.647 1.647 0 00-1.003-.349c-1.035 0-1.875 1.007-1.875 2.25s.84 2.25 1.875 2.25c.369 0 .713-.128 1.003-.349.283-.215.604-.401.959-.401.31 0 .557.262.534.571a48.774 48.774 0 01-.595 4.845.75.75 0 01-.61.61c-1.82.317-3.673.533-5.555.642a.58.58 0 01-.611-.581c0-.355.186-.676.401-.959.221-.29.349-.634.349-1.003 0-1.035-1.007-1.875-2.25-1.875s-2.25.84-2.25 1.875c0 .369.128.713.349 1.003.215.283.401.604.401.959a.641.641 0 01-.658.643 49.118 49.118 0 01-4.708-.36.75.75 0 01-.645-.878c.293-1.614.504-3.257.629-4.924A.53.53 0 005.337 15c-.355 0-.676.186-.959.401-.29.221-.634.349-1.003.349-1.036 0-1.875-1.007-1.875-2.25s.84-2.25 1.875-2.25c.369 0 .713.128 1.003.349.283.215.604.401.959.401a.656.656 0 00.659-.663 47.703 47.703 0 00-.31-4.82.75.75 0 01.83-.832c1.343.155 2.703.254 4.077.294a.64.64 0 00.657-.642z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/qr-code.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.qr_code />

      <.qr_code class="h-6 w-6 text-gray-500" />

  or as a function

      <%= qr_code() %>

      <%= qr_code(class: "h-6 w-6 text-gray-500") %>
  """
  def qr_code(assigns_or_opts \\ [])

  def qr_code(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 4.875C3 3.839 3.84 3 4.875 3h4.5c1.036 0 1.875.84 1.875 1.875v4.5c0 1.036-.84 1.875-1.875 1.875h-4.5A1.875 1.875 0 013 9.375v-4.5zM4.875 4.5a.375.375 0 00-.375.375v4.5c0 .207.168.375.375.375h4.5a.375.375 0 00.375-.375v-4.5a.375.375 0 00-.375-.375h-4.5zm7.875.375c0-1.036.84-1.875 1.875-1.875h4.5C20.16 3 21 3.84 21 4.875v4.5c0 1.036-.84 1.875-1.875 1.875h-4.5a1.875 1.875 0 01-1.875-1.875v-4.5zm1.875-.375a.375.375 0 00-.375.375v4.5c0 .207.168.375.375.375h4.5a.375.375 0 00.375-.375v-4.5a.375.375 0 00-.375-.375h-4.5zM6 6.75A.75.75 0 016.75 6h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75A.75.75 0 016 7.5v-.75zm9.75 0A.75.75 0 0116.5 6h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zM3 14.625c0-1.036.84-1.875 1.875-1.875h4.5c1.036 0 1.875.84 1.875 1.875v4.5c0 1.035-.84 1.875-1.875 1.875h-4.5A1.875 1.875 0 013 19.125v-4.5zm1.875-.375a.375.375 0 00-.375.375v4.5c0 .207.168.375.375.375h4.5a.375.375 0 00.375-.375v-4.5a.375.375 0 00-.375-.375h-4.5zm7.875-.75a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zm6 0a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zM6 16.5a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zm9.75 0a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zm-3 3a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zm6 0a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def qr_code(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 4.875C3 3.839 3.84 3 4.875 3h4.5c1.036 0 1.875.84 1.875 1.875v4.5c0 1.036-.84 1.875-1.875 1.875h-4.5A1.875 1.875 0 013 9.375v-4.5zM4.875 4.5a.375.375 0 00-.375.375v4.5c0 .207.168.375.375.375h4.5a.375.375 0 00.375-.375v-4.5a.375.375 0 00-.375-.375h-4.5zm7.875.375c0-1.036.84-1.875 1.875-1.875h4.5C20.16 3 21 3.84 21 4.875v4.5c0 1.036-.84 1.875-1.875 1.875h-4.5a1.875 1.875 0 01-1.875-1.875v-4.5zm1.875-.375a.375.375 0 00-.375.375v4.5c0 .207.168.375.375.375h4.5a.375.375 0 00.375-.375v-4.5a.375.375 0 00-.375-.375h-4.5zM6 6.75A.75.75 0 016.75 6h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75A.75.75 0 016 7.5v-.75zm9.75 0A.75.75 0 0116.5 6h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zM3 14.625c0-1.036.84-1.875 1.875-1.875h4.5c1.036 0 1.875.84 1.875 1.875v4.5c0 1.035-.84 1.875-1.875 1.875h-4.5A1.875 1.875 0 013 19.125v-4.5zm1.875-.375a.375.375 0 00-.375.375v4.5c0 .207.168.375.375.375h4.5a.375.375 0 00.375-.375v-4.5a.375.375 0 00-.375-.375h-4.5zm7.875-.75a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zm6 0a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zM6 16.5a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zm9.75 0a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zm-3 3a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75zm6 0a.75.75 0 01.75-.75h.75a.75.75 0 01.75.75v.75a.75.75 0 01-.75.75h-.75a.75.75 0 01-.75-.75v-.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/question-mark-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.question_mark_circle />

      <.question_mark_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= question_mark_circle() %>

      <%= question_mark_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def question_mark_circle(assigns_or_opts \\ [])

  def question_mark_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 12c0-5.385 4.365-9.75 9.75-9.75s9.75 4.365 9.75 9.75-4.365 9.75-9.75 9.75S2.25 17.385 2.25 12zm11.378-3.917c-.89-.777-2.366-.777-3.255 0a.75.75 0 01-.988-1.129c1.454-1.272 3.776-1.272 5.23 0 1.513 1.324 1.513 3.518 0 4.842a3.75 3.75 0 01-.837.552c-.676.328-1.028.774-1.028 1.152v.75a.75.75 0 01-1.5 0v-.75c0-1.279 1.06-2.107 1.875-2.502.182-.088.351-.199.503-.331.83-.727.83-1.857 0-2.584zM12 18a.75.75 0 100-1.5.75.75 0 000 1.5z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def question_mark_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 12c0-5.385 4.365-9.75 9.75-9.75s9.75 4.365 9.75 9.75-4.365 9.75-9.75 9.75S2.25 17.385 2.25 12zm11.378-3.917c-.89-.777-2.366-.777-3.255 0a.75.75 0 01-.988-1.129c1.454-1.272 3.776-1.272 5.23 0 1.513 1.324 1.513 3.518 0 4.842a3.75 3.75 0 01-.837.552c-.676.328-1.028.774-1.028 1.152v.75a.75.75 0 01-1.5 0v-.75c0-1.279 1.06-2.107 1.875-2.502.182-.088.351-.199.503-.331.83-.727.83-1.857 0-2.584zM12 18a.75.75 0 100-1.5.75.75 0 000 1.5z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/queue-list.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.queue_list />

      <.queue_list class="h-6 w-6 text-gray-500" />

  or as a function

      <%= queue_list() %>

      <%= queue_list(class: "h-6 w-6 text-gray-500") %>
  """
  def queue_list(assigns_or_opts \\ [])

  def queue_list(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M5.625 3.75a2.625 2.625 0 100 5.25h12.75a2.625 2.625 0 000-5.25H5.625zM3.75 11.25a.75.75 0 000 1.5h16.5a.75.75 0 000-1.5H3.75zM3 15.75a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75zM3.75 18.75a.75.75 0 000 1.5h16.5a.75.75 0 000-1.5H3.75z"/>
    </svg>
    """
  end

  def queue_list(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M5.625 3.75a2.625 2.625 0 100 5.25h12.75a2.625 2.625 0 000-5.25H5.625zM3.75 11.25a.75.75 0 000 1.5h16.5a.75.75 0 000-1.5H3.75zM3 15.75a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75zM3.75 18.75a.75.75 0 000 1.5h16.5a.75.75 0 000-1.5H3.75z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/radio.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.radio />

      <.radio class="h-6 w-6 text-gray-500" />

  or as a function

      <%= radio() %>

      <%= radio(class: "h-6 w-6 text-gray-500") %>
  """
  def radio(assigns_or_opts \\ [])

  def radio(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M20.432 4.103a.75.75 0 00-.364-1.455L4.128 6.632l-.2.033C2.498 6.904 1.5 8.158 1.5 9.575v9.175a3 3 0 003 3h15a3 3 0 003-3V9.574c0-1.416-.997-2.67-2.429-2.909a49.016 49.016 0 00-7.255-.658l7.616-1.904zm-9.585 8.56a.75.75 0 010 1.06l-.005.006a.75.75 0 01-1.06 0l-.006-.005a.75.75 0 010-1.061l.005-.005a.75.75 0 011.06 0l.006.005zM9.781 15.85a.75.75 0 001.061 0l.005-.005a.75.75 0 000-1.061l-.005-.005a.75.75 0 00-1.06 0l-.006.005a.75.75 0 000 1.06l.005.006zm-1.055-1.066a.75.75 0 010 1.06l-.005.006a.75.75 0 01-1.061 0l-.005-.005a.75.75 0 010-1.06l.005-.006a.75.75 0 011.06 0l.006.005zM7.66 13.73a.75.75 0 001.061 0l.005-.006a.75.75 0 000-1.06l-.005-.005a.75.75 0 00-1.06 0l-.006.005a.75.75 0 000 1.06l.005.006zM9.255 9.75a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75V10.5a.75.75 0 01.75-.75h.008zm3.624 3.28a.75.75 0 00.275-1.025L13.15 12a.75.75 0 00-1.025-.275l-.006.004a.75.75 0 00-.275 1.024l.004.007a.75.75 0 001.024.274l.007-.003zm-1.38 5.126a.75.75 0 01-1.024-.274l-.004-.007a.75.75 0 01.275-1.024l.006-.004a.75.75 0 011.025.274l.004.007a.75.75 0 01-.275 1.024l-.006.004zm.282-6.776a.75.75 0 00-.274-1.025l-.007-.003a.75.75 0 00-1.024.274l-.004.007a.75.75 0 00.274 1.024l.007.004a.75.75 0 001.024-.274l.004-.007zm1.369 5.129a.75.75 0 01-1.025.274l-.006-.003a.75.75 0 01-.275-1.025l.004-.006a.75.75 0 011.025-.275l.006.004a.75.75 0 01.275 1.024l-.004.007zm-.145-1.502a.75.75 0 00.75-.75v-.007a.75.75 0 00-.75-.75h-.008a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008zm-3.75 2.243a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75V18a.75.75 0 01.75-.75h.008zm-2.871-.47a.75.75 0 00.274-1.025l-.003-.006a.75.75 0 00-1.025-.275l-.006.004a.75.75 0 00-.275 1.025l.004.006a.75.75 0 001.024.274l.007-.003zm1.366-5.12a.75.75 0 01-1.025-.274l-.004-.006a.75.75 0 01.275-1.025l.006-.003a.75.75 0 011.025.274l.004.007a.75.75 0 01-.275 1.024l-.006.004zm.281 6.215a.75.75 0 00-.275-1.024l-.006-.004a.75.75 0 00-1.025.274l-.003.007a.75.75 0 00.274 1.024l.007.004a.75.75 0 001.024-.274l.004-.007zM6.655 12.76a.75.75 0 01-1.025.274l-.006-.003a.75.75 0 01-.275-1.025L5.353 12a.75.75 0 011.025-.275l.006.004a.75.75 0 01.275 1.024l-.004.007zm-1.15 2.248a.75.75 0 00.75-.75v-.007a.75.75 0 00-.75-.75h-.008a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008zM17.25 10.5a1.5 1.5 0 110 3 1.5 1.5 0 010-3zm1.5 6a1.5 1.5 0 10-3 0 1.5 1.5 0 003 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def radio(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M20.432 4.103a.75.75 0 00-.364-1.455L4.128 6.632l-.2.033C2.498 6.904 1.5 8.158 1.5 9.575v9.175a3 3 0 003 3h15a3 3 0 003-3V9.574c0-1.416-.997-2.67-2.429-2.909a49.016 49.016 0 00-7.255-.658l7.616-1.904zm-9.585 8.56a.75.75 0 010 1.06l-.005.006a.75.75 0 01-1.06 0l-.006-.005a.75.75 0 010-1.061l.005-.005a.75.75 0 011.06 0l.006.005zM9.781 15.85a.75.75 0 001.061 0l.005-.005a.75.75 0 000-1.061l-.005-.005a.75.75 0 00-1.06 0l-.006.005a.75.75 0 000 1.06l.005.006zm-1.055-1.066a.75.75 0 010 1.06l-.005.006a.75.75 0 01-1.061 0l-.005-.005a.75.75 0 010-1.06l.005-.006a.75.75 0 011.06 0l.006.005zM7.66 13.73a.75.75 0 001.061 0l.005-.006a.75.75 0 000-1.06l-.005-.005a.75.75 0 00-1.06 0l-.006.005a.75.75 0 000 1.06l.005.006zM9.255 9.75a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75V10.5a.75.75 0 01.75-.75h.008zm3.624 3.28a.75.75 0 00.275-1.025L13.15 12a.75.75 0 00-1.025-.275l-.006.004a.75.75 0 00-.275 1.024l.004.007a.75.75 0 001.024.274l.007-.003zm-1.38 5.126a.75.75 0 01-1.024-.274l-.004-.007a.75.75 0 01.275-1.024l.006-.004a.75.75 0 011.025.274l.004.007a.75.75 0 01-.275 1.024l-.006.004zm.282-6.776a.75.75 0 00-.274-1.025l-.007-.003a.75.75 0 00-1.024.274l-.004.007a.75.75 0 00.274 1.024l.007.004a.75.75 0 001.024-.274l.004-.007zm1.369 5.129a.75.75 0 01-1.025.274l-.006-.003a.75.75 0 01-.275-1.025l.004-.006a.75.75 0 011.025-.275l.006.004a.75.75 0 01.275 1.024l-.004.007zm-.145-1.502a.75.75 0 00.75-.75v-.007a.75.75 0 00-.75-.75h-.008a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008zm-3.75 2.243a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75V18a.75.75 0 01.75-.75h.008zm-2.871-.47a.75.75 0 00.274-1.025l-.003-.006a.75.75 0 00-1.025-.275l-.006.004a.75.75 0 00-.275 1.025l.004.006a.75.75 0 001.024.274l.007-.003zm1.366-5.12a.75.75 0 01-1.025-.274l-.004-.006a.75.75 0 01.275-1.025l.006-.003a.75.75 0 011.025.274l.004.007a.75.75 0 01-.275 1.024l-.006.004zm.281 6.215a.75.75 0 00-.275-1.024l-.006-.004a.75.75 0 00-1.025.274l-.003.007a.75.75 0 00.274 1.024l.007.004a.75.75 0 001.024-.274l.004-.007zM6.655 12.76a.75.75 0 01-1.025.274l-.006-.003a.75.75 0 01-.275-1.025L5.353 12a.75.75 0 011.025-.275l.006.004a.75.75 0 01.275 1.024l-.004.007zm-1.15 2.248a.75.75 0 00.75-.75v-.007a.75.75 0 00-.75-.75h-.008a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008zM17.25 10.5a1.5 1.5 0 110 3 1.5 1.5 0 010-3zm1.5 6a1.5 1.5 0 10-3 0 1.5 1.5 0 003 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/receipt-percent.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.receipt_percent />

      <.receipt_percent class="h-6 w-6 text-gray-500" />

  or as a function

      <%= receipt_percent() %>

      <%= receipt_percent(class: "h-6 w-6 text-gray-500") %>
  """
  def receipt_percent(assigns_or_opts \\ [])

  def receipt_percent(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 1.5c-1.921 0-3.816.111-5.68.327-1.497.174-2.57 1.46-2.57 2.93V21.75a.75.75 0 001.029.696l3.471-1.388 3.472 1.388a.75.75 0 00.556 0l3.472-1.388 3.471 1.388a.75.75 0 001.029-.696V4.757c0-1.47-1.073-2.756-2.57-2.93A49.255 49.255 0 0012 1.5zm3.53 7.28a.75.75 0 00-1.06-1.06l-6 6a.75.75 0 101.06 1.06l6-6zM8.625 9a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm5.625 3.375a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def receipt_percent(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 1.5c-1.921 0-3.816.111-5.68.327-1.497.174-2.57 1.46-2.57 2.93V21.75a.75.75 0 001.029.696l3.471-1.388 3.472 1.388a.75.75 0 00.556 0l3.472-1.388 3.471 1.388a.75.75 0 001.029-.696V4.757c0-1.47-1.073-2.756-2.57-2.93A49.255 49.255 0 0012 1.5zm3.53 7.28a.75.75 0 00-1.06-1.06l-6 6a.75.75 0 101.06 1.06l6-6zM8.625 9a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0zm5.625 3.375a1.125 1.125 0 100 2.25 1.125 1.125 0 000-2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/receipt-refund.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.receipt_refund />

      <.receipt_refund class="h-6 w-6 text-gray-500" />

  or as a function

      <%= receipt_refund() %>

      <%= receipt_refund(class: "h-6 w-6 text-gray-500") %>
  """
  def receipt_refund(assigns_or_opts \\ [])

  def receipt_refund(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 1.5c-1.921 0-3.816.111-5.68.327-1.497.174-2.57 1.46-2.57 2.93V21.75a.75.75 0 001.029.696l3.471-1.388 3.472 1.388a.75.75 0 00.556 0l3.472-1.388 3.471 1.388a.75.75 0 001.029-.696V4.757c0-1.47-1.073-2.756-2.57-2.93A49.255 49.255 0 0012 1.5zm-.97 6.53a.75.75 0 10-1.06-1.06L7.72 9.22a.75.75 0 000 1.06l2.25 2.25a.75.75 0 101.06-1.06l-.97-.97h3.065a1.875 1.875 0 010 3.75H12a.75.75 0 000 1.5h1.125a3.375 3.375 0 100-6.75h-3.064l.97-.97z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def receipt_refund(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 1.5c-1.921 0-3.816.111-5.68.327-1.497.174-2.57 1.46-2.57 2.93V21.75a.75.75 0 001.029.696l3.471-1.388 3.472 1.388a.75.75 0 00.556 0l3.472-1.388 3.471 1.388a.75.75 0 001.029-.696V4.757c0-1.47-1.073-2.756-2.57-2.93A49.255 49.255 0 0012 1.5zm-.97 6.53a.75.75 0 10-1.06-1.06L7.72 9.22a.75.75 0 000 1.06l2.25 2.25a.75.75 0 101.06-1.06l-.97-.97h3.065a1.875 1.875 0 010 3.75H12a.75.75 0 000 1.5h1.125a3.375 3.375 0 100-6.75h-3.064l.97-.97z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/rectangle-group.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.rectangle_group />

      <.rectangle_group class="h-6 w-6 text-gray-500" />

  or as a function

      <%= rectangle_group() %>

      <%= rectangle_group(class: "h-6 w-6 text-gray-500") %>
  """
  def rectangle_group(assigns_or_opts \\ [])

  def rectangle_group(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M1.5 7.125c0-1.036.84-1.875 1.875-1.875h6c1.036 0 1.875.84 1.875 1.875v3.75c0 1.036-.84 1.875-1.875 1.875h-6A1.875 1.875 0 011.5 10.875v-3.75zm12 1.5c0-1.036.84-1.875 1.875-1.875h5.25c1.035 0 1.875.84 1.875 1.875v8.25c0 1.035-.84 1.875-1.875 1.875h-5.25a1.875 1.875 0 01-1.875-1.875v-8.25zM3 16.125c0-1.036.84-1.875 1.875-1.875h5.25c1.036 0 1.875.84 1.875 1.875v2.25c0 1.035-.84 1.875-1.875 1.875h-5.25A1.875 1.875 0 013 18.375v-2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def rectangle_group(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M1.5 7.125c0-1.036.84-1.875 1.875-1.875h6c1.036 0 1.875.84 1.875 1.875v3.75c0 1.036-.84 1.875-1.875 1.875h-6A1.875 1.875 0 011.5 10.875v-3.75zm12 1.5c0-1.036.84-1.875 1.875-1.875h5.25c1.035 0 1.875.84 1.875 1.875v8.25c0 1.035-.84 1.875-1.875 1.875h-5.25a1.875 1.875 0 01-1.875-1.875v-8.25zM3 16.125c0-1.036.84-1.875 1.875-1.875h5.25c1.036 0 1.875.84 1.875 1.875v2.25c0 1.035-.84 1.875-1.875 1.875h-5.25A1.875 1.875 0 013 18.375v-2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/rectangle-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.rectangle_stack />

      <.rectangle_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= rectangle_stack() %>

      <%= rectangle_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def rectangle_stack(assigns_or_opts \\ [])

  def rectangle_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M5.566 4.657A4.505 4.505 0 016.75 4.5h10.5c.41 0 .806.055 1.183.157A3 3 0 0015.75 3h-7.5a3 3 0 00-2.684 1.657zM2.25 12a3 3 0 013-3h13.5a3 3 0 013 3v6a3 3 0 01-3 3H5.25a3 3 0 01-3-3v-6zM5.25 7.5c-.41 0-.806.055-1.184.157A3 3 0 016.75 6h10.5a3 3 0 012.683 1.657A4.505 4.505 0 0018.75 7.5H5.25z"/>
    </svg>
    """
  end

  def rectangle_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M5.566 4.657A4.505 4.505 0 016.75 4.5h10.5c.41 0 .806.055 1.183.157A3 3 0 0015.75 3h-7.5a3 3 0 00-2.684 1.657zM2.25 12a3 3 0 013-3h13.5a3 3 0 013 3v6a3 3 0 01-3 3H5.25a3 3 0 01-3-3v-6zM5.25 7.5c-.41 0-.806.055-1.184.157A3 3 0 016.75 6h10.5a3 3 0 012.683 1.657A4.505 4.505 0 0018.75 7.5H5.25z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/scale.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.scale />

      <.scale class="h-6 w-6 text-gray-500" />

  or as a function

      <%= scale() %>

      <%= scale(class: "h-6 w-6 text-gray-500") %>
  """
  def scale(assigns_or_opts \\ [])

  def scale(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25a.75.75 0 01.75.75v.756a49.106 49.106 0 019.152 1 .75.75 0 01-.152 1.485h-1.918l2.474 10.124a.75.75 0 01-.375.84A6.723 6.723 0 0118.75 18a6.723 6.723 0 01-3.181-.795.75.75 0 01-.375-.84l2.474-10.124H12.75v13.28c1.293.076 2.534.343 3.697.776a.75.75 0 01-.262 1.453h-8.37a.75.75 0 01-.262-1.453c1.162-.433 2.404-.7 3.697-.775V6.24H6.332l2.474 10.124a.75.75 0 01-.375.84A6.723 6.723 0 015.25 18a6.723 6.723 0 01-3.181-.795.75.75 0 01-.375-.84L4.168 6.241H2.25a.75.75 0 01-.152-1.485 49.105 49.105 0 019.152-1V3a.75.75 0 01.75-.75zm4.878 13.543l1.872-7.662 1.872 7.662h-3.744zm-9.756 0L5.25 8.131l-1.872 7.662h3.744z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def scale(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25a.75.75 0 01.75.75v.756a49.106 49.106 0 019.152 1 .75.75 0 01-.152 1.485h-1.918l2.474 10.124a.75.75 0 01-.375.84A6.723 6.723 0 0118.75 18a6.723 6.723 0 01-3.181-.795.75.75 0 01-.375-.84l2.474-10.124H12.75v13.28c1.293.076 2.534.343 3.697.776a.75.75 0 01-.262 1.453h-8.37a.75.75 0 01-.262-1.453c1.162-.433 2.404-.7 3.697-.775V6.24H6.332l2.474 10.124a.75.75 0 01-.375.84A6.723 6.723 0 015.25 18a6.723 6.723 0 01-3.181-.795.75.75 0 01-.375-.84L4.168 6.241H2.25a.75.75 0 01-.152-1.485 49.105 49.105 0 019.152-1V3a.75.75 0 01.75-.75zm4.878 13.543l1.872-7.662 1.872 7.662h-3.744zm-9.756 0L5.25 8.131l-1.872 7.662h3.744z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/scissors.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.scissors />

      <.scissors class="h-6 w-6 text-gray-500" />

  or as a function

      <%= scissors() %>

      <%= scissors(class: "h-6 w-6 text-gray-500") %>
  """
  def scissors(assigns_or_opts \\ [])

  def scissors(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M8.128 9.155a3.751 3.751 0 11.713-1.321l1.136.656a.75.75 0 01.222 1.104l-.006.007a.75.75 0 01-1.032.157 1.421 1.421 0 00-.113-.072l-.92-.531zm-4.827-3.53a2.25 2.25 0 013.994 2.063.756.756 0 00-.122.23 2.25 2.25 0 01-3.872-2.293zM13.348 8.272a5.073 5.073 0 00-3.428 3.57c-.101.387-.158.79-.165 1.202a1.415 1.415 0 01-.707 1.201l-.96.554a3.751 3.751 0 10.734 1.309l13.729-7.926a.75.75 0 00-.181-1.374l-.803-.215a5.25 5.25 0 00-2.894.05l-5.325 1.629zm-9.223 7.03a2.25 2.25 0 102.25 3.897 2.25 2.25 0 00-2.25-3.897zM12 12.75a.75.75 0 100-1.5.75.75 0 000 1.5z" clip-rule="evenodd"/>
      <path d="M16.372 12.615a.75.75 0 01.75 0l5.43 3.135a.75.75 0 01-.182 1.374l-.802.215a5.25 5.25 0 01-2.894-.051l-5.147-1.574a.75.75 0 01-.156-1.367l3-1.732z"/>
    </svg>
    """
  end

  def scissors(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M8.128 9.155a3.751 3.751 0 11.713-1.321l1.136.656a.75.75 0 01.222 1.104l-.006.007a.75.75 0 01-1.032.157 1.421 1.421 0 00-.113-.072l-.92-.531zm-4.827-3.53a2.25 2.25 0 013.994 2.063.756.756 0 00-.122.23 2.25 2.25 0 01-3.872-2.293zM13.348 8.272a5.073 5.073 0 00-3.428 3.57c-.101.387-.158.79-.165 1.202a1.415 1.415 0 01-.707 1.201l-.96.554a3.751 3.751 0 10.734 1.309l13.729-7.926a.75.75 0 00-.181-1.374l-.803-.215a5.25 5.25 0 00-2.894.05l-5.325 1.629zm-9.223 7.03a2.25 2.25 0 102.25 3.897 2.25 2.25 0 00-2.25-3.897zM12 12.75a.75.75 0 100-1.5.75.75 0 000 1.5z\" clip-rule=\"evenodd\"/>\n  <path d=\"M16.372 12.615a.75.75 0 01.75 0l5.43 3.135a.75.75 0 01-.182 1.374l-.802.215a5.25 5.25 0 01-2.894-.051l-5.147-1.574a.75.75 0 01-.156-1.367l3-1.732z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/server-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.server_stack />

      <.server_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= server_stack() %>

      <%= server_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def server_stack(assigns_or_opts \\ [])

  def server_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M5.507 4.048A3 3 0 017.785 3h8.43a3 3 0 012.278 1.048l1.722 2.008A4.533 4.533 0 0019.5 6h-15c-.243 0-.482.02-.715.056l1.722-2.008z"/>
      <path fill-rule="evenodd" d="M1.5 10.5a3 3 0 013-3h15a3 3 0 110 6h-15a3 3 0 01-3-3zm15 0a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm2.25.75a.75.75 0 100-1.5.75.75 0 000 1.5zM4.5 15a3 3 0 100 6h15a3 3 0 100-6h-15zm11.25 3.75a.75.75 0 100-1.5.75.75 0 000 1.5zM19.5 18a.75.75 0 11-1.5 0 .75.75 0 011.5 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def server_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M5.507 4.048A3 3 0 017.785 3h8.43a3 3 0 012.278 1.048l1.722 2.008A4.533 4.533 0 0019.5 6h-15c-.243 0-.482.02-.715.056l1.722-2.008z\"/>\n  <path fill-rule=\"evenodd\" d=\"M1.5 10.5a3 3 0 013-3h15a3 3 0 110 6h-15a3 3 0 01-3-3zm15 0a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm2.25.75a.75.75 0 100-1.5.75.75 0 000 1.5zM4.5 15a3 3 0 100 6h15a3 3 0 100-6h-15zm11.25 3.75a.75.75 0 100-1.5.75.75 0 000 1.5zM19.5 18a.75.75 0 11-1.5 0 .75.75 0 011.5 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/server.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.server />

      <.server class="h-6 w-6 text-gray-500" />

  or as a function

      <%= server() %>

      <%= server(class: "h-6 w-6 text-gray-500") %>
  """
  def server(assigns_or_opts \\ [])

  def server(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M4.08 5.227A3 3 0 016.979 3H17.02a3 3 0 012.9 2.227l2.113 7.926A5.228 5.228 0 0018.75 12H5.25a5.228 5.228 0 00-3.284 1.153L4.08 5.227z"/>
      <path fill-rule="evenodd" d="M5.25 13.5a3.75 3.75 0 100 7.5h13.5a3.75 3.75 0 100-7.5H5.25zm10.5 4.5a.75.75 0 100-1.5.75.75 0 000 1.5zm3.75-.75a.75.75 0 11-1.5 0 .75.75 0 011.5 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def server(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M4.08 5.227A3 3 0 016.979 3H17.02a3 3 0 012.9 2.227l2.113 7.926A5.228 5.228 0 0018.75 12H5.25a5.228 5.228 0 00-3.284 1.153L4.08 5.227z\"/>\n  <path fill-rule=\"evenodd\" d=\"M5.25 13.5a3.75 3.75 0 100 7.5h13.5a3.75 3.75 0 100-7.5H5.25zm10.5 4.5a.75.75 0 100-1.5.75.75 0 000 1.5zm3.75-.75a.75.75 0 11-1.5 0 .75.75 0 011.5 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/share.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.share />

      <.share class="h-6 w-6 text-gray-500" />

  or as a function

      <%= share() %>

      <%= share(class: "h-6 w-6 text-gray-500") %>
  """
  def share(assigns_or_opts \\ [])

  def share(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M15.75 4.5a3 3 0 11.825 2.066l-8.421 4.679a3.002 3.002 0 010 1.51l8.421 4.679a3 3 0 11-.729 1.31l-8.421-4.678a3 3 0 110-4.132l8.421-4.679a3 3 0 01-.096-.755z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def share(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M15.75 4.5a3 3 0 11.825 2.066l-8.421 4.679a3.002 3.002 0 010 1.51l8.421 4.679a3 3 0 11-.729 1.31l-8.421-4.678a3 3 0 110-4.132l8.421-4.679a3 3 0 01-.096-.755z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/shield-check.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.shield_check />

      <.shield_check class="h-6 w-6 text-gray-500" />

  or as a function

      <%= shield_check() %>

      <%= shield_check(class: "h-6 w-6 text-gray-500") %>
  """
  def shield_check(assigns_or_opts \\ [])

  def shield_check(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12.516 2.17a.75.75 0 00-1.032 0 11.209 11.209 0 01-7.877 3.08.75.75 0 00-.722.515A12.74 12.74 0 002.25 9.75c0 5.942 4.064 10.933 9.563 12.348a.749.749 0 00.374 0c5.499-1.415 9.563-6.406 9.563-12.348 0-1.39-.223-2.73-.635-3.985a.75.75 0 00-.722-.516l-.143.001c-2.996 0-5.717-1.17-7.734-3.08zm2.543 8.142a.75.75 0 10-.993-1.124 12.785 12.785 0 00-3.209 4.358L9.53 12.22a.75.75 0 00-1.06 1.06l2.135 2.136a.75.75 0 001.24-.289 11.264 11.264 0 013.214-4.815z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def shield_check(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12.516 2.17a.75.75 0 00-1.032 0 11.209 11.209 0 01-7.877 3.08.75.75 0 00-.722.515A12.74 12.74 0 002.25 9.75c0 5.942 4.064 10.933 9.563 12.348a.749.749 0 00.374 0c5.499-1.415 9.563-6.406 9.563-12.348 0-1.39-.223-2.73-.635-3.985a.75.75 0 00-.722-.516l-.143.001c-2.996 0-5.717-1.17-7.734-3.08zm2.543 8.142a.75.75 0 10-.993-1.124 12.785 12.785 0 00-3.209 4.358L9.53 12.22a.75.75 0 00-1.06 1.06l2.135 2.136a.75.75 0 001.24-.289 11.264 11.264 0 013.214-4.815z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/shield-exclamation.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.shield_exclamation />

      <.shield_exclamation class="h-6 w-6 text-gray-500" />

  or as a function

      <%= shield_exclamation() %>

      <%= shield_exclamation(class: "h-6 w-6 text-gray-500") %>
  """
  def shield_exclamation(assigns_or_opts \\ [])

  def shield_exclamation(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M11.484 2.17a.75.75 0 011.032 0 11.209 11.209 0 007.877 3.08.75.75 0 01.722.515 12.74 12.74 0 01.635 3.985c0 5.942-4.064 10.933-9.563 12.348a.749.749 0 01-.374 0C6.314 20.683 2.25 15.692 2.25 9.75c0-1.39.223-2.73.635-3.985a.75.75 0 01.722-.516l.143.001c2.996 0 5.718-1.17 7.734-3.08zM12 8.25a.75.75 0 01.75.75v3.75a.75.75 0 01-1.5 0V9a.75.75 0 01.75-.75zM12 15a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75v-.008a.75.75 0 00-.75-.75H12z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def shield_exclamation(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M11.484 2.17a.75.75 0 011.032 0 11.209 11.209 0 007.877 3.08.75.75 0 01.722.515 12.74 12.74 0 01.635 3.985c0 5.942-4.064 10.933-9.563 12.348a.749.749 0 01-.374 0C6.314 20.683 2.25 15.692 2.25 9.75c0-1.39.223-2.73.635-3.985a.75.75 0 01.722-.516l.143.001c2.996 0 5.718-1.17 7.734-3.08zM12 8.25a.75.75 0 01.75.75v3.75a.75.75 0 01-1.5 0V9a.75.75 0 01.75-.75zM12 15a.75.75 0 00-.75.75v.008c0 .414.336.75.75.75h.008a.75.75 0 00.75-.75v-.008a.75.75 0 00-.75-.75H12z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/shopping-bag.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.shopping_bag />

      <.shopping_bag class="h-6 w-6 text-gray-500" />

  or as a function

      <%= shopping_bag() %>

      <%= shopping_bag(class: "h-6 w-6 text-gray-500") %>
  """
  def shopping_bag(assigns_or_opts \\ [])

  def shopping_bag(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M7.5 6v.75H5.513c-.96 0-1.764.724-1.865 1.679l-1.263 12A1.875 1.875 0 004.25 22.5h15.5a1.875 1.875 0 001.865-2.071l-1.263-12a1.875 1.875 0 00-1.865-1.679H16.5V6a4.5 4.5 0 10-9 0zM12 3a3 3 0 00-3 3v.75h6V6a3 3 0 00-3-3zm-3 8.25a3 3 0 106 0v-.75a.75.75 0 011.5 0v.75a4.5 4.5 0 11-9 0v-.75a.75.75 0 011.5 0v.75z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def shopping_bag(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M7.5 6v.75H5.513c-.96 0-1.764.724-1.865 1.679l-1.263 12A1.875 1.875 0 004.25 22.5h15.5a1.875 1.875 0 001.865-2.071l-1.263-12a1.875 1.875 0 00-1.865-1.679H16.5V6a4.5 4.5 0 10-9 0zM12 3a3 3 0 00-3 3v.75h6V6a3 3 0 00-3-3zm-3 8.25a3 3 0 106 0v-.75a.75.75 0 011.5 0v.75a4.5 4.5 0 11-9 0v-.75a.75.75 0 011.5 0v.75z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/shopping-cart.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.shopping_cart />

      <.shopping_cart class="h-6 w-6 text-gray-500" />

  or as a function

      <%= shopping_cart() %>

      <%= shopping_cart(class: "h-6 w-6 text-gray-500") %>
  """
  def shopping_cart(assigns_or_opts \\ [])

  def shopping_cart(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z"/>
    </svg>
    """
  end

  def shopping_cart(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M2.25 2.25a.75.75 0 000 1.5h1.386c.17 0 .318.114.362.278l2.558 9.592a3.752 3.752 0 00-2.806 3.63c0 .414.336.75.75.75h15.75a.75.75 0 000-1.5H5.378A2.25 2.25 0 017.5 15h11.218a.75.75 0 00.674-.421 60.358 60.358 0 002.96-7.228.75.75 0 00-.525-.965A60.864 60.864 0 005.68 4.509l-.232-.867A1.875 1.875 0 003.636 2.25H2.25zM3.75 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0zM16.5 20.25a1.5 1.5 0 113 0 1.5 1.5 0 01-3 0z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/signal-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.signal_slash />

      <.signal_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= signal_slash() %>

      <%= signal_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def signal_slash(assigns_or_opts \\ [])

  def signal_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.47 2.47a.75.75 0 011.06 0l8.407 8.407a1.125 1.125 0 011.186 1.186l1.462 1.461a3.001 3.001 0 00-.464-3.645.75.75 0 111.061-1.061 4.501 4.501 0 01.486 5.79l1.072 1.072a6.001 6.001 0 00-.497-7.923.75.75 0 011.06-1.06 7.501 7.501 0 01.505 10.05l1.064 1.065a9 9 0 00-.508-12.176.75.75 0 011.06-1.06c3.923 3.922 4.093 10.175.512 14.3l1.594 1.594a.75.75 0 11-1.06 1.06l-2.106-2.105-2.121-2.122h-.001l-4.705-4.706a.747.747 0 01-.127-.126L2.47 3.53a.75.75 0 010-1.061zm1.189 4.422a.75.75 0 01.326 1.01 9.004 9.004 0 001.651 10.462.75.75 0 11-1.06 1.06C1.27 16.12.63 11.165 2.648 7.219a.75.75 0 011.01-.326zM5.84 9.134a.75.75 0 01.472.95 6 6 0 001.444 6.159.75.75 0 01-1.06 1.06A7.5 7.5 0 014.89 9.606a.75.75 0 01.95-.472zm2.341 2.653a.75.75 0 01.848.638c.088.62.37 1.218.849 1.696a.75.75 0 01-1.061 1.061 4.483 4.483 0 01-1.273-2.546.75.75 0 01.637-.848z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def signal_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.47 2.47a.75.75 0 011.06 0l8.407 8.407a1.125 1.125 0 011.186 1.186l1.462 1.461a3.001 3.001 0 00-.464-3.645.75.75 0 111.061-1.061 4.501 4.501 0 01.486 5.79l1.072 1.072a6.001 6.001 0 00-.497-7.923.75.75 0 011.06-1.06 7.501 7.501 0 01.505 10.05l1.064 1.065a9 9 0 00-.508-12.176.75.75 0 011.06-1.06c3.923 3.922 4.093 10.175.512 14.3l1.594 1.594a.75.75 0 11-1.06 1.06l-2.106-2.105-2.121-2.122h-.001l-4.705-4.706a.747.747 0 01-.127-.126L2.47 3.53a.75.75 0 010-1.061zm1.189 4.422a.75.75 0 01.326 1.01 9.004 9.004 0 001.651 10.462.75.75 0 11-1.06 1.06C1.27 16.12.63 11.165 2.648 7.219a.75.75 0 011.01-.326zM5.84 9.134a.75.75 0 01.472.95 6 6 0 001.444 6.159.75.75 0 01-1.06 1.06A7.5 7.5 0 014.89 9.606a.75.75 0 01.95-.472zm2.341 2.653a.75.75 0 01.848.638c.088.62.37 1.218.849 1.696a.75.75 0 01-1.061 1.061 4.483 4.483 0 01-1.273-2.546.75.75 0 01.637-.848z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/signal.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.signal />

      <.signal class="h-6 w-6 text-gray-500" />

  or as a function

      <%= signal() %>

      <%= signal(class: "h-6 w-6 text-gray-500") %>
  """
  def signal(assigns_or_opts \\ [])

  def signal(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.636 4.575a.75.75 0 010 1.06 9 9 0 000 12.729.75.75 0 01-1.06 1.06c-4.101-4.1-4.101-10.748 0-14.849a.75.75 0 011.06 0zm12.728 0a.75.75 0 011.06 0c4.101 4.1 4.101 10.749 0 14.85a.75.75 0 11-1.06-1.061 9 9 0 000-12.728.75.75 0 010-1.06zM7.757 6.696a.75.75 0 010 1.061 6 6 0 000 8.485.75.75 0 01-1.06 1.061 7.5 7.5 0 010-10.607.75.75 0 011.06 0zm8.486 0a.75.75 0 011.06 0 7.5 7.5 0 010 10.607.75.75 0 01-1.06-1.06 6 6 0 000-8.486.75.75 0 010-1.06zM9.879 8.818a.75.75 0 010 1.06 3 3 0 000 4.243.75.75 0 11-1.061 1.06 4.5 4.5 0 010-6.363.75.75 0 011.06 0zm4.242 0a.75.75 0 011.061 0 4.5 4.5 0 010 6.364.75.75 0 01-1.06-1.06 3 3 0 000-4.244.75.75 0 010-1.06zM10.875 12a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def signal(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.636 4.575a.75.75 0 010 1.06 9 9 0 000 12.729.75.75 0 01-1.06 1.06c-4.101-4.1-4.101-10.748 0-14.849a.75.75 0 011.06 0zm12.728 0a.75.75 0 011.06 0c4.101 4.1 4.101 10.749 0 14.85a.75.75 0 11-1.06-1.061 9 9 0 000-12.728.75.75 0 010-1.06zM7.757 6.696a.75.75 0 010 1.061 6 6 0 000 8.485.75.75 0 01-1.06 1.061 7.5 7.5 0 010-10.607.75.75 0 011.06 0zm8.486 0a.75.75 0 011.06 0 7.5 7.5 0 010 10.607.75.75 0 01-1.06-1.06 6 6 0 000-8.486.75.75 0 010-1.06zM9.879 8.818a.75.75 0 010 1.06 3 3 0 000 4.243.75.75 0 11-1.061 1.06 4.5 4.5 0 010-6.363.75.75 0 011.06 0zm4.242 0a.75.75 0 011.061 0 4.5 4.5 0 010 6.364.75.75 0 01-1.06-1.06 3 3 0 000-4.244.75.75 0 010-1.06zM10.875 12a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/sparkles.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.sparkles />

      <.sparkles class="h-6 w-6 text-gray-500" />

  or as a function

      <%= sparkles() %>

      <%= sparkles(class: "h-6 w-6 text-gray-500") %>
  """
  def sparkles(assigns_or_opts \\ [])

  def sparkles(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M9 4.5a.75.75 0 01.721.544l.813 2.846a3.75 3.75 0 002.576 2.576l2.846.813a.75.75 0 010 1.442l-2.846.813a3.75 3.75 0 00-2.576 2.576l-.813 2.846a.75.75 0 01-1.442 0l-.813-2.846a3.75 3.75 0 00-2.576-2.576l-2.846-.813a.75.75 0 010-1.442l2.846-.813A3.75 3.75 0 007.466 7.89l.813-2.846A.75.75 0 019 4.5zM18 1.5a.75.75 0 01.728.568l.258 1.036c.236.94.97 1.674 1.91 1.91l1.036.258a.75.75 0 010 1.456l-1.036.258c-.94.236-1.674.97-1.91 1.91l-.258 1.036a.75.75 0 01-1.456 0l-.258-1.036a2.625 2.625 0 00-1.91-1.91l-1.036-.258a.75.75 0 010-1.456l1.036-.258a2.625 2.625 0 001.91-1.91l.258-1.036A.75.75 0 0118 1.5zM16.5 15a.75.75 0 01.712.513l.394 1.183c.15.447.5.799.948.948l1.183.395a.75.75 0 010 1.422l-1.183.395c-.447.15-.799.5-.948.948l-.395 1.183a.75.75 0 01-1.422 0l-.395-1.183a1.5 1.5 0 00-.948-.948l-1.183-.395a.75.75 0 010-1.422l1.183-.395c.447-.15.799-.5.948-.948l.395-1.183A.75.75 0 0116.5 15z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def sparkles(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M9 4.5a.75.75 0 01.721.544l.813 2.846a3.75 3.75 0 002.576 2.576l2.846.813a.75.75 0 010 1.442l-2.846.813a3.75 3.75 0 00-2.576 2.576l-.813 2.846a.75.75 0 01-1.442 0l-.813-2.846a3.75 3.75 0 00-2.576-2.576l-2.846-.813a.75.75 0 010-1.442l2.846-.813A3.75 3.75 0 007.466 7.89l.813-2.846A.75.75 0 019 4.5zM18 1.5a.75.75 0 01.728.568l.258 1.036c.236.94.97 1.674 1.91 1.91l1.036.258a.75.75 0 010 1.456l-1.036.258c-.94.236-1.674.97-1.91 1.91l-.258 1.036a.75.75 0 01-1.456 0l-.258-1.036a2.625 2.625 0 00-1.91-1.91l-1.036-.258a.75.75 0 010-1.456l1.036-.258a2.625 2.625 0 001.91-1.91l.258-1.036A.75.75 0 0118 1.5zM16.5 15a.75.75 0 01.712.513l.394 1.183c.15.447.5.799.948.948l1.183.395a.75.75 0 010 1.422l-1.183.395c-.447.15-.799.5-.948.948l-.395 1.183a.75.75 0 01-1.422 0l-.395-1.183a1.5 1.5 0 00-.948-.948l-1.183-.395a.75.75 0 010-1.422l1.183-.395c.447-.15.799-.5.948-.948l.395-1.183A.75.75 0 0116.5 15z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/speaker-wave.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.speaker_wave />

      <.speaker_wave class="h-6 w-6 text-gray-500" />

  or as a function

      <%= speaker_wave() %>

      <%= speaker_wave(class: "h-6 w-6 text-gray-500") %>
  """
  def speaker_wave(assigns_or_opts \\ [])

  def speaker_wave(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M13.5 4.06c0-1.336-1.616-2.005-2.56-1.06l-4.5 4.5H4.508c-1.141 0-2.318.664-2.66 1.905A9.76 9.76 0 001.5 12c0 .898.121 1.768.35 2.595.341 1.24 1.518 1.905 2.659 1.905h1.93l4.5 4.5c.945.945 2.561.276 2.561-1.06V4.06zM18.584 5.106a.75.75 0 011.06 0c3.808 3.807 3.808 9.98 0 13.788a.75.75 0 11-1.06-1.06 8.25 8.25 0 000-11.668.75.75 0 010-1.06z"/>
      <path d="M15.932 7.757a.75.75 0 011.061 0 6 6 0 010 8.486.75.75 0 01-1.06-1.061 4.5 4.5 0 000-6.364.75.75 0 010-1.06z"/>
    </svg>
    """
  end

  def speaker_wave(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M13.5 4.06c0-1.336-1.616-2.005-2.56-1.06l-4.5 4.5H4.508c-1.141 0-2.318.664-2.66 1.905A9.76 9.76 0 001.5 12c0 .898.121 1.768.35 2.595.341 1.24 1.518 1.905 2.659 1.905h1.93l4.5 4.5c.945.945 2.561.276 2.561-1.06V4.06zM18.584 5.106a.75.75 0 011.06 0c3.808 3.807 3.808 9.98 0 13.788a.75.75 0 11-1.06-1.06 8.25 8.25 0 000-11.668.75.75 0 010-1.06z\"/>\n  <path d=\"M15.932 7.757a.75.75 0 011.061 0 6 6 0 010 8.486.75.75 0 01-1.06-1.061 4.5 4.5 0 000-6.364.75.75 0 010-1.06z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/speaker-x-mark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.speaker_x_mark />

      <.speaker_x_mark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= speaker_x_mark() %>

      <%= speaker_x_mark(class: "h-6 w-6 text-gray-500") %>
  """
  def speaker_x_mark(assigns_or_opts \\ [])

  def speaker_x_mark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M13.5 4.06c0-1.336-1.616-2.005-2.56-1.06l-4.5 4.5H4.508c-1.141 0-2.318.664-2.66 1.905A9.76 9.76 0 001.5 12c0 .898.121 1.768.35 2.595.341 1.24 1.518 1.905 2.659 1.905h1.93l4.5 4.5c.945.945 2.561.276 2.561-1.06V4.06zM17.78 9.22a.75.75 0 10-1.06 1.06L18.44 12l-1.72 1.72a.75.75 0 001.06 1.06l1.72-1.72 1.72 1.72a.75.75 0 101.06-1.06L20.56 12l1.72-1.72a.75.75 0 00-1.06-1.06l-1.72 1.72-1.72-1.72z"/>
    </svg>
    """
  end

  def speaker_x_mark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M13.5 4.06c0-1.336-1.616-2.005-2.56-1.06l-4.5 4.5H4.508c-1.141 0-2.318.664-2.66 1.905A9.76 9.76 0 001.5 12c0 .898.121 1.768.35 2.595.341 1.24 1.518 1.905 2.659 1.905h1.93l4.5 4.5c.945.945 2.561.276 2.561-1.06V4.06zM17.78 9.22a.75.75 0 10-1.06 1.06L18.44 12l-1.72 1.72a.75.75 0 001.06 1.06l1.72-1.72 1.72 1.72a.75.75 0 101.06-1.06L20.56 12l1.72-1.72a.75.75 0 00-1.06-1.06l-1.72 1.72-1.72-1.72z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/square-2-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.square_2_stack />

      <.square_2_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= square_2_stack() %>

      <%= square_2_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def square_2_stack(assigns_or_opts \\ [])

  def square_2_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M16.5 6a3 3 0 00-3-3H6a3 3 0 00-3 3v7.5a3 3 0 003 3v-6A4.5 4.5 0 0110.5 6h6z"/>
      <path d="M18 7.5a3 3 0 013 3V18a3 3 0 01-3 3h-7.5a3 3 0 01-3-3v-7.5a3 3 0 013-3H18z"/>
    </svg>
    """
  end

  def square_2_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M16.5 6a3 3 0 00-3-3H6a3 3 0 00-3 3v7.5a3 3 0 003 3v-6A4.5 4.5 0 0110.5 6h6z\"/>\n  <path d=\"M18 7.5a3 3 0 013 3V18a3 3 0 01-3 3h-7.5a3 3 0 01-3-3v-7.5a3 3 0 013-3H18z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/squares-2x2.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.squares_2x2 />

      <.squares_2x2 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= squares_2x2() %>

      <%= squares_2x2(class: "h-6 w-6 text-gray-500") %>
  """
  def squares_2x2(assigns_or_opts \\ [])

  def squares_2x2(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3 6a3 3 0 013-3h2.25a3 3 0 013 3v2.25a3 3 0 01-3 3H6a3 3 0 01-3-3V6zm9.75 0a3 3 0 013-3H18a3 3 0 013 3v2.25a3 3 0 01-3 3h-2.25a3 3 0 01-3-3V6zM3 15.75a3 3 0 013-3h2.25a3 3 0 013 3V18a3 3 0 01-3 3H6a3 3 0 01-3-3v-2.25zm9.75 0a3 3 0 013-3H18a3 3 0 013 3V18a3 3 0 01-3 3h-2.25a3 3 0 01-3-3v-2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def squares_2x2(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3 6a3 3 0 013-3h2.25a3 3 0 013 3v2.25a3 3 0 01-3 3H6a3 3 0 01-3-3V6zm9.75 0a3 3 0 013-3H18a3 3 0 013 3v2.25a3 3 0 01-3 3h-2.25a3 3 0 01-3-3V6zM3 15.75a3 3 0 013-3h2.25a3 3 0 013 3V18a3 3 0 01-3 3H6a3 3 0 01-3-3v-2.25zm9.75 0a3 3 0 013-3H18a3 3 0 013 3V18a3 3 0 01-3 3h-2.25a3 3 0 01-3-3v-2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/squares-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.squares_plus />

      <.squares_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= squares_plus() %>

      <%= squares_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def squares_plus(assigns_or_opts \\ [])

  def squares_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M6 3a3 3 0 00-3 3v2.25a3 3 0 003 3h2.25a3 3 0 003-3V6a3 3 0 00-3-3H6zM15.75 3a3 3 0 00-3 3v2.25a3 3 0 003 3H18a3 3 0 003-3V6a3 3 0 00-3-3h-2.25zM6 12.75a3 3 0 00-3 3V18a3 3 0 003 3h2.25a3 3 0 003-3v-2.25a3 3 0 00-3-3H6zM17.625 13.5a.75.75 0 00-1.5 0v2.625H13.5a.75.75 0 000 1.5h2.625v2.625a.75.75 0 001.5 0v-2.625h2.625a.75.75 0 000-1.5h-2.625V13.5z"/>
    </svg>
    """
  end

  def squares_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M6 3a3 3 0 00-3 3v2.25a3 3 0 003 3h2.25a3 3 0 003-3V6a3 3 0 00-3-3H6zM15.75 3a3 3 0 00-3 3v2.25a3 3 0 003 3H18a3 3 0 003-3V6a3 3 0 00-3-3h-2.25zM6 12.75a3 3 0 00-3 3V18a3 3 0 003 3h2.25a3 3 0 003-3v-2.25a3 3 0 00-3-3H6zM17.625 13.5a.75.75 0 00-1.5 0v2.625H13.5a.75.75 0 000 1.5h2.625v2.625a.75.75 0 001.5 0v-2.625h2.625a.75.75 0 000-1.5h-2.625V13.5z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/star.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.star />

      <.star class="h-6 w-6 text-gray-500" />

  or as a function

      <%= star() %>

      <%= star(class: "h-6 w-6 text-gray-500") %>
  """
  def star(assigns_or_opts \\ [])

  def star(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def star(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/stop.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.stop />

      <.stop class="h-6 w-6 text-gray-500" />

  or as a function

      <%= stop() %>

      <%= stop(class: "h-6 w-6 text-gray-500") %>
  """
  def stop(assigns_or_opts \\ [])

  def stop(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M4.5 7.5a3 3 0 013-3h9a3 3 0 013 3v9a3 3 0 01-3 3h-9a3 3 0 01-3-3v-9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def stop(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M4.5 7.5a3 3 0 013-3h9a3 3 0 013 3v9a3 3 0 01-3 3h-9a3 3 0 01-3-3v-9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/sun.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.sun />

      <.sun class="h-6 w-6 text-gray-500" />

  or as a function

      <%= sun() %>

      <%= sun(class: "h-6 w-6 text-gray-500") %>
  """
  def sun(assigns_or_opts \\ [])

  def sun(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M12 2.25a.75.75 0 01.75.75v2.25a.75.75 0 01-1.5 0V3a.75.75 0 01.75-.75zM7.5 12a4.5 4.5 0 119 0 4.5 4.5 0 01-9 0zM18.894 6.166a.75.75 0 00-1.06-1.06l-1.591 1.59a.75.75 0 101.06 1.061l1.591-1.59zM21.75 12a.75.75 0 01-.75.75h-2.25a.75.75 0 010-1.5H21a.75.75 0 01.75.75zM17.834 18.894a.75.75 0 001.06-1.06l-1.59-1.591a.75.75 0 10-1.061 1.06l1.59 1.591zM12 18a.75.75 0 01.75.75V21a.75.75 0 01-1.5 0v-2.25A.75.75 0 0112 18zM7.758 17.303a.75.75 0 00-1.061-1.06l-1.591 1.59a.75.75 0 001.06 1.061l1.591-1.59zM6 12a.75.75 0 01-.75.75H3a.75.75 0 010-1.5h2.25A.75.75 0 016 12zM6.697 7.757a.75.75 0 001.06-1.06l-1.59-1.591a.75.75 0 00-1.061 1.06l1.59 1.591z"/>
    </svg>
    """
  end

  def sun(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M12 2.25a.75.75 0 01.75.75v2.25a.75.75 0 01-1.5 0V3a.75.75 0 01.75-.75zM7.5 12a4.5 4.5 0 119 0 4.5 4.5 0 01-9 0zM18.894 6.166a.75.75 0 00-1.06-1.06l-1.591 1.59a.75.75 0 101.06 1.061l1.591-1.59zM21.75 12a.75.75 0 01-.75.75h-2.25a.75.75 0 010-1.5H21a.75.75 0 01.75.75zM17.834 18.894a.75.75 0 001.06-1.06l-1.59-1.591a.75.75 0 10-1.061 1.06l1.59 1.591zM12 18a.75.75 0 01.75.75V21a.75.75 0 01-1.5 0v-2.25A.75.75 0 0112 18zM7.758 17.303a.75.75 0 00-1.061-1.06l-1.591 1.59a.75.75 0 001.06 1.061l1.591-1.59zM6 12a.75.75 0 01-.75.75H3a.75.75 0 010-1.5h2.25A.75.75 0 016 12zM6.697 7.757a.75.75 0 001.06-1.06l-1.59-1.591a.75.75 0 00-1.061 1.06l1.59 1.591z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/swatch.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.swatch />

      <.swatch class="h-6 w-6 text-gray-500" />

  or as a function

      <%= swatch() %>

      <%= swatch(class: "h-6 w-6 text-gray-500") %>
  """
  def swatch(assigns_or_opts \\ [])

  def swatch(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M2.25 4.125c0-1.036.84-1.875 1.875-1.875h5.25c1.036 0 1.875.84 1.875 1.875V17.25a4.5 4.5 0 11-9 0V4.125zm4.5 14.25a1.125 1.125 0 100-2.25 1.125 1.125 0 000 2.25z" clip-rule="evenodd"/>
      <path d="M10.719 21.75h9.156c1.036 0 1.875-.84 1.875-1.875v-5.25c0-1.036-.84-1.875-1.875-1.875h-.14l-8.742 8.743c-.09.089-.18.175-.274.257zM12.738 17.625l6.474-6.474a1.875 1.875 0 000-2.651L15.5 4.787a1.875 1.875 0 00-2.651 0l-.1.099V17.25c0 .126-.003.251-.01.375z"/>
    </svg>
    """
  end

  def swatch(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M2.25 4.125c0-1.036.84-1.875 1.875-1.875h5.25c1.036 0 1.875.84 1.875 1.875V17.25a4.5 4.5 0 11-9 0V4.125zm4.5 14.25a1.125 1.125 0 100-2.25 1.125 1.125 0 000 2.25z\" clip-rule=\"evenodd\"/>\n  <path d=\"M10.719 21.75h9.156c1.036 0 1.875-.84 1.875-1.875v-5.25c0-1.036-.84-1.875-1.875-1.875h-.14l-8.742 8.743c-.09.089-.18.175-.274.257zM12.738 17.625l6.474-6.474a1.875 1.875 0 000-2.651L15.5 4.787a1.875 1.875 0 00-2.651 0l-.1.099V17.25c0 .126-.003.251-.01.375z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/table-cells.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.table_cells />

      <.table_cells class="h-6 w-6 text-gray-500" />

  or as a function

      <%= table_cells() %>

      <%= table_cells(class: "h-6 w-6 text-gray-500") %>
  """
  def table_cells(assigns_or_opts \\ [])

  def table_cells(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M1.5 5.625c0-1.036.84-1.875 1.875-1.875h17.25c1.035 0 1.875.84 1.875 1.875v12.75c0 1.035-.84 1.875-1.875 1.875H3.375A1.875 1.875 0 011.5 18.375V5.625zM21 9.375A.375.375 0 0020.625 9h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h7.5a.375.375 0 00.375-.375v-1.5zm0 3.75a.375.375 0 00-.375-.375h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h7.5a.375.375 0 00.375-.375v-1.5zm0 3.75a.375.375 0 00-.375-.375h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h7.5a.375.375 0 00.375-.375v-1.5zM10.875 18.75a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h7.5zM3.375 15h7.5a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375zm0-3.75h7.5a.375.375 0 00.375-.375v-1.5A.375.375 0 0010.875 9h-7.5A.375.375 0 003 9.375v1.5c0 .207.168.375.375.375z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def table_cells(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M1.5 5.625c0-1.036.84-1.875 1.875-1.875h17.25c1.035 0 1.875.84 1.875 1.875v12.75c0 1.035-.84 1.875-1.875 1.875H3.375A1.875 1.875 0 011.5 18.375V5.625zM21 9.375A.375.375 0 0020.625 9h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h7.5a.375.375 0 00.375-.375v-1.5zm0 3.75a.375.375 0 00-.375-.375h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h7.5a.375.375 0 00.375-.375v-1.5zm0 3.75a.375.375 0 00-.375-.375h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h7.5a.375.375 0 00.375-.375v-1.5zM10.875 18.75a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375h7.5zM3.375 15h7.5a.375.375 0 00.375-.375v-1.5a.375.375 0 00-.375-.375h-7.5a.375.375 0 00-.375.375v1.5c0 .207.168.375.375.375zm0-3.75h7.5a.375.375 0 00.375-.375v-1.5A.375.375 0 0010.875 9h-7.5A.375.375 0 003 9.375v1.5c0 .207.168.375.375.375z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/tag.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.tag />

      <.tag class="h-6 w-6 text-gray-500" />

  or as a function

      <%= tag() %>

      <%= tag(class: "h-6 w-6 text-gray-500") %>
  """
  def tag(assigns_or_opts \\ [])

  def tag(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M5.25 2.25a3 3 0 00-3 3v4.318a3 3 0 00.879 2.121l9.58 9.581c.92.92 2.39 1.186 3.548.428a18.849 18.849 0 005.441-5.44c.758-1.16.492-2.629-.428-3.548l-9.58-9.581a3 3 0 00-2.122-.879H5.25zM6.375 7.5a1.125 1.125 0 100-2.25 1.125 1.125 0 000 2.25z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def tag(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M5.25 2.25a3 3 0 00-3 3v4.318a3 3 0 00.879 2.121l9.58 9.581c.92.92 2.39 1.186 3.548.428a18.849 18.849 0 005.441-5.44c.758-1.16.492-2.629-.428-3.548l-9.58-9.581a3 3 0 00-2.122-.879H5.25zM6.375 7.5a1.125 1.125 0 100-2.25 1.125 1.125 0 000 2.25z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/ticket.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.ticket />

      <.ticket class="h-6 w-6 text-gray-500" />

  or as a function

      <%= ticket() %>

      <%= ticket(class: "h-6 w-6 text-gray-500") %>
  """
  def ticket(assigns_or_opts \\ [])

  def ticket(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M1.5 6.375c0-1.036.84-1.875 1.875-1.875h17.25c1.035 0 1.875.84 1.875 1.875v3.026a.75.75 0 01-.375.65 2.249 2.249 0 000 3.898.75.75 0 01.375.65v3.026c0 1.035-.84 1.875-1.875 1.875H3.375A1.875 1.875 0 011.5 17.625v-3.026a.75.75 0 01.374-.65 2.249 2.249 0 000-3.898.75.75 0 01-.374-.65V6.375zm15-1.125a.75.75 0 01.75.75v.75a.75.75 0 01-1.5 0V6a.75.75 0 01.75-.75zm.75 4.5a.75.75 0 00-1.5 0v.75a.75.75 0 001.5 0v-.75zm-.75 3a.75.75 0 01.75.75v.75a.75.75 0 01-1.5 0v-.75a.75.75 0 01.75-.75zm.75 4.5a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-.75zM6 12a.75.75 0 01.75-.75H12a.75.75 0 010 1.5H6.75A.75.75 0 016 12zm.75 2.25a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def ticket(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M1.5 6.375c0-1.036.84-1.875 1.875-1.875h17.25c1.035 0 1.875.84 1.875 1.875v3.026a.75.75 0 01-.375.65 2.249 2.249 0 000 3.898.75.75 0 01.375.65v3.026c0 1.035-.84 1.875-1.875 1.875H3.375A1.875 1.875 0 011.5 17.625v-3.026a.75.75 0 01.374-.65 2.249 2.249 0 000-3.898.75.75 0 01-.374-.65V6.375zm15-1.125a.75.75 0 01.75.75v.75a.75.75 0 01-1.5 0V6a.75.75 0 01.75-.75zm.75 4.5a.75.75 0 00-1.5 0v.75a.75.75 0 001.5 0v-.75zm-.75 3a.75.75 0 01.75.75v.75a.75.75 0 01-1.5 0v-.75a.75.75 0 01.75-.75zm.75 4.5a.75.75 0 00-1.5 0V18a.75.75 0 001.5 0v-.75zM6 12a.75.75 0 01.75-.75H12a.75.75 0 010 1.5H6.75A.75.75 0 016 12zm.75 2.25a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/trash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.trash />

      <.trash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= trash() %>

      <%= trash(class: "h-6 w-6 text-gray-500") %>
  """
  def trash(assigns_or_opts \\ [])

  def trash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M16.5 4.478v.227a48.816 48.816 0 013.878.512.75.75 0 11-.256 1.478l-.209-.035-1.005 13.07a3 3 0 01-2.991 2.77H8.084a3 3 0 01-2.991-2.77L4.087 6.66l-.209.035a.75.75 0 01-.256-1.478A48.567 48.567 0 017.5 4.705v-.227c0-1.564 1.213-2.9 2.816-2.951a52.662 52.662 0 013.369 0c1.603.051 2.815 1.387 2.815 2.951zm-6.136-1.452a51.196 51.196 0 013.273 0C14.39 3.05 15 3.684 15 4.478v.113a49.488 49.488 0 00-6 0v-.113c0-.794.609-1.428 1.364-1.452zm-.355 5.945a.75.75 0 10-1.5.058l.347 9a.75.75 0 101.499-.058l-.346-9zm5.48.058a.75.75 0 10-1.498-.058l-.347 9a.75.75 0 001.5.058l.345-9z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def trash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M16.5 4.478v.227a48.816 48.816 0 013.878.512.75.75 0 11-.256 1.478l-.209-.035-1.005 13.07a3 3 0 01-2.991 2.77H8.084a3 3 0 01-2.991-2.77L4.087 6.66l-.209.035a.75.75 0 01-.256-1.478A48.567 48.567 0 017.5 4.705v-.227c0-1.564 1.213-2.9 2.816-2.951a52.662 52.662 0 013.369 0c1.603.051 2.815 1.387 2.815 2.951zm-6.136-1.452a51.196 51.196 0 013.273 0C14.39 3.05 15 3.684 15 4.478v.113a49.488 49.488 0 00-6 0v-.113c0-.794.609-1.428 1.364-1.452zm-.355 5.945a.75.75 0 10-1.5.058l.347 9a.75.75 0 101.499-.058l-.346-9zm5.48.058a.75.75 0 10-1.498-.058l-.347 9a.75.75 0 001.5.058l.345-9z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/truck.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.truck />

      <.truck class="h-6 w-6 text-gray-500" />

  or as a function

      <%= truck() %>

      <%= truck(class: "h-6 w-6 text-gray-500") %>
  """
  def truck(assigns_or_opts \\ [])

  def truck(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.375 4.5C2.339 4.5 1.5 5.34 1.5 6.375V13.5h12V6.375c0-1.036-.84-1.875-1.875-1.875h-8.25zM13.5 15h-12v2.625c0 1.035.84 1.875 1.875 1.875h.375a3 3 0 116 0h3a.75.75 0 00.75-.75V15z"/>
      <path d="M8.25 19.5a1.5 1.5 0 10-3 0 1.5 1.5 0 003 0zM15.75 6.75a.75.75 0 00-.75.75v11.25c0 .087.015.17.042.248a3 3 0 015.958.464c.853-.175 1.522-.935 1.464-1.883a18.659 18.659 0 00-3.732-10.104 1.837 1.837 0 00-1.47-.725H15.75z"/>
      <path d="M19.5 19.5a1.5 1.5 0 10-3 0 1.5 1.5 0 003 0z"/>
    </svg>
    """
  end

  def truck(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M3.375 4.5C2.339 4.5 1.5 5.34 1.5 6.375V13.5h12V6.375c0-1.036-.84-1.875-1.875-1.875h-8.25zM13.5 15h-12v2.625c0 1.035.84 1.875 1.875 1.875h.375a3 3 0 116 0h3a.75.75 0 00.75-.75V15z\"/>\n  <path d=\"M8.25 19.5a1.5 1.5 0 10-3 0 1.5 1.5 0 003 0zM15.75 6.75a.75.75 0 00-.75.75v11.25c0 .087.015.17.042.248a3 3 0 015.958.464c.853-.175 1.522-.935 1.464-1.883a18.659 18.659 0 00-3.732-10.104 1.837 1.837 0 00-1.47-.725H15.75z\"/>\n  <path d=\"M19.5 19.5a1.5 1.5 0 10-3 0 1.5 1.5 0 003 0z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/user-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user_circle />

      <.user_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user_circle() %>

      <%= user_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def user_circle(assigns_or_opts \\ [])

  def user_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M18.685 19.097A9.723 9.723 0 0021.75 12c0-5.385-4.365-9.75-9.75-9.75S2.25 6.615 2.25 12a9.723 9.723 0 003.065 7.097A9.716 9.716 0 0012 21.75a9.716 9.716 0 006.685-2.653zm-12.54-1.285A7.486 7.486 0 0112 15a7.486 7.486 0 015.855 2.812A8.224 8.224 0 0112 20.25a8.224 8.224 0 01-5.855-2.438zM15.75 9a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def user_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M18.685 19.097A9.723 9.723 0 0021.75 12c0-5.385-4.365-9.75-9.75-9.75S2.25 6.615 2.25 12a9.723 9.723 0 003.065 7.097A9.716 9.716 0 0012 21.75a9.716 9.716 0 006.685-2.653zm-12.54-1.285A7.486 7.486 0 0112 15a7.486 7.486 0 015.855 2.812A8.224 8.224 0 0112 20.25a8.224 8.224 0 01-5.855-2.438zM15.75 9a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/user-group.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user_group />

      <.user_group class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user_group() %>

      <%= user_group(class: "h-6 w-6 text-gray-500") %>
  """
  def user_group(assigns_or_opts \\ [])

  def user_group(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M8.25 6.75a3.75 3.75 0 117.5 0 3.75 3.75 0 01-7.5 0zM15.75 9.75a3 3 0 116 0 3 3 0 01-6 0zM2.25 9.75a3 3 0 116 0 3 3 0 01-6 0zM6.31 15.117A6.745 6.745 0 0112 12a6.745 6.745 0 016.709 7.498.75.75 0 01-.372.568A12.696 12.696 0 0112 21.75c-2.305 0-4.47-.612-6.337-1.684a.75.75 0 01-.372-.568 6.787 6.787 0 011.019-4.38z" clip-rule="evenodd"/>
      <path d="M5.082 14.254a8.287 8.287 0 00-1.308 5.135 9.687 9.687 0 01-1.764-.44l-.115-.04a.563.563 0 01-.373-.487l-.01-.121a3.75 3.75 0 013.57-4.047zM20.226 19.389a8.287 8.287 0 00-1.308-5.135 3.75 3.75 0 013.57 4.047l-.01.121a.563.563 0 01-.373.486l-.115.04c-.567.2-1.156.349-1.764.441z"/>
    </svg>
    """
  end

  def user_group(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M8.25 6.75a3.75 3.75 0 117.5 0 3.75 3.75 0 01-7.5 0zM15.75 9.75a3 3 0 116 0 3 3 0 01-6 0zM2.25 9.75a3 3 0 116 0 3 3 0 01-6 0zM6.31 15.117A6.745 6.745 0 0112 12a6.745 6.745 0 016.709 7.498.75.75 0 01-.372.568A12.696 12.696 0 0112 21.75c-2.305 0-4.47-.612-6.337-1.684a.75.75 0 01-.372-.568 6.787 6.787 0 011.019-4.38z\" clip-rule=\"evenodd\"/>\n  <path d=\"M5.082 14.254a8.287 8.287 0 00-1.308 5.135 9.687 9.687 0 01-1.764-.44l-.115-.04a.563.563 0 01-.373-.487l-.01-.121a3.75 3.75 0 013.57-4.047zM20.226 19.389a8.287 8.287 0 00-1.308-5.135 3.75 3.75 0 013.57 4.047l-.01.121a.563.563 0 01-.373.486l-.115.04c-.567.2-1.156.349-1.764.441z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/user-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user_plus />

      <.user_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user_plus() %>

      <%= user_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def user_plus(assigns_or_opts \\ [])

  def user_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M5.25 6.375a4.125 4.125 0 118.25 0 4.125 4.125 0 01-8.25 0zM2.25 19.125a7.125 7.125 0 0114.25 0v.003l-.001.119a.75.75 0 01-.363.63 13.067 13.067 0 01-6.761 1.873c-2.472 0-4.786-.684-6.76-1.873a.75.75 0 01-.364-.63l-.001-.122zM18.75 7.5a.75.75 0 00-1.5 0v2.25H15a.75.75 0 000 1.5h2.25v2.25a.75.75 0 001.5 0v-2.25H21a.75.75 0 000-1.5h-2.25V7.5z"/>
    </svg>
    """
  end

  def user_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M5.25 6.375a4.125 4.125 0 118.25 0 4.125 4.125 0 01-8.25 0zM2.25 19.125a7.125 7.125 0 0114.25 0v.003l-.001.119a.75.75 0 01-.363.63 13.067 13.067 0 01-6.761 1.873c-2.472 0-4.786-.684-6.76-1.873a.75.75 0 01-.364-.63l-.001-.122zM18.75 7.5a.75.75 0 00-1.5 0v2.25H15a.75.75 0 000 1.5h2.25v2.25a.75.75 0 001.5 0v-2.25H21a.75.75 0 000-1.5h-2.25V7.5z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/user.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user />

      <.user class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user() %>

      <%= user(class: "h-6 w-6 text-gray-500") %>
  """
  def user(assigns_or_opts \\ [])

  def user(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M7.5 6a4.5 4.5 0 119 0 4.5 4.5 0 01-9 0zM3.751 20.105a8.25 8.25 0 0116.498 0 .75.75 0 01-.437.695A18.683 18.683 0 0112 22.5c-2.786 0-5.433-.608-7.812-1.7a.75.75 0 01-.437-.695z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def user(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M7.5 6a4.5 4.5 0 119 0 4.5 4.5 0 01-9 0zM3.751 20.105a8.25 8.25 0 0116.498 0 .75.75 0 01-.437.695A18.683 18.683 0 0112 22.5c-2.786 0-5.433-.608-7.812-1.7a.75.75 0 01-.437-.695z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/users.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.users />

      <.users class="h-6 w-6 text-gray-500" />

  or as a function

      <%= users() %>

      <%= users(class: "h-6 w-6 text-gray-500") %>
  """
  def users(assigns_or_opts \\ [])

  def users(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M4.5 6.375a4.125 4.125 0 118.25 0 4.125 4.125 0 01-8.25 0zM14.25 8.625a3.375 3.375 0 116.75 0 3.375 3.375 0 01-6.75 0zM1.5 19.125a7.125 7.125 0 0114.25 0v.003l-.001.119a.75.75 0 01-.363.63 13.067 13.067 0 01-6.761 1.873c-2.472 0-4.786-.684-6.76-1.873a.75.75 0 01-.364-.63l-.001-.122zM17.25 19.128l-.001.144a2.25 2.25 0 01-.233.96 10.088 10.088 0 005.06-1.01.75.75 0 00.42-.643 4.875 4.875 0 00-6.957-4.611 8.586 8.586 0 011.71 5.157v.003z"/>
    </svg>
    """
  end

  def users(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M4.5 6.375a4.125 4.125 0 118.25 0 4.125 4.125 0 01-8.25 0zM14.25 8.625a3.375 3.375 0 116.75 0 3.375 3.375 0 01-6.75 0zM1.5 19.125a7.125 7.125 0 0114.25 0v.003l-.001.119a.75.75 0 01-.363.63 13.067 13.067 0 01-6.761 1.873c-2.472 0-4.786-.684-6.76-1.873a.75.75 0 01-.364-.63l-.001-.122zM17.25 19.128l-.001.144a2.25 2.25 0 01-.233.96 10.088 10.088 0 005.06-1.01.75.75 0 00.42-.643 4.875 4.875 0 00-6.957-4.611 8.586 8.586 0 011.71 5.157v.003z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/video-camera-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.video_camera_slash />

      <.video_camera_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= video_camera_slash() %>

      <%= video_camera_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def video_camera_slash(assigns_or_opts \\ [])

  def video_camera_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM22.5 17.69c0 .471-.202.86-.504 1.124l-4.746-4.746V7.939l2.69-2.689c.944-.945 2.56-.276 2.56 1.06v11.38zM15.75 7.5v5.068L7.682 4.5h5.068a3 3 0 013 3zM1.5 7.5c0-.782.3-1.494.79-2.028l12.846 12.846A2.995 2.995 0 0112.75 19.5H4.5a3 3 0 01-3-3v-9z"/>
    </svg>
    """
  end

  def video_camera_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM22.5 17.69c0 .471-.202.86-.504 1.124l-4.746-4.746V7.939l2.69-2.689c.944-.945 2.56-.276 2.56 1.06v11.38zM15.75 7.5v5.068L7.682 4.5h5.068a3 3 0 013 3zM1.5 7.5c0-.782.3-1.494.79-2.028l12.846 12.846A2.995 2.995 0 0112.75 19.5H4.5a3 3 0 01-3-3v-9z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/video-camera.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.video_camera />

      <.video_camera class="h-6 w-6 text-gray-500" />

  or as a function

      <%= video_camera() %>

      <%= video_camera(class: "h-6 w-6 text-gray-500") %>
  """
  def video_camera(assigns_or_opts \\ [])

  def video_camera(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M4.5 4.5a3 3 0 00-3 3v9a3 3 0 003 3h8.25a3 3 0 003-3v-9a3 3 0 00-3-3H4.5zM19.94 18.75l-2.69-2.69V7.94l2.69-2.69c.944-.945 2.56-.276 2.56 1.06v11.38c0 1.336-1.616 2.005-2.56 1.06z"/>
    </svg>
    """
  end

  def video_camera(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M4.5 4.5a3 3 0 00-3 3v9a3 3 0 003 3h8.25a3 3 0 003-3v-9a3 3 0 00-3-3H4.5zM19.94 18.75l-2.69-2.69V7.94l2.69-2.69c.944-.945 2.56-.276 2.56 1.06v11.38c0 1.336-1.616 2.005-2.56 1.06z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/view-columns.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.view_columns />

      <.view_columns class="h-6 w-6 text-gray-500" />

  or as a function

      <%= view_columns() %>

      <%= view_columns(class: "h-6 w-6 text-gray-500") %>
  """
  def view_columns(assigns_or_opts \\ [])

  def view_columns(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path d="M15 3.75H9v16.5h6V3.75zM16.5 20.25h3.375c1.035 0 1.875-.84 1.875-1.875V5.625c0-1.036-.84-1.875-1.875-1.875H16.5v16.5zM4.125 3.75H7.5v16.5H4.125a1.875 1.875 0 01-1.875-1.875V5.625c0-1.036.84-1.875 1.875-1.875z"/>
    </svg>
    """
  end

  def view_columns(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path d=\"M15 3.75H9v16.5h6V3.75zM16.5 20.25h3.375c1.035 0 1.875-.84 1.875-1.875V5.625c0-1.036-.84-1.875-1.875-1.875H16.5v16.5zM4.125 3.75H7.5v16.5H4.125a1.875 1.875 0 01-1.875-1.875V5.625c0-1.036.84-1.875 1.875-1.875z\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/wifi.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.wifi />

      <.wifi class="h-6 w-6 text-gray-500" />

  or as a function

      <%= wifi() %>

      <%= wifi(class: "h-6 w-6 text-gray-500") %>
  """
  def wifi(assigns_or_opts \\ [])

  def wifi(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M1.371 8.143c5.858-5.857 15.356-5.857 21.213 0a.75.75 0 010 1.061l-.53.53a.75.75 0 01-1.06 0c-4.98-4.979-13.053-4.979-18.032 0a.75.75 0 01-1.06 0l-.53-.53a.75.75 0 010-1.06zm3.182 3.182c4.1-4.1 10.749-4.1 14.85 0a.75.75 0 010 1.061l-.53.53a.75.75 0 01-1.062 0 8.25 8.25 0 00-11.667 0 .75.75 0 01-1.06 0l-.53-.53a.75.75 0 010-1.06zm3.204 3.182a6 6 0 018.486 0 .75.75 0 010 1.061l-.53.53a.75.75 0 01-1.061 0 3.75 3.75 0 00-5.304 0 .75.75 0 01-1.06 0l-.53-.53a.75.75 0 010-1.06zm3.182 3.182a1.5 1.5 0 012.122 0 .75.75 0 010 1.061l-.53.53a.75.75 0 01-1.061 0l-.53-.53a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def wifi(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M1.371 8.143c5.858-5.857 15.356-5.857 21.213 0a.75.75 0 010 1.061l-.53.53a.75.75 0 01-1.06 0c-4.98-4.979-13.053-4.979-18.032 0a.75.75 0 01-1.06 0l-.53-.53a.75.75 0 010-1.06zm3.182 3.182c4.1-4.1 10.749-4.1 14.85 0a.75.75 0 010 1.061l-.53.53a.75.75 0 01-1.062 0 8.25 8.25 0 00-11.667 0 .75.75 0 01-1.06 0l-.53-.53a.75.75 0 010-1.06zm3.204 3.182a6 6 0 018.486 0 .75.75 0 010 1.061l-.53.53a.75.75 0 01-1.061 0 3.75 3.75 0 00-5.304 0 .75.75 0 01-1.06 0l-.53-.53a.75.75 0 010-1.06zm3.182 3.182a1.5 1.5 0 012.122 0 .75.75 0 010 1.061l-.53.53a.75.75 0 01-1.061 0l-.53-.53a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/wrench-screwdriver.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.wrench_screwdriver />

      <.wrench_screwdriver class="h-6 w-6 text-gray-500" />

  or as a function

      <%= wrench_screwdriver() %>

      <%= wrench_screwdriver(class: "h-6 w-6 text-gray-500") %>
  """
  def wrench_screwdriver(assigns_or_opts \\ [])

  def wrench_screwdriver(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 6.75a5.25 5.25 0 016.775-5.025.75.75 0 01.313 1.248l-3.32 3.319c.063.475.276.934.641 1.299.365.365.824.578 1.3.64l3.318-3.319a.75.75 0 011.248.313 5.25 5.25 0 01-5.472 6.756c-1.018-.086-1.87.1-2.309.634L7.344 21.3A3.298 3.298 0 112.7 16.657l8.684-7.151c.533-.44.72-1.291.634-2.309A5.342 5.342 0 0112 6.75zM4.117 19.125a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008z" clip-rule="evenodd"/>
      <path d="M10.076 8.64l-2.201-2.2V4.874a.75.75 0 00-.364-.643l-3.75-2.25a.75.75 0 00-.916.113l-.75.75a.75.75 0 00-.113.916l2.25 3.75a.75.75 0 00.643.364h1.564l2.062 2.062 1.575-1.297z"/>
      <path fill-rule="evenodd" d="M12.556 17.329l4.183 4.182a3.375 3.375 0 004.773-4.773l-3.306-3.305a6.803 6.803 0 01-1.53.043c-.394-.034-.682-.006-.867.042a.589.589 0 00-.167.063l-3.086 3.748zm3.414-1.36a.75.75 0 011.06 0l1.875 1.876a.75.75 0 11-1.06 1.06L15.97 17.03a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def wrench_screwdriver(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 6.75a5.25 5.25 0 016.775-5.025.75.75 0 01.313 1.248l-3.32 3.319c.063.475.276.934.641 1.299.365.365.824.578 1.3.64l3.318-3.319a.75.75 0 011.248.313 5.25 5.25 0 01-5.472 6.756c-1.018-.086-1.87.1-2.309.634L7.344 21.3A3.298 3.298 0 112.7 16.657l8.684-7.151c.533-.44.72-1.291.634-2.309A5.342 5.342 0 0112 6.75zM4.117 19.125a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008z\" clip-rule=\"evenodd\"/>\n  <path d=\"M10.076 8.64l-2.201-2.2V4.874a.75.75 0 00-.364-.643l-3.75-2.25a.75.75 0 00-.916.113l-.75.75a.75.75 0 00-.113.916l2.25 3.75a.75.75 0 00.643.364h1.564l2.062 2.062 1.575-1.297z\"/>\n  <path fill-rule=\"evenodd\" d=\"M12.556 17.329l4.183 4.182a3.375 3.375 0 004.773-4.773l-3.306-3.305a6.803 6.803 0 01-1.53.043c-.394-.034-.682-.006-.867.042a.589.589 0 00-.167.063l-3.086 3.748zm3.414-1.36a.75.75 0 011.06 0l1.875 1.876a.75.75 0 11-1.06 1.06L15.97 17.03a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/wrench.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.wrench />

      <.wrench class="h-6 w-6 text-gray-500" />

  or as a function

      <%= wrench() %>

      <%= wrench(class: "h-6 w-6 text-gray-500") %>
  """
  def wrench(assigns_or_opts \\ [])

  def wrench(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 6.75a5.25 5.25 0 016.775-5.025.75.75 0 01.313 1.248l-3.32 3.319c.063.475.276.934.641 1.299.365.365.824.578 1.3.64l3.318-3.319a.75.75 0 011.248.313 5.25 5.25 0 01-5.472 6.756c-1.018-.086-1.87.1-2.309.634L7.344 21.3A3.298 3.298 0 112.7 16.657l8.684-7.151c.533-.44.72-1.291.634-2.309A5.342 5.342 0 0112 6.75zM4.117 19.125a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def wrench(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 6.75a5.25 5.25 0 016.775-5.025.75.75 0 01.313 1.248l-3.32 3.319c.063.475.276.934.641 1.299.365.365.824.578 1.3.64l3.318-3.319a.75.75 0 011.248.313 5.25 5.25 0 01-5.472 6.756c-1.018-.086-1.87.1-2.309.634L7.344 21.3A3.298 3.298 0 112.7 16.657l8.684-7.151c.533-.44.72-1.291.634-2.309A5.342 5.342 0 0112 6.75zM4.117 19.125a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75h-.008a.75.75 0 01-.75-.75v-.008z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/x-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.x_circle />

      <.x_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= x_circle() %>

      <%= x_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def x_circle(assigns_or_opts \\ [])

  def x_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-1.72 6.97a.75.75 0 10-1.06 1.06L10.94 12l-1.72 1.72a.75.75 0 101.06 1.06L12 13.06l1.72 1.72a.75.75 0 101.06-1.06L13.06 12l1.72-1.72a.75.75 0 10-1.06-1.06L12 10.94l-1.72-1.72z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def x_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-1.72 6.97a.75.75 0 10-1.06 1.06L10.94 12l-1.72 1.72a.75.75 0 101.06 1.06L12 13.06l1.72 1.72a.75.75 0 101.06-1.06L13.06 12l1.72-1.72a.75.75 0 10-1.06-1.06L12 10.94l-1.72-1.72z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/x-mark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.x_mark />

      <.x_mark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= x_mark() %>

      <%= x_mark(class: "h-6 w-6 text-gray-500") %>
  """
  def x_mark(assigns_or_opts \\ [])

  def x_mark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M3.97 3.97a.75.75 0 011.06 0L12 10.94l6.97-6.97a.75.75 0 111.06 1.06L13.06 12l6.97 6.97a.75.75 0 11-1.06 1.06L12 13.06l-6.97 6.97a.75.75 0 01-1.06-1.06L10.94 12 3.97 5.03a.75.75 0 010-1.06z" clip-rule="evenodd"/>
    </svg>
    """
  end

  def x_mark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n  <path fill-rule=\"evenodd\" d=\"M3.97 3.97a.75.75 0 011.06 0L12 10.94l6.97-6.97a.75.75 0 111.06 1.06L13.06 12l6.97 6.97a.75.75 0 11-1.06 1.06L12 13.06l-6.97 6.97a.75.75 0 01-1.06-1.06L10.94 12 3.97 5.03a.75.75 0 010-1.06z\" clip-rule=\"evenodd\"/>\n</svg>"]}
  end

end
