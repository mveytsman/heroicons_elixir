defmodule Heroicons.Mini do
  @moduledoc """
  Solid style icons drawn with fills, packaged as Phoenix Components.

  For smaller elements like buttons, form elements, and to support text,
  designed to be rendered at 20x20.
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
  ![](assets/icons/mini/academic-cap.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.66413 1.31866C9.87552 1.21279 10.1244 1.21279 10.3358 1.31866C13.2902 2.7983 16.0408 4.6242 18.5343 6.74302C18.7415 6.91909 18.8372 7.1935 18.7844 7.46023C18.7316 7.72695 18.5385 7.9442 18.2799 8.02802C15.4656 8.94004 12.8246 10.2376 10.4191 11.8586C10.1658 12.0293 9.8342 12.0293 9.58086 11.8586C8.90534 11.4034 8.21125 10.9737 7.49997 10.5709V9.39384C7.49997 9.1503 7.61572 8.93111 7.80165 8.80225C8.86302 8.0666 9.96638 7.38737 11.1074 6.76888C11.4715 6.57149 11.6067 6.11626 11.4093 5.75211C11.2119 5.38795 10.7567 5.25276 10.3926 5.45016C9.20323 6.09484 8.05326 6.80277 6.94716 7.56942C6.3428 7.98831 5.99997 8.67582 5.99997 9.39384V9.7741C4.62709 9.09181 3.19747 8.5068 1.7201 8.02802C1.46144 7.9442 1.26841 7.72695 1.2156 7.46023C1.16278 7.1935 1.25847 6.91909 1.46567 6.74302C3.95918 4.6242 6.70972 2.7983 9.66413 1.31866ZM5.99997 11.4596C5.20208 11.0378 4.38297 10.651 3.54469 10.3012C3.37611 11.3268 3.24559 12.3652 3.15464 13.415C3.12783 13.7244 3.29452 14.0184 3.57385 14.1542C4.10178 14.4109 4.61994 14.6847 5.12759 14.9748C4.91888 15.2987 4.67271 15.6055 4.38907 15.8891C4.09618 16.182 4.09618 16.6569 4.38907 16.9497C4.68197 17.2426 5.15684 17.2426 5.44973 16.9497C5.81938 16.5801 6.13906 16.1793 6.40876 15.7558C7.49842 16.4631 8.53293 17.2484 9.50439 18.1037C9.78772 18.3532 10.2123 18.3532 10.4956 18.1037C12.2768 16.5355 14.2699 15.2028 16.4262 14.1542C16.7055 14.0184 16.8722 13.7244 16.8454 13.415C16.7544 12.3652 16.6239 11.3268 16.4553 10.3011C14.6241 11.0653 12.8844 12.0061 11.2574 13.1025C10.4974 13.6147 9.50263 13.6147 8.7426 13.1025C8.33322 12.8267 7.91669 12.5606 7.49337 12.3048C7.44116 13.5085 7.07958 14.7023 6.40877 15.7557C5.98972 15.4837 5.56252 15.2232 5.12761 14.9747C5.70924 14.0721 5.99997 13.0367 5.99997 12V11.4596Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.66413 1.31866C9.87552 1.21279 10.1244 1.21279 10.3358 1.31866C13.2902 2.7983 16.0408 4.6242 18.5343 6.74302C18.7415 6.91909 18.8372 7.1935 18.7844 7.46023C18.7316 7.72695 18.5385 7.9442 18.2799 8.02802C15.4656 8.94004 12.8246 10.2376 10.4191 11.8586C10.1658 12.0293 9.8342 12.0293 9.58086 11.8586C8.90534 11.4034 8.21125 10.9737 7.49997 10.5709V9.39384C7.49997 9.1503 7.61572 8.93111 7.80165 8.80225C8.86302 8.0666 9.96638 7.38737 11.1074 6.76888C11.4715 6.57149 11.6067 6.11626 11.4093 5.75211C11.2119 5.38795 10.7567 5.25276 10.3926 5.45016C9.20323 6.09484 8.05326 6.80277 6.94716 7.56942C6.3428 7.98831 5.99997 8.67582 5.99997 9.39384V9.7741C4.62709 9.09181 3.19747 8.5068 1.7201 8.02802C1.46144 7.9442 1.26841 7.72695 1.2156 7.46023C1.16278 7.1935 1.25847 6.91909 1.46567 6.74302C3.95918 4.6242 6.70972 2.7983 9.66413 1.31866ZM5.99997 11.4596C5.20208 11.0378 4.38297 10.651 3.54469 10.3012C3.37611 11.3268 3.24559 12.3652 3.15464 13.415C3.12783 13.7244 3.29452 14.0184 3.57385 14.1542C4.10178 14.4109 4.61994 14.6847 5.12759 14.9748C4.91888 15.2987 4.67271 15.6055 4.38907 15.8891C4.09618 16.182 4.09618 16.6569 4.38907 16.9497C4.68197 17.2426 5.15684 17.2426 5.44973 16.9497C5.81938 16.5801 6.13906 16.1793 6.40876 15.7558C7.49842 16.4631 8.53293 17.2484 9.50439 18.1037C9.78772 18.3532 10.2123 18.3532 10.4956 18.1037C12.2768 16.5355 14.2699 15.2028 16.4262 14.1542C16.7055 14.0184 16.8722 13.7244 16.8454 13.415C16.7544 12.3652 16.6239 11.3268 16.4553 10.3011C14.6241 11.0653 12.8844 12.0061 11.2574 13.1025C10.4974 13.6147 9.50263 13.6147 8.7426 13.1025C8.33322 12.8267 7.91669 12.5606 7.49337 12.3048C7.44116 13.5085 7.07958 14.7023 6.40877 15.7557C5.98972 15.4837 5.56252 15.2232 5.12761 14.9747C5.70924 14.0721 5.99997 13.0367 5.99997 12V11.4596Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/adjustments-horizontal.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 3.75C10 2.64543 9.10457 1.75 8 1.75C6.89543 1.75 6 2.64543 6 3.75C6 4.85457 6.89543 5.75 8 5.75C9.10457 5.75 10 4.85457 10 3.75Z" fill="#0F172A"/>
    <path d="M17.25 4.5C17.6642 4.5 18 4.16421 18 3.75C18 3.33579 17.6642 3 17.25 3L11.75 3C11.3358 3 11 3.33579 11 3.75C11 4.16421 11.3358 4.5 11.75 4.5L17.25 4.5Z" fill="#0F172A"/>
    <path d="M5 3.75C5 4.16421 4.66421 4.5 4.25 4.5H2.75C2.33579 4.5 2 4.16421 2 3.75C2 3.33579 2.33579 3 2.75 3L4.25 3C4.66421 3 5 3.33579 5 3.75Z" fill="#0F172A"/>
    <path d="M4.25 17C4.66421 17 5 16.6642 5 16.25C5 15.8358 4.66421 15.5 4.25 15.5H2.75C2.33579 15.5 2 15.8358 2 16.25C2 16.6642 2.33579 17 2.75 17H4.25Z" fill="#0F172A"/>
    <path d="M17.25 17C17.6642 17 18 16.6642 18 16.25C18 15.8358 17.6642 15.5 17.25 15.5H11.75C11.3358 15.5 11 15.8358 11 16.25C11 16.6642 11.3358 17 11.75 17H17.25Z" fill="#0F172A"/>
    <path d="M9 10C9 10.4142 8.66421 10.75 8.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10C2 9.58579 2.33579 9.25 2.75 9.25L8.25 9.25C8.66421 9.25 9 9.58579 9 10Z" fill="#0F172A"/>
    <path d="M17.25 10.75C17.6642 10.75 18 10.4142 18 10C18 9.58579 17.6642 9.25 17.25 9.25H15.75C15.3358 9.25 15 9.58579 15 10C15 10.4142 15.3358 10.75 15.75 10.75H17.25Z" fill="#0F172A"/>
    <path d="M14 10C14 8.89543 13.1046 8 12 8C10.8954 8 10 8.89543 10 10C10 11.1046 10.8954 12 12 12C13.1046 12 14 11.1046 14 10Z" fill="#0F172A"/>
    <path d="M10 16.25C10 15.1454 9.10457 14.25 8 14.25C6.89543 14.25 6 15.1454 6 16.25C6 17.3546 6.89543 18.25 8 18.25C9.10457 18.25 10 17.3546 10 16.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10 3.75C10 2.64543 9.10457 1.75 8 1.75C6.89543 1.75 6 2.64543 6 3.75C6 4.85457 6.89543 5.75 8 5.75C9.10457 5.75 10 4.85457 10 3.75Z\" fill=\"#0F172A\"/>\n<path d=\"M17.25 4.5C17.6642 4.5 18 4.16421 18 3.75C18 3.33579 17.6642 3 17.25 3L11.75 3C11.3358 3 11 3.33579 11 3.75C11 4.16421 11.3358 4.5 11.75 4.5L17.25 4.5Z\" fill=\"#0F172A\"/>\n<path d=\"M5 3.75C5 4.16421 4.66421 4.5 4.25 4.5H2.75C2.33579 4.5 2 4.16421 2 3.75C2 3.33579 2.33579 3 2.75 3L4.25 3C4.66421 3 5 3.33579 5 3.75Z\" fill=\"#0F172A\"/>\n<path d=\"M4.25 17C4.66421 17 5 16.6642 5 16.25C5 15.8358 4.66421 15.5 4.25 15.5H2.75C2.33579 15.5 2 15.8358 2 16.25C2 16.6642 2.33579 17 2.75 17H4.25Z\" fill=\"#0F172A\"/>\n<path d=\"M17.25 17C17.6642 17 18 16.6642 18 16.25C18 15.8358 17.6642 15.5 17.25 15.5H11.75C11.3358 15.5 11 15.8358 11 16.25C11 16.6642 11.3358 17 11.75 17H17.25Z\" fill=\"#0F172A\"/>\n<path d=\"M9 10C9 10.4142 8.66421 10.75 8.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10C2 9.58579 2.33579 9.25 2.75 9.25L8.25 9.25C8.66421 9.25 9 9.58579 9 10Z\" fill=\"#0F172A\"/>\n<path d=\"M17.25 10.75C17.6642 10.75 18 10.4142 18 10C18 9.58579 17.6642 9.25 17.25 9.25H15.75C15.3358 9.25 15 9.58579 15 10C15 10.4142 15.3358 10.75 15.75 10.75H17.25Z\" fill=\"#0F172A\"/>\n<path d=\"M14 10C14 8.89543 13.1046 8 12 8C10.8954 8 10 8.89543 10 10C10 11.1046 10.8954 12 12 12C13.1046 12 14 11.1046 14 10Z\" fill=\"#0F172A\"/>\n<path d=\"M10 16.25C10 15.1454 9.10457 14.25 8 14.25C6.89543 14.25 6 15.1454 6 16.25C6 17.3546 6.89543 18.25 8 18.25C9.10457 18.25 10 17.3546 10 16.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/adjustments-vertical.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M17 2.75C17 2.33579 16.6642 2 16.25 2C15.8358 2 15.5 2.33579 15.5 2.75V8.25C15.5 8.66421 15.8358 9 16.25 9C16.6642 9 17 8.66421 17 8.25V2.75Z" fill="#0F172A"/>
    <path d="M17 15.75C17 15.3358 16.6642 15 16.25 15C15.8358 15 15.5 15.3358 15.5 15.75V17.25C15.5 17.6642 15.8358 18 16.25 18C16.6642 18 17 17.6642 17 17.25V15.75Z" fill="#0F172A"/>
    <path d="M3.75 15C4.16421 15 4.5 15.3358 4.5 15.75V17.25C4.5 17.6642 4.16421 18 3.75 18C3.33579 18 3 17.6642 3 17.25V15.75C3 15.3358 3.33579 15 3.75 15Z" fill="#0F172A"/>
    <path d="M4.5 2.75C4.5 2.33579 4.16421 2 3.75 2C3.33579 2 3 2.33579 3 2.75V8.25C3 8.66421 3.33579 9 3.75 9C4.16421 9 4.5 8.66421 4.5 8.25V2.75Z" fill="#0F172A"/>
    <path d="M10 11C10.4142 11 10.75 11.3358 10.75 11.75V17.25C10.75 17.6642 10.4142 18 10 18C9.58579 18 9.25 17.6642 9.25 17.25V11.75C9.25 11.3358 9.58579 11 10 11Z" fill="#0F172A"/>
    <path d="M10.75 2.75C10.75 2.33579 10.4142 2 10 2C9.58579 2 9.25 2.33579 9.25 2.75V4.25C9.25 4.66421 9.58579 5 10 5C10.4142 5 10.75 4.66421 10.75 4.25V2.75Z" fill="#0F172A"/>
    <path d="M10 6C8.89543 6 8 6.89543 8 8C8 9.10457 8.89543 10 10 10C11.1046 10 12 9.10457 12 8C12 6.89543 11.1046 6 10 6Z" fill="#0F172A"/>
    <path d="M3.75 10C2.64543 10 1.75 10.8954 1.75 12C1.75 13.1046 2.64543 14 3.75 14C4.85457 14 5.75 13.1046 5.75 12C5.75 10.8954 4.85457 10 3.75 10Z" fill="#0F172A"/>
    <path d="M16.25 10C15.1454 10 14.25 10.8954 14.25 12C14.25 13.1046 15.1454 14 16.25 14C17.3546 14 18.25 13.1046 18.25 12C18.25 10.8954 17.3546 10 16.25 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M17 2.75C17 2.33579 16.6642 2 16.25 2C15.8358 2 15.5 2.33579 15.5 2.75V8.25C15.5 8.66421 15.8358 9 16.25 9C16.6642 9 17 8.66421 17 8.25V2.75Z\" fill=\"#0F172A\"/>\n<path d=\"M17 15.75C17 15.3358 16.6642 15 16.25 15C15.8358 15 15.5 15.3358 15.5 15.75V17.25C15.5 17.6642 15.8358 18 16.25 18C16.6642 18 17 17.6642 17 17.25V15.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3.75 15C4.16421 15 4.5 15.3358 4.5 15.75V17.25C4.5 17.6642 4.16421 18 3.75 18C3.33579 18 3 17.6642 3 17.25V15.75C3 15.3358 3.33579 15 3.75 15Z\" fill=\"#0F172A\"/>\n<path d=\"M4.5 2.75C4.5 2.33579 4.16421 2 3.75 2C3.33579 2 3 2.33579 3 2.75V8.25C3 8.66421 3.33579 9 3.75 9C4.16421 9 4.5 8.66421 4.5 8.25V2.75Z\" fill=\"#0F172A\"/>\n<path d=\"M10 11C10.4142 11 10.75 11.3358 10.75 11.75V17.25C10.75 17.6642 10.4142 18 10 18C9.58579 18 9.25 17.6642 9.25 17.25V11.75C9.25 11.3358 9.58579 11 10 11Z\" fill=\"#0F172A\"/>\n<path d=\"M10.75 2.75C10.75 2.33579 10.4142 2 10 2C9.58579 2 9.25 2.33579 9.25 2.75V4.25C9.25 4.66421 9.58579 5 10 5C10.4142 5 10.75 4.66421 10.75 4.25V2.75Z\" fill=\"#0F172A\"/>\n<path d=\"M10 6C8.89543 6 8 6.89543 8 8C8 9.10457 8.89543 10 10 10C11.1046 10 12 9.10457 12 8C12 6.89543 11.1046 6 10 6Z\" fill=\"#0F172A\"/>\n<path d=\"M3.75 10C2.64543 10 1.75 10.8954 1.75 12C1.75 13.1046 2.64543 14 3.75 14C4.85457 14 5.75 13.1046 5.75 12C5.75 10.8954 4.85457 10 3.75 10Z\" fill=\"#0F172A\"/>\n<path d=\"M16.25 10C15.1454 10 14.25 10.8954 14.25 12C14.25 13.1046 15.1454 14 16.25 14C17.3546 14 18.25 13.1046 18.25 12C18.25 10.8954 17.3546 10 16.25 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/archive-box-arrow-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 3C1.44772 3 1 3.44772 1 4V5C1 5.55228 1.44772 6 2 6H18C18.5523 6 19 5.55228 19 5V4C19 3.44772 18.5523 3 18 3H2ZM2 7.5H18L17.1885 15.2094C17.0813 16.2273 16.223 17 15.1995 17H4.80052C3.77701 17 2.91866 16.2273 2.81151 15.2094L2 7.5ZM10 9C10.4142 9 10.75 9.33579 10.75 9.75V12.2955L11.6925 11.2483C11.9696 10.9404 12.4438 10.9154 12.7517 11.1925C13.0596 11.4696 13.0846 11.9438 12.8075 12.2517L10.5575 14.7517C10.4152 14.9098 10.2126 15 10 15C9.78738 15 9.58476 14.9098 9.44253 14.7517L7.19253 12.2517C6.91543 11.9438 6.94039 11.4696 7.24828 11.1925C7.55616 10.9154 8.03038 10.9404 8.30747 11.2483L9.25 12.2955V9.75C9.25 9.33579 9.58579 9 10 9Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 3C1.44772 3 1 3.44772 1 4V5C1 5.55228 1.44772 6 2 6H18C18.5523 6 19 5.55228 19 5V4C19 3.44772 18.5523 3 18 3H2ZM2 7.5H18L17.1885 15.2094C17.0813 16.2273 16.223 17 15.1995 17H4.80052C3.77701 17 2.91866 16.2273 2.81151 15.2094L2 7.5ZM10 9C10.4142 9 10.75 9.33579 10.75 9.75V12.2955L11.6925 11.2483C11.9696 10.9404 12.4438 10.9154 12.7517 11.1925C13.0596 11.4696 13.0846 11.9438 12.8075 12.2517L10.5575 14.7517C10.4152 14.9098 10.2126 15 10 15C9.78738 15 9.58476 14.9098 9.44253 14.7517L7.19253 12.2517C6.91543 11.9438 6.94039 11.4696 7.24828 11.1925C7.55616 10.9154 8.03038 10.9404 8.30747 11.2483L9.25 12.2955V9.75C9.25 9.33579 9.58579 9 10 9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/archive-box-x-mark.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M2 3C1.44772 3 1 3.44772 1 4V5C1 5.55228 1.44772 6 2 6H18C18.5523 6 19 5.55228 19 5V4C19 3.44772 18.5523 3 18 3H2Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 7.5H18L17.1885 15.2094C17.0813 16.2273 16.223 17 15.1995 17H4.80052C3.77701 17 2.91866 16.2273 2.81151 15.2094L2 7.5ZM7.21967 9.21967C7.51256 8.92678 7.98744 8.92678 8.28033 9.21967L10 10.9393L11.7197 9.21967C12.0126 8.92678 12.4874 8.92678 12.7803 9.21967C13.0732 9.51256 13.0732 9.98744 12.7803 10.2803L11.0607 12L12.7803 13.7197C13.0732 14.0126 13.0732 14.4874 12.7803 14.7803C12.4874 15.0732 12.0126 15.0732 11.7197 14.7803L10 13.0607L8.28033 14.7803C7.98744 15.0732 7.51256 15.0732 7.21967 14.7803C6.92678 14.4874 6.92678 14.0126 7.21967 13.7197L8.93934 12L7.21967 10.2803C6.92678 9.98744 6.92678 9.51256 7.21967 9.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M2 3C1.44772 3 1 3.44772 1 4V5C1 5.55228 1.44772 6 2 6H18C18.5523 6 19 5.55228 19 5V4C19 3.44772 18.5523 3 18 3H2Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 7.5H18L17.1885 15.2094C17.0813 16.2273 16.223 17 15.1995 17H4.80052C3.77701 17 2.91866 16.2273 2.81151 15.2094L2 7.5ZM7.21967 9.21967C7.51256 8.92678 7.98744 8.92678 8.28033 9.21967L10 10.9393L11.7197 9.21967C12.0126 8.92678 12.4874 8.92678 12.7803 9.21967C13.0732 9.51256 13.0732 9.98744 12.7803 10.2803L11.0607 12L12.7803 13.7197C13.0732 14.0126 13.0732 14.4874 12.7803 14.7803C12.4874 15.0732 12.0126 15.0732 11.7197 14.7803L10 13.0607L8.28033 14.7803C7.98744 15.0732 7.51256 15.0732 7.21967 14.7803C6.92678 14.4874 6.92678 14.0126 7.21967 13.7197L8.93934 12L7.21967 10.2803C6.92678 9.98744 6.92678 9.51256 7.21967 9.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/archive-box.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M2 3C1.44772 3 1 3.44772 1 4V5C1 5.55228 1.44772 6 2 6H18C18.5523 6 19 5.55228 19 5V4C19 3.44772 18.5523 3 18 3H2Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 7.5H18L17.1885 15.2094C17.0813 16.2273 16.223 17 15.1995 17H4.80052C3.77701 17 2.91866 16.2273 2.81151 15.2094L2 7.5ZM7 11C7 10.4477 7.44772 10 8 10H12C12.5523 10 13 10.4477 13 11C13 11.5523 12.5523 12 12 12H8C7.44772 12 7 11.5523 7 11Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M2 3C1.44772 3 1 3.44772 1 4V5C1 5.55228 1.44772 6 2 6H18C18.5523 6 19 5.55228 19 5V4C19 3.44772 18.5523 3 18 3H2Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 7.5H18L17.1885 15.2094C17.0813 16.2273 16.223 17 15.1995 17H4.80052C3.77701 17 2.91866 16.2273 2.81151 15.2094L2 7.5ZM7 11C7 10.4477 7.44772 10 8 10H12C12.5523 10 13 10.4477 13 11C13 11.5523 12.5523 12 12 12H8C7.44772 12 7 11.5523 7 11Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-down-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM10.75 6.75C10.75 6.33579 10.4142 6 10 6C9.58579 6 9.25 6.33579 9.25 6.75V11.3401L7.29959 9.23966C7.01774 8.93613 6.54319 8.91855 6.23966 9.20041C5.93613 9.48226 5.91855 9.95681 6.20041 10.2603L9.45041 13.7603C9.59231 13.9132 9.79145 14 10 14C10.2086 14 10.4077 13.9132 10.5496 13.7603L13.7996 10.2603C14.0814 9.95681 14.0639 9.48226 13.7603 9.20041C13.4568 8.91855 12.9823 8.93613 12.7004 9.23966L10.75 11.3401V6.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM10.75 6.75C10.75 6.33579 10.4142 6 10 6C9.58579 6 9.25 6.33579 9.25 6.75V11.3401L7.29959 9.23966C7.01774 8.93613 6.54319 8.91855 6.23966 9.20041C5.93613 9.48226 5.91855 9.95681 6.20041 10.2603L9.45041 13.7603C9.59231 13.9132 9.79145 14 10 14C10.2086 14 10.4077 13.9132 10.5496 13.7603L13.7996 10.2603C14.0814 9.95681 14.0639 9.48226 13.7603 9.20041C13.4568 8.91855 12.9823 8.93613 12.7004 9.23966L10.75 11.3401V6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-down-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.7803 5.21967C14.4874 4.92678 14.0126 4.92678 13.7197 5.21967L6.5 12.4393V6.75C6.5 6.33579 6.16421 6 5.75 6C5.33579 6 5 6.33579 5 6.75V14.25C5 14.6642 5.33579 15 5.75 15H13.25C13.6642 15 14 14.6642 14 14.25C14 13.8358 13.6642 13.5 13.25 13.5H7.56066L14.7803 6.28033C15.0732 5.98744 15.0732 5.51256 14.7803 5.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.7803 5.21967C14.4874 4.92678 14.0126 4.92678 13.7197 5.21967L6.5 12.4393V6.75C6.5 6.33579 6.16421 6 5.75 6C5.33579 6 5 6.33579 5 6.75V14.25C5 14.6642 5.33579 15 5.75 15H13.25C13.6642 15 14 14.6642 14 14.25C14 13.8358 13.6642 13.5 13.25 13.5H7.56066L14.7803 6.28033C15.0732 5.98744 15.0732 5.51256 14.7803 5.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-down-on-square-stack.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.00001 1C8.41422 1 8.75001 1.33579 8.75001 1.75V6H7.25001V1.75C7.25001 1.33579 7.58579 1 8.00001 1ZM7.25001 6V9.29553L6.30748 8.24828C6.03038 7.94039 5.55617 7.91543 5.24828 8.19253C4.9404 8.46962 4.91544 8.94384 5.19254 9.25172L7.44254 11.7517C7.58477 11.9098 7.78739 12 8.00001 12C8.21262 12 8.41525 11.9098 8.55748 11.7517L10.8075 9.25172C11.0846 8.94384 11.0596 8.46962 10.7517 8.19253C10.4438 7.91543 9.96963 7.94039 9.69254 8.24828L8.75001 9.29553V6H10.75C11.9926 6 13 7.00736 13 8.25V12.75C13 13.9926 11.9926 15 10.75 15H5.25C4.00736 15 3 13.9926 3 12.75V8.25C3 7.00736 4.00736 6 5.25 6H7.25001ZM7 16.75V16.5H10.75C12.8211 16.5 14.5 14.8211 14.5 12.75V10H14.75C15.9926 10 17 11.0074 17 12.25V16.75C17 17.9926 15.9926 19 14.75 19H9.25C8.00736 19 7 17.9926 7 16.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.00001 1C8.41422 1 8.75001 1.33579 8.75001 1.75V6H7.25001V1.75C7.25001 1.33579 7.58579 1 8.00001 1ZM7.25001 6V9.29553L6.30748 8.24828C6.03038 7.94039 5.55617 7.91543 5.24828 8.19253C4.9404 8.46962 4.91544 8.94384 5.19254 9.25172L7.44254 11.7517C7.58477 11.9098 7.78739 12 8.00001 12C8.21262 12 8.41525 11.9098 8.55748 11.7517L10.8075 9.25172C11.0846 8.94384 11.0596 8.46962 10.7517 8.19253C10.4438 7.91543 9.96963 7.94039 9.69254 8.24828L8.75001 9.29553V6H10.75C11.9926 6 13 7.00736 13 8.25V12.75C13 13.9926 11.9926 15 10.75 15H5.25C4.00736 15 3 13.9926 3 12.75V8.25C3 7.00736 4.00736 6 5.25 6H7.25001ZM7 16.75V16.5H10.75C12.8211 16.5 14.5 14.8211 14.5 12.75V10H14.75C15.9926 10 17 11.0074 17 12.25V16.75C17 17.9926 15.9926 19 14.75 19H9.25C8.00736 19 7 17.9926 7 16.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-down-on-square.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M13.75 7H10.75V12.2955L12.6925 10.2483C12.9696 9.94039 13.4438 9.91544 13.7517 10.1925C14.0596 10.4696 14.0846 10.9438 13.8075 11.2517L10.5575 14.7517C10.4152 14.9098 10.2126 15 10 15C9.78739 15 9.58477 14.9098 9.44254 14.7517L6.19254 11.2517C5.91544 10.9438 5.9404 10.4696 6.24828 10.1925C6.55617 9.91544 7.03038 9.94039 7.30748 10.2483L9.25001 12.2955V7H10.75L10.75 1.75C10.75 1.33579 10.4142 1 10 1C9.58579 1 9.25 1.33579 9.25 1.75L9.25001 7H6.25C5.00736 7 4 8.00736 4 9.25V16.75C4 17.9926 5.00736 19 6.25 19H13.75C14.9926 19 16 17.9926 16 16.75V9.25C16 8.00736 14.9926 7 13.75 7Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M13.75 7H10.75V12.2955L12.6925 10.2483C12.9696 9.94039 13.4438 9.91544 13.7517 10.1925C14.0596 10.4696 14.0846 10.9438 13.8075 11.2517L10.5575 14.7517C10.4152 14.9098 10.2126 15 10 15C9.78739 15 9.58477 14.9098 9.44254 14.7517L6.19254 11.2517C5.91544 10.9438 5.9404 10.4696 6.24828 10.1925C6.55617 9.91544 7.03038 9.94039 7.30748 10.2483L9.25001 12.2955V7H10.75L10.75 1.75C10.75 1.33579 10.4142 1 10 1C9.58579 1 9.25 1.33579 9.25 1.75L9.25001 7H6.25C5.00736 7 4 8.00736 4 9.25V16.75C4 17.9926 5.00736 19 6.25 19H13.75C14.9926 19 16 17.9926 16 16.75V9.25C16 8.00736 14.9926 7 13.75 7Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-down-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.28033 5.21967C5.98744 4.92678 5.51256 4.92678 5.21967 5.21967C4.92678 5.51256 4.92678 5.98744 5.21967 6.28033L12.4393 13.5H6.75C6.33579 13.5 6 13.8358 6 14.25C6 14.6642 6.33579 15 6.75 15H14.25C14.3517 15 14.4487 14.9798 14.5371 14.9431C14.6235 14.9073 14.7047 14.8547 14.7754 14.7852C14.7787 14.782 14.782 14.7787 14.7852 14.7754C14.8547 14.7047 14.9073 14.6235 14.9431 14.5371C14.9798 14.4487 15 14.3517 15 14.25V6.75C15 6.33579 14.6642 6 14.25 6C13.8358 6 13.5 6.33579 13.5 6.75V12.4393L6.28033 5.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6.28033 5.21967C5.98744 4.92678 5.51256 4.92678 5.21967 5.21967C4.92678 5.51256 4.92678 5.98744 5.21967 6.28033L12.4393 13.5H6.75C6.33579 13.5 6 13.8358 6 14.25C6 14.6642 6.33579 15 6.75 15H14.25C14.3517 15 14.4487 14.9798 14.5371 14.9431C14.6235 14.9073 14.7047 14.8547 14.7754 14.7852C14.7787 14.782 14.782 14.7787 14.7852 14.7754C14.8547 14.7047 14.9073 14.6235 14.9431 14.5371C14.9798 14.4487 15 14.3517 15 14.25V6.75C15 6.33579 14.6642 6 14.25 6C13.8358 6 13.5 6.33579 13.5 6.75V12.4393L6.28033 5.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-down-tray.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.75 2.75C10.75 2.33579 10.4142 2 10 2C9.58579 2 9.25 2.33579 9.25 2.75V11.3636L6.29526 8.23503C6.01085 7.93389 5.53617 7.92033 5.23503 8.20474C4.9339 8.48915 4.92033 8.96383 5.20474 9.26497L9.45474 13.765C9.59642 13.915 9.79366 14 10 14C10.2063 14 10.4036 13.915 10.5453 13.765L14.7953 9.26497C15.0797 8.96383 15.0661 8.48915 14.765 8.20474C14.4638 7.92033 13.9892 7.93389 13.7047 8.23503L10.75 11.3636V2.75Z" fill="#0F172A"/>
    <path d="M3.5 12.75C3.5 12.3358 3.16421 12 2.75 12C2.33579 12 2 12.3358 2 12.75V15.25C2 16.7688 3.23122 18 4.75 18H15.25C16.7688 18 18 16.7688 18 15.25V12.75C18 12.3358 17.6642 12 17.25 12C16.8358 12 16.5 12.3358 16.5 12.75V15.25C16.5 15.9404 15.9404 16.5 15.25 16.5H4.75C4.05964 16.5 3.5 15.9404 3.5 15.25V12.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10.75 2.75C10.75 2.33579 10.4142 2 10 2C9.58579 2 9.25 2.33579 9.25 2.75V11.3636L6.29526 8.23503C6.01085 7.93389 5.53617 7.92033 5.23503 8.20474C4.9339 8.48915 4.92033 8.96383 5.20474 9.26497L9.45474 13.765C9.59642 13.915 9.79366 14 10 14C10.2063 14 10.4036 13.915 10.5453 13.765L14.7953 9.26497C15.0797 8.96383 15.0661 8.48915 14.765 8.20474C14.4638 7.92033 13.9892 7.93389 13.7047 8.23503L10.75 11.3636V2.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3.5 12.75C3.5 12.3358 3.16421 12 2.75 12C2.33579 12 2 12.3358 2 12.75V15.25C2 16.7688 3.23122 18 4.75 18H15.25C16.7688 18 18 16.7688 18 15.25V12.75C18 12.3358 17.6642 12 17.25 12C16.8358 12 16.5 12.3358 16.5 12.75V15.25C16.5 15.9404 15.9404 16.5 15.25 16.5H4.75C4.05964 16.5 3.5 15.9404 3.5 15.25V12.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 3C10.4142 3 10.75 3.33579 10.75 3.75L10.75 14.3879L14.7094 10.2302C14.9965 9.93159 15.4713 9.92228 15.7698 10.2094C16.0684 10.4965 16.0777 10.9713 15.7906 11.2698L10.5406 16.7698C10.3992 16.9169 10.204 17 10 17C9.79599 17 9.60078 16.9169 9.45938 16.7698L4.20938 11.2698C3.92228 10.9713 3.93159 10.4965 4.23017 10.2094C4.52875 9.92228 5.00353 9.93159 5.29063 10.2302L9.25 14.3879L9.25 3.75C9.25 3.33579 9.58579 3 10 3Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 3C10.4142 3 10.75 3.33579 10.75 3.75L10.75 14.3879L14.7094 10.2302C14.9965 9.93159 15.4713 9.92228 15.7698 10.2094C16.0684 10.4965 16.0777 10.9713 15.7906 11.2698L10.5406 16.7698C10.3992 16.9169 10.204 17 10 17C9.79599 17 9.60078 16.9169 9.45938 16.7698L4.20938 11.2698C3.92228 10.9713 3.93159 10.4965 4.23017 10.2094C4.52875 9.92228 5.00353 9.93159 5.29063 10.2302L9.25 14.3879L9.25 3.75C9.25 3.33579 9.58579 3 10 3Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-left-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <g clip-path="url(#clip0_9_2121)">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM13.25 10.75C13.6642 10.75 14 10.4142 14 10C14 9.58579 13.6642 9.25 13.25 9.25H8.6599L10.7603 7.29959C11.0639 7.01774 11.0814 6.54319 10.7996 6.23966C10.5177 5.93613 10.0432 5.91855 9.73966 6.2004L6.23966 9.4504C6.08684 9.59231 6 9.79145 6 10C6 10.2086 6.08684 10.4077 6.23966 10.5496L9.73966 13.7996C10.0432 14.0814 10.5177 14.0639 10.7996 13.7603C11.0814 13.4568 11.0639 12.9823 10.7603 12.7004L8.6599 10.75H13.25Z" fill="#0F172A"/>
    </g>
    <defs>
    <clipPath id="clip0_9_2121">
    <rect width="20" height="20" fill="white"/>
    </clipPath>
    </defs>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<g clip-path=\"url(#clip0_9_2121)\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM13.25 10.75C13.6642 10.75 14 10.4142 14 10C14 9.58579 13.6642 9.25 13.25 9.25H8.6599L10.7603 7.29959C11.0639 7.01774 11.0814 6.54319 10.7996 6.23966C10.5177 5.93613 10.0432 5.91855 9.73966 6.2004L6.23966 9.4504C6.08684 9.59231 6 9.79145 6 10C6 10.2086 6.08684 10.4077 6.23966 10.5496L9.73966 13.7996C10.0432 14.0814 10.5177 14.0639 10.7996 13.7603C11.0814 13.4568 11.0639 12.9823 10.7603 12.7004L8.6599 10.75H13.25Z\" fill=\"#0F172A\"/>\n</g>\n<defs>\n<clipPath id=\"clip0_9_2121\">\n<rect width=\"20\" height=\"20\" fill=\"white\"/>\n</clipPath>\n</defs>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-left-on-rectangle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 4.25C3 3.00736 4.00736 2 5.25 2H10.75C11.9926 2 13 3.00736 13 4.25V6.25C13 6.66421 12.6642 7 12.25 7C11.8358 7 11.5 6.66421 11.5 6.25V4.25C11.5 3.83579 11.1642 3.5 10.75 3.5H5.25C4.83579 3.5 4.5 3.83579 4.5 4.25V15.75C4.5 16.1642 4.83579 16.5 5.25 16.5H10.75C11.1642 16.5 11.5 16.1642 11.5 15.75V13.75C11.5 13.3358 11.8358 13 12.25 13C12.6642 13 13 13.3358 13 13.75V15.75C13 16.9926 11.9926 18 10.75 18H5.25C4.00736 18 3 16.9926 3 15.75V4.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19 10C19 9.58579 18.6642 9.25 18.25 9.25H8.70447L9.75172 8.30747C10.0596 8.03038 10.0846 7.55616 9.80747 7.24828C9.53038 6.94039 9.05616 6.91543 8.74828 7.19253L6.24828 9.44253C6.09024 9.58476 6 9.78738 6 10C6 10.2126 6.09024 10.4152 6.24828 10.5575L8.74828 12.8075C9.05616 13.0846 9.53038 13.0596 9.80747 12.7517C10.0846 12.4438 10.0596 11.9696 9.75172 11.6925L8.70447 10.75H18.25C18.6642 10.75 19 10.4142 19 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 4.25C3 3.00736 4.00736 2 5.25 2H10.75C11.9926 2 13 3.00736 13 4.25V6.25C13 6.66421 12.6642 7 12.25 7C11.8358 7 11.5 6.66421 11.5 6.25V4.25C11.5 3.83579 11.1642 3.5 10.75 3.5H5.25C4.83579 3.5 4.5 3.83579 4.5 4.25V15.75C4.5 16.1642 4.83579 16.5 5.25 16.5H10.75C11.1642 16.5 11.5 16.1642 11.5 15.75V13.75C11.5 13.3358 11.8358 13 12.25 13C12.6642 13 13 13.3358 13 13.75V15.75C13 16.9926 11.9926 18 10.75 18H5.25C4.00736 18 3 16.9926 3 15.75V4.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19 10C19 9.58579 18.6642 9.25 18.25 9.25H8.70447L9.75172 8.30747C10.0596 8.03038 10.0846 7.55616 9.80747 7.24828C9.53038 6.94039 9.05616 6.91543 8.74828 7.19253L6.24828 9.44253C6.09024 9.58476 6 9.78738 6 10C6 10.2126 6.09024 10.4152 6.24828 10.5575L8.74828 12.8075C9.05616 13.0846 9.53038 13.0596 9.80747 12.7517C10.0846 12.4438 10.0596 11.9696 9.75172 11.6925L8.70447 10.75H18.25C18.6642 10.75 19 10.4142 19 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M17 10C17 10.4142 16.6642 10.75 16.25 10.75L5.61208 10.75L9.76983 14.7094C10.0684 14.9965 10.0777 15.4713 9.79062 15.7698C9.50353 16.0684 9.02875 16.0777 8.73017 15.7906L3.23017 10.5406C3.08311 10.3992 3 10.204 3 10C3 9.79599 3.08311 9.60078 3.23017 9.45938L8.73017 4.20938C9.02875 3.92228 9.50353 3.93159 9.79062 4.23017C10.0777 4.52875 10.0684 5.00353 9.76983 5.29063L5.61208 9.25L16.25 9.25C16.6642 9.25 17 9.58579 17 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M17 10C17 10.4142 16.6642 10.75 16.25 10.75L5.61208 10.75L9.76983 14.7094C10.0684 14.9965 10.0777 15.4713 9.79062 15.7698C9.50353 16.0684 9.02875 16.0777 8.73017 15.7906L3.23017 10.5406C3.08311 10.3992 3 10.204 3 10C3 9.79599 3.08311 9.60078 3.23017 9.45938L8.73017 4.20938C9.02875 3.92228 9.50353 3.93159 9.79062 4.23017C10.0777 4.52875 10.0684 5.00353 9.76983 5.29063L5.61208 9.25L16.25 9.25C16.6642 9.25 17 9.58579 17 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-long-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 2C10.4142 2 10.75 2.33579 10.75 2.75V15.3401L12.7004 13.2397C12.9823 12.9361 13.4568 12.9186 13.7603 13.2004C14.0639 13.4823 14.0815 13.9568 13.7996 14.2603L10.5496 17.7603C10.4077 17.9132 10.2086 18 10 18C9.79145 18 9.59232 17.9132 9.45041 17.7603L6.20041 14.2603C5.91856 13.9568 5.93613 13.4823 6.23966 13.2004C6.5432 12.9186 7.01775 12.9361 7.2996 13.2397L9.25 15.3401V2.75C9.25 2.33579 9.58579 2 10 2Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 2C10.4142 2 10.75 2.33579 10.75 2.75V15.3401L12.7004 13.2397C12.9823 12.9361 13.4568 12.9186 13.7603 13.2004C14.0639 13.4823 14.0815 13.9568 13.7996 14.2603L10.5496 17.7603C10.4077 17.9132 10.2086 18 10 18C9.79145 18 9.59232 17.9132 9.45041 17.7603L6.20041 14.2603C5.91856 13.9568 5.93613 13.4823 6.23966 13.2004C6.5432 12.9186 7.01775 12.9361 7.2996 13.2397L9.25 15.3401V2.75C9.25 2.33579 9.58579 2 10 2Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-long-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 10C18 10.4142 17.6642 10.75 17.25 10.75L4.6599 10.75L6.76034 12.7004C7.06387 12.9823 7.08145 13.4568 6.79959 13.7603C6.51774 14.0639 6.04319 14.0815 5.73966 13.7996L2.23966 10.5496C2.08684 10.4077 2 10.2086 2 10C2 9.79145 2.08684 9.59232 2.23966 9.45041L5.73966 6.20041C6.0432 5.91856 6.51774 5.93613 6.79959 6.23966C7.08145 6.5432 7.06387 7.01775 6.76034 7.2996L4.6599 9.25L17.25 9.25C17.6642 9.25 18 9.58579 18 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18 10C18 10.4142 17.6642 10.75 17.25 10.75L4.6599 10.75L6.76034 12.7004C7.06387 12.9823 7.08145 13.4568 6.79959 13.7603C6.51774 14.0639 6.04319 14.0815 5.73966 13.7996L2.23966 10.5496C2.08684 10.4077 2 10.2086 2 10C2 9.79145 2.08684 9.59232 2.23966 9.45041L5.73966 6.20041C6.0432 5.91856 6.51774 5.93613 6.79959 6.23966C7.08145 6.5432 7.06387 7.01775 6.76034 7.2996L4.6599 9.25L17.25 9.25C17.6642 9.25 18 9.58579 18 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-long-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 9.58579 2.33579 9.25 2.75 9.25L15.3401 9.25L13.2397 7.2996C12.9361 7.01775 12.9186 6.5432 13.2004 6.23966C13.4823 5.93613 13.9568 5.91856 14.2603 6.20041L17.7603 9.45041C17.9132 9.59232 18 9.79145 18 10C18 10.2086 17.9132 10.4077 17.7603 10.5496L14.2603 13.7996C13.9568 14.0815 13.4823 14.0639 13.2004 13.7603C12.9186 13.4568 12.9361 12.9823 13.2397 12.7004L15.3401 10.75L2.75 10.75C2.33579 10.75 2 10.4142 2 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 10C2 9.58579 2.33579 9.25 2.75 9.25L15.3401 9.25L13.2397 7.2996C12.9361 7.01775 12.9186 6.5432 13.2004 6.23966C13.4823 5.93613 13.9568 5.91856 14.2603 6.20041L17.7603 9.45041C17.9132 9.59232 18 9.79145 18 10C18 10.2086 17.9132 10.4077 17.7603 10.5496L14.2603 13.7996C13.9568 14.0815 13.4823 14.0639 13.2004 13.7603C12.9186 13.4568 12.9361 12.9823 13.2397 12.7004L15.3401 10.75L2.75 10.75C2.33579 10.75 2 10.4142 2 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-long-up.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C9.58578 18 9.25 17.6642 9.25 17.25L9.25 4.6599L7.29959 6.76034C7.01774 7.06387 6.54319 7.08145 6.23966 6.7996C5.93612 6.51774 5.91855 6.0432 6.2004 5.73966L9.4504 2.23966C9.59231 2.08684 9.79144 2 10 2C10.2085 2 10.4077 2.08684 10.5496 2.23966L13.7996 5.73966C14.0814 6.04319 14.0639 6.51774 13.7603 6.79959C13.4568 7.08145 12.9823 7.06387 12.7004 6.76034L10.75 4.6599L10.75 17.25C10.75 17.6642 10.4142 18 10 18Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C9.58578 18 9.25 17.6642 9.25 17.25L9.25 4.6599L7.29959 6.76034C7.01774 7.06387 6.54319 7.08145 6.23966 6.7996C5.93612 6.51774 5.91855 6.0432 6.2004 5.73966L9.4504 2.23966C9.59231 2.08684 9.79144 2 10 2C10.2085 2 10.4077 2.08684 10.5496 2.23966L13.7996 5.73966C14.0814 6.04319 14.0639 6.51774 13.7603 6.79959C13.4568 7.08145 12.9823 7.06387 12.7004 6.76034L10.75 4.6599L10.75 17.25C10.75 17.6642 10.4142 18 10 18Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-path.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 4.5C8.78496 4.5 7.58293 4.55484 6.39622 4.66214C6.07513 4.69118 5.81975 4.93931 5.78148 5.25934C5.65739 6.29702 5.57351 7.34718 5.53147 8.40824L7.21961 6.71973C7.51247 6.4268 7.98735 6.42675 8.28027 6.71961C8.5732 7.01247 8.57325 7.48735 8.28039 7.78027L5.28114 10.7802C4.98829 11.0731 4.51343 11.0732 4.2205 10.7803L1.21975 7.78041C0.926811 7.48755 0.926743 7.01268 1.21959 6.71975C1.51245 6.42681 1.98732 6.42674 2.28025 6.71959L4.02814 8.46698C4.07009 7.32601 4.15868 6.19681 4.29209 5.08123C4.41448 4.05775 5.23464 3.26106 6.26114 3.16824C7.4927 3.05688 8.7398 3 10 3C11.2602 3 12.5073 3.05688 13.7388 3.16824C14.7653 3.26105 15.5855 4.05775 15.7079 5.08123C15.7717 5.61464 15.8252 6.15117 15.8683 6.69061C15.9013 7.10351 15.5933 7.46497 15.1804 7.49796C14.7675 7.53095 14.4061 7.22297 14.3731 6.81007C14.3316 6.29024 14.28 5.77326 14.2185 5.25934C14.1802 4.93931 13.9249 4.69118 13.6038 4.66214C12.4171 4.55484 11.215 4.5 10 4.5ZM14.7189 9.22C15.0117 8.9271 15.4866 8.92704 15.7795 9.21987L18.7802 12.2196C19.0732 12.5124 19.0733 12.9873 18.7804 13.2802C18.4876 13.5732 18.0127 13.5733 17.7198 13.2804L15.9719 11.5331C15.9299 12.6741 15.8413 13.8032 15.7079 14.9188C15.5855 15.9422 14.7653 16.7389 13.7389 16.8318C12.5073 16.9431 11.2602 17 10 17C8.7398 17 7.4927 16.9431 6.26114 16.8318C5.23464 16.7389 4.41448 15.9423 4.29209 14.9188C4.22825 14.3849 4.17468 13.848 4.13156 13.3081C4.09859 12.8952 4.40657 12.5338 4.81947 12.5008C5.23237 12.4678 5.59382 12.7758 5.6268 13.1887C5.66835 13.709 5.71997 14.2263 5.78148 14.7407C5.81975 15.0607 6.07513 15.3088 6.39622 15.3379C7.58293 15.4452 8.78496 15.5 10 15.5C11.215 15.5 12.4171 15.4452 13.6038 15.3379C13.9249 15.3088 14.1802 15.0607 14.2185 14.7407C14.3426 13.703 14.4265 12.6529 14.4685 11.5919L12.7804 13.2803C12.4875 13.5732 12.0126 13.5732 11.7197 13.2804C11.4268 12.9875 11.4268 12.5126 11.7196 12.2197L14.7189 9.22Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 4.5C8.78496 4.5 7.58293 4.55484 6.39622 4.66214C6.07513 4.69118 5.81975 4.93931 5.78148 5.25934C5.65739 6.29702 5.57351 7.34718 5.53147 8.40824L7.21961 6.71973C7.51247 6.4268 7.98735 6.42675 8.28027 6.71961C8.5732 7.01247 8.57325 7.48735 8.28039 7.78027L5.28114 10.7802C4.98829 11.0731 4.51343 11.0732 4.2205 10.7803L1.21975 7.78041C0.926811 7.48755 0.926743 7.01268 1.21959 6.71975C1.51245 6.42681 1.98732 6.42674 2.28025 6.71959L4.02814 8.46698C4.07009 7.32601 4.15868 6.19681 4.29209 5.08123C4.41448 4.05775 5.23464 3.26106 6.26114 3.16824C7.4927 3.05688 8.7398 3 10 3C11.2602 3 12.5073 3.05688 13.7388 3.16824C14.7653 3.26105 15.5855 4.05775 15.7079 5.08123C15.7717 5.61464 15.8252 6.15117 15.8683 6.69061C15.9013 7.10351 15.5933 7.46497 15.1804 7.49796C14.7675 7.53095 14.4061 7.22297 14.3731 6.81007C14.3316 6.29024 14.28 5.77326 14.2185 5.25934C14.1802 4.93931 13.9249 4.69118 13.6038 4.66214C12.4171 4.55484 11.215 4.5 10 4.5ZM14.7189 9.22C15.0117 8.9271 15.4866 8.92704 15.7795 9.21987L18.7802 12.2196C19.0732 12.5124 19.0733 12.9873 18.7804 13.2802C18.4876 13.5732 18.0127 13.5733 17.7198 13.2804L15.9719 11.5331C15.9299 12.6741 15.8413 13.8032 15.7079 14.9188C15.5855 15.9422 14.7653 16.7389 13.7389 16.8318C12.5073 16.9431 11.2602 17 10 17C8.7398 17 7.4927 16.9431 6.26114 16.8318C5.23464 16.7389 4.41448 15.9423 4.29209 14.9188C4.22825 14.3849 4.17468 13.848 4.13156 13.3081C4.09859 12.8952 4.40657 12.5338 4.81947 12.5008C5.23237 12.4678 5.59382 12.7758 5.6268 13.1887C5.66835 13.709 5.71997 14.2263 5.78148 14.7407C5.81975 15.0607 6.07513 15.3088 6.39622 15.3379C7.58293 15.4452 8.78496 15.5 10 15.5C11.215 15.5 12.4171 15.4452 13.6038 15.3379C13.9249 15.3088 14.1802 15.0607 14.2185 14.7407C14.3426 13.703 14.4265 12.6529 14.4685 11.5919L12.7804 13.2803C12.4875 13.5732 12.0126 13.5732 11.7197 13.2804C11.4268 12.9875 11.4268 12.5126 11.7196 12.2197L14.7189 9.22Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-right-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM6.75 9.25C6.33579 9.25 6 9.58579 6 10C6 10.4142 6.33579 10.75 6.75 10.75H11.3401L9.23966 12.7004C8.93613 12.9823 8.91855 13.4568 9.20041 13.7603C9.48226 14.0639 9.95681 14.0814 10.2603 13.7996L13.7603 10.5496C13.9132 10.4077 14 10.2086 14 10C14 9.79145 13.9132 9.59231 13.7603 9.4504L10.2603 6.2004C9.95681 5.91855 9.48226 5.93613 9.2004 6.23966C8.91855 6.54319 8.93613 7.01774 9.23966 7.2996L11.3401 9.25H6.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM6.75 9.25C6.33579 9.25 6 9.58579 6 10C6 10.4142 6.33579 10.75 6.75 10.75H11.3401L9.23966 12.7004C8.93613 12.9823 8.91855 13.4568 9.20041 13.7603C9.48226 14.0639 9.95681 14.0814 10.2603 13.7996L13.7603 10.5496C13.9132 10.4077 14 10.2086 14 10C14 9.79145 13.9132 9.59231 13.7603 9.4504L10.2603 6.2004C9.95681 5.91855 9.48226 5.93613 9.2004 6.23966C8.91855 6.54319 8.93613 7.01774 9.23966 7.2996L11.3401 9.25H6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-right-on-rectangle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 4.25C3 3.00736 4.00736 2 5.25 2H10.75C11.9926 2 13 3.00736 13 4.25V6.25C13 6.66421 12.6642 7 12.25 7C11.8358 7 11.5 6.66421 11.5 6.25V4.25C11.5 3.83579 11.1642 3.5 10.75 3.5H5.25C4.83579 3.5 4.5 3.83579 4.5 4.25V15.75C4.5 16.1642 4.83579 16.5 5.25 16.5H10.75C11.1642 16.5 11.5 16.1642 11.5 15.75V13.75C11.5 13.3358 11.8358 13 12.25 13C12.6642 13 13 13.3358 13 13.75V15.75C13 16.9926 11.9926 18 10.75 18H5.25C4.00736 18 3 16.9926 3 15.75V4.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6 10C6 9.58579 6.33579 9.25 6.75 9.25H16.2955L15.2483 8.30747C14.9404 8.03038 14.9154 7.55616 15.1925 7.24828C15.4696 6.94039 15.9438 6.91543 16.2517 7.19253L18.7517 9.44253C18.9098 9.58476 19 9.78738 19 10C19 10.2126 18.9098 10.4152 18.7517 10.5575L16.2517 12.8075C15.9438 13.0846 15.4696 13.0596 15.1925 12.7517C14.9154 12.4438 14.9404 11.9696 15.2483 11.6925L16.2955 10.75H6.75C6.33579 10.75 6 10.4142 6 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 4.25C3 3.00736 4.00736 2 5.25 2H10.75C11.9926 2 13 3.00736 13 4.25V6.25C13 6.66421 12.6642 7 12.25 7C11.8358 7 11.5 6.66421 11.5 6.25V4.25C11.5 3.83579 11.1642 3.5 10.75 3.5H5.25C4.83579 3.5 4.5 3.83579 4.5 4.25V15.75C4.5 16.1642 4.83579 16.5 5.25 16.5H10.75C11.1642 16.5 11.5 16.1642 11.5 15.75V13.75C11.5 13.3358 11.8358 13 12.25 13C12.6642 13 13 13.3358 13 13.75V15.75C13 16.9926 11.9926 18 10.75 18H5.25C4.00736 18 3 16.9926 3 15.75V4.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6 10C6 9.58579 6.33579 9.25 6.75 9.25H16.2955L15.2483 8.30747C14.9404 8.03038 14.9154 7.55616 15.1925 7.24828C15.4696 6.94039 15.9438 6.91543 16.2517 7.19253L18.7517 9.44253C18.9098 9.58476 19 9.78738 19 10C19 10.2126 18.9098 10.4152 18.7517 10.5575L16.2517 12.8075C15.9438 13.0846 15.4696 13.0596 15.1925 12.7517C14.9154 12.4438 14.9404 11.9696 15.2483 11.6925L16.2955 10.75H6.75C6.33579 10.75 6 10.4142 6 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 10C3 9.58579 3.33579 9.25 3.75 9.25L14.3879 9.25L10.2302 5.29062C9.93159 5.00353 9.92228 4.52875 10.2094 4.23017C10.4965 3.93159 10.9713 3.92228 11.2698 4.20937L16.7698 9.45937C16.9169 9.60078 17 9.79599 17 10C17 10.204 16.9169 10.3992 16.7698 10.5406L11.2698 15.7906C10.9713 16.0777 10.4965 16.0684 10.2094 15.7698C9.92228 15.4713 9.93159 14.9965 10.2302 14.7094L14.3879 10.75L3.75 10.75C3.33579 10.75 3 10.4142 3 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 10C3 9.58579 3.33579 9.25 3.75 9.25L14.3879 9.25L10.2302 5.29062C9.93159 5.00353 9.92228 4.52875 10.2094 4.23017C10.4965 3.93159 10.9713 3.92228 11.2698 4.20937L16.7698 9.45937C16.9169 9.60078 17 9.79599 17 10C17 10.204 16.9169 10.3992 16.7698 10.5406L11.2698 15.7906C10.9713 16.0777 10.4965 16.0684 10.2094 15.7698C9.92228 15.4713 9.93159 14.9965 10.2302 14.7094L14.3879 10.75L3.75 10.75C3.33579 10.75 3 10.4142 3 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-top-right-on-square.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 5.5C3.83579 5.5 3.5 5.83579 3.5 6.25V14.75C3.5 15.1642 3.83579 15.5 4.25 15.5H12.75C13.1642 15.5 13.5 15.1642 13.5 14.75V10.75C13.5 10.3358 13.8358 10 14.25 10C14.6642 10 15 10.3358 15 10.75V14.75C15 15.9926 13.9926 17 12.75 17H4.25C3.00736 17 2 15.9926 2 14.75V6.25C2 5.00736 3.00736 4 4.25 4H9.25C9.66421 4 10 4.33579 10 4.75C10 5.16421 9.66421 5.5 9.25 5.5H4.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.19385 12.7532C6.47175 13.0603 6.94603 13.0841 7.25319 12.8062L16.5 4.43999V7.25C16.5 7.66421 16.8358 8 17.25 8C17.6642 8 18 7.66421 18 7.25V2.75C18 2.33579 17.6642 2 17.25 2H12.75C12.3358 2 12 2.33579 12 2.75C12 3.16421 12.3358 3.5 12.75 3.5H15.3032L6.24682 11.6938C5.93966 11.9717 5.91595 12.446 6.19385 12.7532Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.25 5.5C3.83579 5.5 3.5 5.83579 3.5 6.25V14.75C3.5 15.1642 3.83579 15.5 4.25 15.5H12.75C13.1642 15.5 13.5 15.1642 13.5 14.75V10.75C13.5 10.3358 13.8358 10 14.25 10C14.6642 10 15 10.3358 15 10.75V14.75C15 15.9926 13.9926 17 12.75 17H4.25C3.00736 17 2 15.9926 2 14.75V6.25C2 5.00736 3.00736 4 4.25 4H9.25C9.66421 4 10 4.33579 10 4.75C10 5.16421 9.66421 5.5 9.25 5.5H4.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.19385 12.7532C6.47175 13.0603 6.94603 13.0841 7.25319 12.8062L16.5 4.43999V7.25C16.5 7.66421 16.8358 8 17.25 8C17.6642 8 18 7.66421 18 7.25V2.75C18 2.33579 17.6642 2 17.25 2H12.75C12.3358 2 12 2.33579 12 2.75C12 3.16421 12.3358 3.5 12.75 3.5H15.3032L6.24682 11.6938C5.93966 11.9717 5.91595 12.446 6.19385 12.7532Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-trending-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.21967 5.22211C1.51256 4.92922 1.98744 4.92922 2.28033 5.22211L7 9.94178L10.7685 6.17329C10.9187 6.02306 11.1256 5.94359 11.3378 5.95463C11.55 5.96568 11.7475 6.06619 11.8813 6.23121C13.5732 8.31739 14.888 10.7612 15.6939 13.4849L17.2685 10.7576C17.4756 10.3989 17.9343 10.276 18.293 10.4831C18.6517 10.6902 18.7747 11.1489 18.5675 11.5076L16.0927 15.7942C15.8856 16.153 15.4269 16.2759 15.0682 16.0688L10.7815 13.5939C10.4228 13.3868 10.2999 12.9281 10.507 12.5694C10.7141 12.2106 11.1728 12.0877 11.5315 12.2949L14.2401 13.8586C13.5741 11.6301 12.5419 9.60646 11.2278 7.83529L7.53033 11.5328C7.38968 11.6734 7.19891 11.7524 7 11.7524C6.80109 11.7524 6.61032 11.6734 6.46967 11.5328L1.21967 6.28277C0.926777 5.98988 0.926777 5.515 1.21967 5.22211Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.21967 5.22211C1.51256 4.92922 1.98744 4.92922 2.28033 5.22211L7 9.94178L10.7685 6.17329C10.9187 6.02306 11.1256 5.94359 11.3378 5.95463C11.55 5.96568 11.7475 6.06619 11.8813 6.23121C13.5732 8.31739 14.888 10.7612 15.6939 13.4849L17.2685 10.7576C17.4756 10.3989 17.9343 10.276 18.293 10.4831C18.6517 10.6902 18.7747 11.1489 18.5675 11.5076L16.0927 15.7942C15.8856 16.153 15.4269 16.2759 15.0682 16.0688L10.7815 13.5939C10.4228 13.3868 10.2999 12.9281 10.507 12.5694C10.7141 12.2106 11.1728 12.0877 11.5315 12.2949L14.2401 13.8586C13.5741 11.6301 12.5419 9.60646 11.2278 7.83529L7.53033 11.5328C7.38968 11.6734 7.19891 11.7524 7 11.7524C6.80109 11.7524 6.61032 11.6734 6.46967 11.5328L1.21967 6.28277C0.926777 5.98988 0.926777 5.515 1.21967 5.22211Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-trending-up.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.577 4.87834C12.6842 4.47824 13.0955 4.2408 13.4956 4.34801L18.2766 5.6291C18.4688 5.68058 18.6326 5.80628 18.732 5.97854C18.8315 6.1508 18.8585 6.35552 18.807 6.54766L17.5259 11.3287C17.4187 11.7288 17.0074 11.9663 16.6073 11.8591C16.2072 11.7519 15.9698 11.3406 16.077 10.9405L16.8865 7.9195C14.6303 9.30965 12.7541 11.0901 11.2935 13.1222C11.1651 13.3009 10.9646 13.4142 10.7452 13.432C10.5259 13.4499 10.3098 13.3704 10.1542 13.2148L7 10.0607L2.28033 14.7803C1.98744 15.0732 1.51256 15.0732 1.21967 14.7803C0.926777 14.4874 0.926777 14.0126 1.21967 13.7197L6.46967 8.46968C6.76256 8.17679 7.23744 8.17679 7.53033 8.46968L10.6039 11.5433C12.1049 9.63051 13.9633 7.9506 16.1492 6.61197L13.1073 5.7969C12.7072 5.68969 12.4698 5.27844 12.577 4.87834Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.577 4.87834C12.6842 4.47824 13.0955 4.2408 13.4956 4.34801L18.2766 5.6291C18.4688 5.68058 18.6326 5.80628 18.732 5.97854C18.8315 6.1508 18.8585 6.35552 18.807 6.54766L17.5259 11.3287C17.4187 11.7288 17.0074 11.9663 16.6073 11.8591C16.2072 11.7519 15.9698 11.3406 16.077 10.9405L16.8865 7.9195C14.6303 9.30965 12.7541 11.0901 11.2935 13.1222C11.1651 13.3009 10.9646 13.4142 10.7452 13.432C10.5259 13.4499 10.3098 13.3704 10.1542 13.2148L7 10.0607L2.28033 14.7803C1.98744 15.0732 1.51256 15.0732 1.21967 14.7803C0.926777 14.4874 0.926777 14.0126 1.21967 13.7197L6.46967 8.46968C6.76256 8.17679 7.23744 8.17679 7.53033 8.46968L10.6039 11.5433C12.1049 9.63051 13.9633 7.9506 16.1492 6.61197L13.1073 5.7969C12.7072 5.68969 12.4698 5.27844 12.577 4.87834Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-up-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM9.25 13.25C9.25 13.6642 9.58579 14 10 14C10.4142 14 10.75 13.6642 10.75 13.25V8.6599L12.7004 10.7603C12.9823 11.0639 13.4568 11.0814 13.7603 10.7996C14.0639 10.5177 14.0814 10.0432 13.7996 9.73966L10.5496 6.23966C10.4077 6.08684 10.2086 6 10 6C9.79145 6 9.59231 6.08684 9.45041 6.23966L6.20041 9.73966C5.91855 10.0432 5.93613 10.5177 6.23966 10.7996C6.54319 11.0814 7.01774 11.0639 7.2996 10.7603L9.25 8.6599V13.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM9.25 13.25C9.25 13.6642 9.58579 14 10 14C10.4142 14 10.75 13.6642 10.75 13.25V8.6599L12.7004 10.7603C12.9823 11.0639 13.4568 11.0814 13.7603 10.7996C14.0639 10.5177 14.0814 10.0432 13.7996 9.73966L10.5496 6.23966C10.4077 6.08684 10.2086 6 10 6C9.79145 6 9.59231 6.08684 9.45041 6.23966L6.20041 9.73966C5.91855 10.0432 5.93613 10.5177 6.23966 10.7996C6.54319 11.0814 7.01774 11.0639 7.2996 10.7603L9.25 8.6599V13.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-up-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.7803 14.7803C14.4874 15.0732 14.0126 15.0732 13.7197 14.7803L6.5 7.56066V13.25C6.5 13.6642 6.16421 14 5.75 14C5.33579 14 5 13.6642 5 13.25V5.75C5 5.33579 5.33579 5 5.75 5H13.25C13.6642 5 14 5.33579 14 5.75C14 6.16421 13.6642 6.5 13.25 6.5H7.56066L14.7803 13.7197C15.0732 14.0126 15.0732 14.4874 14.7803 14.7803Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.7803 14.7803C14.4874 15.0732 14.0126 15.0732 13.7197 14.7803L6.5 7.56066V13.25C6.5 13.6642 6.16421 14 5.75 14C5.33579 14 5 13.6642 5 13.25V5.75C5 5.33579 5.33579 5 5.75 5H13.25C13.6642 5 14 5.33579 14 5.75C14 6.16421 13.6642 6.5 13.25 6.5H7.56066L14.7803 13.7197C15.0732 14.0126 15.0732 14.4874 14.7803 14.7803Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-up-on-square-stack.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.75 6L8.75 6V10.25C8.75 10.6642 8.41421 11 8 11C7.58579 11 7.25 10.6642 7.25 10.25V6L8.74999 6V3.70447L9.69252 4.75172C9.96962 5.05961 10.4438 5.08456 10.7517 4.80747C11.0596 4.53038 11.0846 4.05616 10.8075 3.74828L8.55747 1.24828C8.41523 1.09024 8.21261 1 7.99999 1C7.78738 1 7.58476 1.09024 7.44252 1.24828L5.19252 3.74828C4.91543 4.05616 4.94039 4.53038 5.24827 4.80747C5.55615 5.08456 6.03037 5.05961 6.30746 4.75172L7.24999 3.70447V6H5.25C4.00736 6 3 7.00736 3 8.25V12.75C3 13.9926 4.00736 15 5.25 15H10.75C11.9926 15 13 13.9926 13 12.75V8.25C13 7.00736 11.9926 6 10.75 6ZM7 16.75V16.5H10.75C12.8211 16.5 14.5 14.8211 14.5 12.75V10H14.75C15.9926 10 17 11.0074 17 12.25V16.75C17 17.9926 15.9926 19 14.75 19H9.25C8.00736 19 7 17.9926 7 16.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.75 6L8.75 6V10.25C8.75 10.6642 8.41421 11 8 11C7.58579 11 7.25 10.6642 7.25 10.25V6L8.74999 6V3.70447L9.69252 4.75172C9.96962 5.05961 10.4438 5.08456 10.7517 4.80747C11.0596 4.53038 11.0846 4.05616 10.8075 3.74828L8.55747 1.24828C8.41523 1.09024 8.21261 1 7.99999 1C7.78738 1 7.58476 1.09024 7.44252 1.24828L5.19252 3.74828C4.91543 4.05616 4.94039 4.53038 5.24827 4.80747C5.55615 5.08456 6.03037 5.05961 6.30746 4.75172L7.24999 3.70447V6H5.25C4.00736 6 3 7.00736 3 8.25V12.75C3 13.9926 4.00736 15 5.25 15H10.75C11.9926 15 13 13.9926 13 12.75V8.25C13 7.00736 11.9926 6 10.75 6ZM7 16.75V16.5H10.75C12.8211 16.5 14.5 14.8211 14.5 12.75V10H14.75C15.9926 10 17 11.0074 17 12.25V16.75C17 17.9926 15.9926 19 14.75 19H9.25C8.00736 19 7 17.9926 7 16.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-up-on-square.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.75 7H10.75L10.75 3.6599L12.7004 5.76034C12.9823 6.06387 13.4568 6.08145 13.7603 5.7996C14.0639 5.51774 14.0814 5.04319 13.7996 4.73966L10.5496 1.23966C10.4077 1.08684 10.2085 1 10 1C9.79145 1 9.59231 1.08684 9.4504 1.23966L6.2004 4.73966C5.91855 5.04319 5.93613 5.51774 6.23966 5.79959C6.54319 6.08145 7.01774 6.06387 7.29959 5.76034L9.25 3.6599L9.25 7H6.25C5.00736 7 4 8.00736 4 9.25V16.75C4 17.9926 5.00736 19 6.25 19H13.75C14.9926 19 16 17.9926 16 16.75V9.25C16 8.00736 14.9926 7 13.75 7ZM10.75 7H9.25L9.25 12.25C9.25 12.6642 9.58579 13 10 13C10.4142 13 10.75 12.6642 10.75 12.25L10.75 7Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M13.75 7H10.75L10.75 3.6599L12.7004 5.76034C12.9823 6.06387 13.4568 6.08145 13.7603 5.7996C14.0639 5.51774 14.0814 5.04319 13.7996 4.73966L10.5496 1.23966C10.4077 1.08684 10.2085 1 10 1C9.79145 1 9.59231 1.08684 9.4504 1.23966L6.2004 4.73966C5.91855 5.04319 5.93613 5.51774 6.23966 5.79959C6.54319 6.08145 7.01774 6.06387 7.29959 5.76034L9.25 3.6599L9.25 7H6.25C5.00736 7 4 8.00736 4 9.25V16.75C4 17.9926 5.00736 19 6.25 19H13.75C14.9926 19 16 17.9926 16 16.75V9.25C16 8.00736 14.9926 7 13.75 7ZM10.75 7H9.25L9.25 12.25C9.25 12.6642 9.58579 13 10 13C10.4142 13 10.75 12.6642 10.75 12.25L10.75 7Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-up-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.21967 14.7803C5.51256 15.0732 5.98744 15.0732 6.28033 14.7803L13.5 7.56066V13.25C13.5 13.6642 13.8358 14 14.25 14C14.6642 14 15 13.6642 15 13.25V5.75C15 5.33579 14.6642 5 14.25 5H6.75C6.33579 5 6 5.33579 6 5.75C6 6.16421 6.33579 6.5 6.75 6.5H12.4393L5.21967 13.7197C4.92678 14.0126 4.92678 14.4874 5.21967 14.7803Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.21967 14.7803C5.51256 15.0732 5.98744 15.0732 6.28033 14.7803L13.5 7.56066V13.25C13.5 13.6642 13.8358 14 14.25 14C14.6642 14 15 13.6642 15 13.25V5.75C15 5.33579 14.6642 5 14.25 5H6.75C6.33579 5 6 5.33579 6 5.75C6 6.16421 6.33579 6.5 6.75 6.5H12.4393L5.21967 13.7197C4.92678 14.0126 4.92678 14.4874 5.21967 14.7803Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-up-tray.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M9.25 13.25C9.25 13.6642 9.58578 14 10 14C10.4142 14 10.75 13.6642 10.75 13.25L10.75 4.63642L13.7047 7.76497C13.9891 8.06611 14.4638 8.07967 14.765 7.79526C15.0661 7.51085 15.0797 7.03617 14.7953 6.73503L10.5453 2.23503C10.4036 2.08501 10.2063 2 10 2C9.79365 2 9.59642 2.08501 9.45474 2.23503L5.20474 6.73503C4.92033 7.03617 4.93389 7.51085 5.23503 7.79526C5.53617 8.07967 6.01085 8.06611 6.29526 7.76497L9.25 4.63642L9.25 13.25Z" fill="#0F172A"/>
    <path d="M3.5 12.75C3.5 12.3358 3.16421 12 2.75 12C2.33579 12 2 12.3358 2 12.75V15.25C2 16.7688 3.23122 18 4.75 18H15.25C16.7688 18 18 16.7688 18 15.25V12.75C18 12.3358 17.6642 12 17.25 12C16.8358 12 16.5 12.3358 16.5 12.75V15.25C16.5 15.9404 15.9404 16.5 15.25 16.5H4.75C4.05964 16.5 3.5 15.9404 3.5 15.25V12.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M9.25 13.25C9.25 13.6642 9.58578 14 10 14C10.4142 14 10.75 13.6642 10.75 13.25L10.75 4.63642L13.7047 7.76497C13.9891 8.06611 14.4638 8.07967 14.765 7.79526C15.0661 7.51085 15.0797 7.03617 14.7953 6.73503L10.5453 2.23503C10.4036 2.08501 10.2063 2 10 2C9.79365 2 9.59642 2.08501 9.45474 2.23503L5.20474 6.73503C4.92033 7.03617 4.93389 7.51085 5.23503 7.79526C5.53617 8.07967 6.01085 8.06611 6.29526 7.76497L9.25 4.63642L9.25 13.25Z\" fill=\"#0F172A\"/>\n<path d=\"M3.5 12.75C3.5 12.3358 3.16421 12 2.75 12C2.33579 12 2 12.3358 2 12.75V15.25C2 16.7688 3.23122 18 4.75 18H15.25C16.7688 18 18 16.7688 18 15.25V12.75C18 12.3358 17.6642 12 17.25 12C16.8358 12 16.5 12.3358 16.5 12.75V15.25C16.5 15.9404 15.9404 16.5 15.25 16.5H4.75C4.05964 16.5 3.5 15.9404 3.5 15.25V12.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-up.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 17C9.58579 17 9.25 16.6642 9.25 16.25L9.25 5.61208L5.29062 9.76983C5.00353 10.0684 4.52875 10.0777 4.23017 9.79063C3.93159 9.50353 3.92228 9.02875 4.20937 8.73017L9.45937 3.23017C9.60078 3.08311 9.79598 3 10 3C10.204 3 10.3992 3.08311 10.5406 3.23017L15.7906 8.73017C16.0777 9.02875 16.0684 9.50353 15.7698 9.79062C15.4713 10.0777 14.9965 10.0684 14.7094 9.76983L10.75 5.61208L10.75 16.25C10.75 16.6642 10.4142 17 10 17Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 17C9.58579 17 9.25 16.6642 9.25 16.25L9.25 5.61208L5.29062 9.76983C5.00353 10.0684 4.52875 10.0777 4.23017 9.79063C3.93159 9.50353 3.92228 9.02875 4.20937 8.73017L9.45937 3.23017C9.60078 3.08311 9.79598 3 10 3C10.204 3 10.3992 3.08311 10.5406 3.23017L15.7906 8.73017C16.0777 9.02875 16.0684 9.50353 15.7698 9.79062C15.4713 10.0777 14.9965 10.0684 14.7094 9.76983L10.75 5.61208L10.75 16.25C10.75 16.6642 10.4142 17 10 17Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-uturn-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.23214 12.2075C2.53177 11.9215 3.00651 11.9325 3.29252 12.2321L7.25 16.3781V6.375C7.25 3.40647 9.65647 1 12.625 1C15.5935 1 18 3.40647 18 6.375V9.25C18 9.66421 17.6642 10 17.25 10C16.8358 10 16.5 9.66421 16.5 9.25V6.375C16.5 4.2349 14.7651 2.5 12.625 2.5C10.4849 2.5 8.75 4.2349 8.75 6.375V16.3781L12.7075 12.2321C12.9935 11.9325 13.4682 11.9215 13.7679 12.2075C14.0675 12.4935 14.0785 12.9682 13.7925 13.2679L8.54252 18.7679C8.401 18.9161 8.20496 19 8 19C7.79504 19 7.59901 18.9161 7.45748 18.7679L2.20748 13.2679C1.92148 12.9682 1.93252 12.4935 2.23214 12.2075Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.23214 12.2075C2.53177 11.9215 3.00651 11.9325 3.29252 12.2321L7.25 16.3781V6.375C7.25 3.40647 9.65647 1 12.625 1C15.5935 1 18 3.40647 18 6.375V9.25C18 9.66421 17.6642 10 17.25 10C16.8358 10 16.5 9.66421 16.5 9.25V6.375C16.5 4.2349 14.7651 2.5 12.625 2.5C10.4849 2.5 8.75 4.2349 8.75 6.375V16.3781L12.7075 12.2321C12.9935 11.9325 13.4682 11.9215 13.7679 12.2075C14.0675 12.4935 14.0785 12.9682 13.7925 13.2679L8.54252 18.7679C8.401 18.9161 8.20496 19 8 19C7.79504 19 7.59901 18.9161 7.45748 18.7679L2.20748 13.2679C1.92148 12.9682 1.93252 12.4935 2.23214 12.2075Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-uturn-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.79252 2.23214C8.07852 2.53177 8.06748 3.00651 7.76786 3.29252L3.62192 7.25H13.625C16.5935 7.25 19 9.65647 19 12.625C19 15.5935 16.5935 18 13.625 18H10.75C10.3358 18 10 17.6642 10 17.25C10 16.8358 10.3358 16.5 10.75 16.5H13.625C15.7651 16.5 17.5 14.7651 17.5 12.625C17.5 10.4849 15.7651 8.75 13.625 8.75H3.62192L7.76786 12.7075C8.06748 12.9935 8.07852 13.4682 7.79252 13.7679C7.50651 14.0675 7.03177 14.0785 6.73214 13.7925L1.23214 8.54252C1.08388 8.401 1 8.20496 1 8C1 7.79504 1.08388 7.59901 1.23214 7.45748L6.73214 2.20748C7.03177 1.92148 7.50651 1.93252 7.79252 2.23214Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.79252 2.23214C8.07852 2.53177 8.06748 3.00651 7.76786 3.29252L3.62192 7.25H13.625C16.5935 7.25 19 9.65647 19 12.625C19 15.5935 16.5935 18 13.625 18H10.75C10.3358 18 10 17.6642 10 17.25C10 16.8358 10.3358 16.5 10.75 16.5H13.625C15.7651 16.5 17.5 14.7651 17.5 12.625C17.5 10.4849 15.7651 8.75 13.625 8.75H3.62192L7.76786 12.7075C8.06748 12.9935 8.07852 13.4682 7.79252 13.7679C7.50651 14.0675 7.03177 14.0785 6.73214 13.7925L1.23214 8.54252C1.08388 8.401 1 8.20496 1 8C1 7.79504 1.08388 7.59901 1.23214 7.45748L6.73214 2.20748C7.03177 1.92148 7.50651 1.93252 7.79252 2.23214Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-uturn-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.2075 2.23214C11.9215 2.53177 11.9325 3.00651 12.2321 3.29252L16.3781 7.25H6.375C3.40647 7.25 1 9.65647 1 12.625C1 15.5935 3.40647 18 6.375 18H9.25C9.66421 18 10 17.6642 10 17.25C10 16.8358 9.66421 16.5 9.25 16.5H6.375C4.2349 16.5 2.5 14.7651 2.5 12.625C2.5 10.4849 4.2349 8.75 6.375 8.75H16.3781L12.2321 12.7075C11.9325 12.9935 11.9215 13.4682 12.2075 13.7679C12.4935 14.0675 12.9682 14.0785 13.2679 13.7925L18.7679 8.54252C18.9161 8.401 19 8.20496 19 8C19 7.79504 18.9161 7.59901 18.7679 7.45748L13.2679 2.20748C12.9682 1.92148 12.4935 1.93252 12.2075 2.23214Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.2075 2.23214C11.9215 2.53177 11.9325 3.00651 12.2321 3.29252L16.3781 7.25H6.375C3.40647 7.25 1 9.65647 1 12.625C1 15.5935 3.40647 18 6.375 18H9.25C9.66421 18 10 17.6642 10 17.25C10 16.8358 9.66421 16.5 9.25 16.5H6.375C4.2349 16.5 2.5 14.7651 2.5 12.625C2.5 10.4849 4.2349 8.75 6.375 8.75H16.3781L12.2321 12.7075C11.9325 12.9935 11.9215 13.4682 12.2075 13.7679C12.4935 14.0675 12.9682 14.0785 13.2679 13.7925L18.7679 8.54252C18.9161 8.401 19 8.20496 19 8C19 7.79504 18.9161 7.59901 18.7679 7.45748L13.2679 2.20748C12.9682 1.92148 12.4935 1.93252 12.2075 2.23214Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrow-uturn-up.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.7679 7.79252C17.4682 8.07852 16.9935 8.06748 16.7075 7.76786L12.75 3.62192L12.75 13.625C12.75 16.5935 10.3435 19 7.375 19C4.40647 19 2 16.5935 2 13.625L2 10.75C2 10.3358 2.33579 10 2.75 10C3.16421 10 3.5 10.3358 3.5 10.75L3.5 13.625C3.5 15.7651 5.2349 17.5 7.375 17.5C9.5151 17.5 11.25 15.7651 11.25 13.625L11.25 3.62192L7.29252 7.76786C7.00651 8.06748 6.53177 8.07852 6.23214 7.79252C5.93252 7.50651 5.92148 7.03177 6.20748 6.73214L11.4575 1.23214C11.599 1.08388 11.795 1 12 1C12.205 1 12.401 1.08388 12.5425 1.23214L17.7925 6.73214C18.0785 7.03177 18.0675 7.50651 17.7679 7.79252Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M17.7679 7.79252C17.4682 8.07852 16.9935 8.06748 16.7075 7.76786L12.75 3.62192L12.75 13.625C12.75 16.5935 10.3435 19 7.375 19C4.40647 19 2 16.5935 2 13.625L2 10.75C2 10.3358 2.33579 10 2.75 10C3.16421 10 3.5 10.3358 3.5 10.75L3.5 13.625C3.5 15.7651 5.2349 17.5 7.375 17.5C9.5151 17.5 11.25 15.7651 11.25 13.625L11.25 3.62192L7.29252 7.76786C7.00651 8.06748 6.53177 8.07852 6.23214 7.79252C5.93252 7.50651 5.92148 7.03177 6.20748 6.73214L11.4575 1.23214C11.599 1.08388 11.795 1 12 1C12.205 1 12.401 1.08388 12.5425 1.23214L17.7925 6.73214C18.0785 7.03177 18.0675 7.50651 17.7679 7.79252Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrows-pointing-in.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.28033 2.21967C2.98744 1.92678 2.51256 1.92678 2.21967 2.21967C1.92678 2.51256 1.92678 2.98744 2.21967 3.28033L5.43934 6.5H2.75C2.33579 6.5 2 6.83579 2 7.25C2 7.66421 2.33579 8 2.75 8H7.25C7.66421 8 8 7.66421 8 7.25V2.75C8 2.33579 7.66421 2 7.25 2C6.83579 2 6.5 2.33579 6.5 2.75V5.43934L3.28033 2.21967Z" fill="#0F172A"/>
    <path d="M13.5 2.75C13.5 2.33579 13.1642 2 12.75 2C12.3358 2 12 2.33579 12 2.75V7.25C12 7.66421 12.3358 8 12.75 8H17.25C17.6642 8 18 7.66421 18 7.25C18 6.83579 17.6642 6.5 17.25 6.5H14.5607L17.7803 3.28033C18.0732 2.98744 18.0732 2.51256 17.7803 2.21967C17.4874 1.92678 17.0126 1.92678 16.7197 2.21967L13.5 5.43934V2.75Z" fill="#0F172A"/>
    <path d="M3.28033 17.7803L6.5 14.5607V17.25C6.5 17.6642 6.83579 18 7.25 18C7.66421 18 8 17.6642 8 17.25V12.75C8 12.3358 7.66421 12 7.25 12H2.75C2.33579 12 2 12.3358 2 12.75C2 13.1642 2.33579 13.5 2.75 13.5H5.43934L2.21967 16.7197C1.92678 17.0126 1.92678 17.4874 2.21967 17.7803C2.51256 18.0732 2.98744 18.0732 3.28033 17.7803Z" fill="#0F172A"/>
    <path d="M13.5 14.5607L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L14.5607 13.5H17.25C17.6642 13.5 18 13.1642 18 12.75C18 12.3358 17.6642 12 17.25 12H12.75C12.3358 12 12 12.3358 12 12.75V17.25C12 17.6642 12.3358 18 12.75 18C13.1642 18 13.5 17.6642 13.5 17.25V14.5607Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.28033 2.21967C2.98744 1.92678 2.51256 1.92678 2.21967 2.21967C1.92678 2.51256 1.92678 2.98744 2.21967 3.28033L5.43934 6.5H2.75C2.33579 6.5 2 6.83579 2 7.25C2 7.66421 2.33579 8 2.75 8H7.25C7.66421 8 8 7.66421 8 7.25V2.75C8 2.33579 7.66421 2 7.25 2C6.83579 2 6.5 2.33579 6.5 2.75V5.43934L3.28033 2.21967Z\" fill=\"#0F172A\"/>\n<path d=\"M13.5 2.75C13.5 2.33579 13.1642 2 12.75 2C12.3358 2 12 2.33579 12 2.75V7.25C12 7.66421 12.3358 8 12.75 8H17.25C17.6642 8 18 7.66421 18 7.25C18 6.83579 17.6642 6.5 17.25 6.5H14.5607L17.7803 3.28033C18.0732 2.98744 18.0732 2.51256 17.7803 2.21967C17.4874 1.92678 17.0126 1.92678 16.7197 2.21967L13.5 5.43934V2.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3.28033 17.7803L6.5 14.5607V17.25C6.5 17.6642 6.83579 18 7.25 18C7.66421 18 8 17.6642 8 17.25V12.75C8 12.3358 7.66421 12 7.25 12H2.75C2.33579 12 2 12.3358 2 12.75C2 13.1642 2.33579 13.5 2.75 13.5H5.43934L2.21967 16.7197C1.92678 17.0126 1.92678 17.4874 2.21967 17.7803C2.51256 18.0732 2.98744 18.0732 3.28033 17.7803Z\" fill=\"#0F172A\"/>\n<path d=\"M13.5 14.5607L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L14.5607 13.5H17.25C17.6642 13.5 18 13.1642 18 12.75C18 12.3358 17.6642 12 17.25 12H12.75C12.3358 12 12 12.3358 12 12.75V17.25C12 17.6642 12.3358 18 12.75 18C13.1642 18 13.5 17.6642 13.5 17.25V14.5607Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrows-pointing-out.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M13.2803 7.78033L16.5 4.56066V7.25C16.5 7.66421 16.8358 8 17.25 8C17.6642 8 18 7.66421 18 7.25V2.75C18 2.33579 17.6642 2 17.25 2H12.75C12.3358 2 12 2.33579 12 2.75C12 3.16421 12.3358 3.5 12.75 3.5H15.4393L12.2197 6.71967C11.9268 7.01256 11.9268 7.48744 12.2197 7.78033C12.5126 8.07322 12.9874 8.07322 13.2803 7.78033Z" fill="#0F172A"/>
    <path d="M2 17.25V12.75C2 12.3358 2.33579 12 2.75 12C3.16421 12 3.5 12.3358 3.5 12.75V15.4393L6.71967 12.2197C7.01256 11.9268 7.48744 11.9268 7.78033 12.2197C8.07322 12.5126 8.07322 12.9874 7.78033 13.2803L4.56066 16.5H7.25C7.66421 16.5 8 16.8358 8 17.25C8 17.6642 7.66421 18 7.25 18H2.75C2.55806 18 2.36612 17.9268 2.21967 17.7803C2.14776 17.7084 2.09351 17.6255 2.05691 17.5371C2.02024 17.4487 2 17.3517 2 17.25Z" fill="#0F172A"/>
    <path d="M12.2197 13.2803L15.4393 16.5H12.75C12.3358 16.5 12 16.8358 12 17.25C12 17.6642 12.3358 18 12.75 18H17.25C17.4419 18 17.6339 17.9268 17.7803 17.7803C17.8522 17.7084 17.9065 17.6255 17.9431 17.5371C17.9798 17.4487 18 17.3517 18 17.25V12.75C18 12.3358 17.6642 12 17.25 12C16.8358 12 16.5 12.3358 16.5 12.75V15.4393L13.2803 12.2197C12.9874 11.9268 12.5126 11.9268 12.2197 12.2197C11.9268 12.5126 11.9268 12.9874 12.2197 13.2803Z" fill="#0F172A"/>
    <path d="M3.5 4.56066L6.71967 7.78033C7.01256 8.07322 7.48744 8.07322 7.78033 7.78033C8.07322 7.48744 8.07322 7.01256 7.78033 6.71967L4.56066 3.5H7.25C7.66421 3.5 8 3.16421 8 2.75C8 2.33579 7.66421 2 7.25 2H2.75C2.33579 2 2 2.33579 2 2.75V7.25C2 7.66421 2.33579 8 2.75 8C3.16421 8 3.5 7.66421 3.5 7.25V4.56066Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M13.2803 7.78033L16.5 4.56066V7.25C16.5 7.66421 16.8358 8 17.25 8C17.6642 8 18 7.66421 18 7.25V2.75C18 2.33579 17.6642 2 17.25 2H12.75C12.3358 2 12 2.33579 12 2.75C12 3.16421 12.3358 3.5 12.75 3.5H15.4393L12.2197 6.71967C11.9268 7.01256 11.9268 7.48744 12.2197 7.78033C12.5126 8.07322 12.9874 8.07322 13.2803 7.78033Z\" fill=\"#0F172A\"/>\n<path d=\"M2 17.25V12.75C2 12.3358 2.33579 12 2.75 12C3.16421 12 3.5 12.3358 3.5 12.75V15.4393L6.71967 12.2197C7.01256 11.9268 7.48744 11.9268 7.78033 12.2197C8.07322 12.5126 8.07322 12.9874 7.78033 13.2803L4.56066 16.5H7.25C7.66421 16.5 8 16.8358 8 17.25C8 17.6642 7.66421 18 7.25 18H2.75C2.55806 18 2.36612 17.9268 2.21967 17.7803C2.14776 17.7084 2.09351 17.6255 2.05691 17.5371C2.02024 17.4487 2 17.3517 2 17.25Z\" fill=\"#0F172A\"/>\n<path d=\"M12.2197 13.2803L15.4393 16.5H12.75C12.3358 16.5 12 16.8358 12 17.25C12 17.6642 12.3358 18 12.75 18H17.25C17.4419 18 17.6339 17.9268 17.7803 17.7803C17.8522 17.7084 17.9065 17.6255 17.9431 17.5371C17.9798 17.4487 18 17.3517 18 17.25V12.75C18 12.3358 17.6642 12 17.25 12C16.8358 12 16.5 12.3358 16.5 12.75V15.4393L13.2803 12.2197C12.9874 11.9268 12.5126 11.9268 12.2197 12.2197C11.9268 12.5126 11.9268 12.9874 12.2197 13.2803Z\" fill=\"#0F172A\"/>\n<path d=\"M3.5 4.56066L6.71967 7.78033C7.01256 8.07322 7.48744 8.07322 7.78033 7.78033C8.07322 7.48744 8.07322 7.01256 7.78033 6.71967L4.56066 3.5H7.25C7.66421 3.5 8 3.16421 8 2.75C8 2.33579 7.66421 2 7.25 2H2.75C2.33579 2 2 2.33579 2 2.75V7.25C2 7.66421 2.33579 8 2.75 8C3.16421 8 3.5 7.66421 3.5 7.25V4.56066Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrows-right-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.2004 2.23966C12.9186 2.5432 12.9361 3.01775 13.2397 3.2996L15.3401 5.25L6.75 5.25C6.33579 5.25 6 5.58579 6 6C6 6.41422 6.33579 6.75 6.75 6.75L15.3401 6.75L13.2397 8.70041C12.9361 8.98226 12.9186 9.45681 13.2004 9.76034C13.4823 10.0639 13.9568 10.0815 14.2603 9.7996L17.7603 6.5496C17.9132 6.40769 18 6.20855 18 6C18 5.79145 17.9132 5.59232 17.7603 5.45041L14.2603 2.20041C13.9568 1.91856 13.4823 1.93613 13.2004 2.23966ZM6.79959 10.2397C6.51774 9.93613 6.04319 9.91856 5.73966 10.2004L2.23966 13.4504C2.08684 13.5923 2 13.7915 2 14C2 14.2086 2.08684 14.4077 2.23966 14.5496L5.73966 17.7996C6.04319 18.0815 6.51774 18.0639 6.79959 17.7603C7.08145 17.4568 7.06387 16.9823 6.76034 16.7004L4.6599 14.75H13.25C13.6642 14.75 14 14.4142 14 14C14 13.5858 13.6642 13.25 13.25 13.25H4.6599L6.76034 11.2996C7.06387 11.0177 7.08145 10.5432 6.79959 10.2397Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M13.2004 2.23966C12.9186 2.5432 12.9361 3.01775 13.2397 3.2996L15.3401 5.25L6.75 5.25C6.33579 5.25 6 5.58579 6 6C6 6.41422 6.33579 6.75 6.75 6.75L15.3401 6.75L13.2397 8.70041C12.9361 8.98226 12.9186 9.45681 13.2004 9.76034C13.4823 10.0639 13.9568 10.0815 14.2603 9.7996L17.7603 6.5496C17.9132 6.40769 18 6.20855 18 6C18 5.79145 17.9132 5.59232 17.7603 5.45041L14.2603 2.20041C13.9568 1.91856 13.4823 1.93613 13.2004 2.23966ZM6.79959 10.2397C6.51774 9.93613 6.04319 9.91856 5.73966 10.2004L2.23966 13.4504C2.08684 13.5923 2 13.7915 2 14C2 14.2086 2.08684 14.4077 2.23966 14.5496L5.73966 17.7996C6.04319 18.0815 6.51774 18.0639 6.79959 17.7603C7.08145 17.4568 7.06387 16.9823 6.76034 16.7004L4.6599 14.75H13.25C13.6642 14.75 14 14.4142 14 14C14 13.5858 13.6642 13.25 13.25 13.25H4.6599L6.76034 11.2996C7.06387 11.0177 7.08145 10.5432 6.79959 10.2397Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/arrows-up-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.23966 6.7996C2.5432 7.08145 3.01775 7.06387 3.2996 6.76034L5.25 4.6599L5.25 13.25C5.25 13.6642 5.58579 14 6 14C6.41422 14 6.75 13.6642 6.75 13.25V4.6599L8.70041 6.76034C8.98226 7.06387 9.45681 7.08145 9.76034 6.79959C10.0639 6.51774 10.0815 6.04319 9.7996 5.73966L6.5496 2.23966C6.40769 2.08684 6.20855 2 6 2C5.79145 2 5.59232 2.08684 5.45041 2.23966L2.20041 5.73966C1.91856 6.04319 1.93613 6.51774 2.23966 6.7996ZM10.2397 13.2004C9.93613 13.4823 9.91856 13.9568 10.2004 14.2603L13.4504 17.7603C13.5923 17.9132 13.7915 18 14 18C14.2086 18 14.4077 17.9132 14.5496 17.7603L17.7996 14.2603C18.0815 13.9568 18.0639 13.4823 17.7603 13.2004C17.4568 12.9186 16.9823 12.9361 16.7004 13.2397L14.75 15.3401V6.75C14.75 6.33579 14.4142 6 14 6C13.5858 6 13.25 6.33579 13.25 6.75V15.3401L11.2996 13.2397C11.0177 12.9361 10.5432 12.9186 10.2397 13.2004Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.23966 6.7996C2.5432 7.08145 3.01775 7.06387 3.2996 6.76034L5.25 4.6599L5.25 13.25C5.25 13.6642 5.58579 14 6 14C6.41422 14 6.75 13.6642 6.75 13.25V4.6599L8.70041 6.76034C8.98226 7.06387 9.45681 7.08145 9.76034 6.79959C10.0639 6.51774 10.0815 6.04319 9.7996 5.73966L6.5496 2.23966C6.40769 2.08684 6.20855 2 6 2C5.79145 2 5.59232 2.08684 5.45041 2.23966L2.20041 5.73966C1.91856 6.04319 1.93613 6.51774 2.23966 6.7996ZM10.2397 13.2004C9.93613 13.4823 9.91856 13.9568 10.2004 14.2603L13.4504 17.7603C13.5923 17.9132 13.7915 18 14 18C14.2086 18 14.4077 17.9132 14.5496 17.7603L17.7996 14.2603C18.0815 13.9568 18.0639 13.4823 17.7603 13.2004C17.4568 12.9186 16.9823 12.9361 16.7004 13.2397L14.75 15.3401V6.75C14.75 6.33579 14.4142 6 14 6C13.5858 6 13.25 6.33579 13.25 6.75V15.3401L11.2996 13.2397C11.0177 12.9361 10.5432 12.9186 10.2397 13.2004Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/at-symbol.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.40403 14.5962C2.86563 12.0578 2.86563 7.94221 5.40403 5.40381C7.94244 2.8654 12.058 2.8654 14.5964 5.40381C15.8658 6.67316 16.5002 8.33534 16.5002 10C16.5002 10.6904 15.9404 11.25 15.25 11.25C14.5596 11.25 14 10.6904 14 10C14 7.79086 12.2091 6 10 6C7.79086 6 6 7.79086 6 10C6 12.2091 7.79086 14 10 14C11.4553 14 12.7292 13.2228 13.429 12.0607C13.914 12.4897 14.5516 12.75 15.25 12.75C16.7614 12.75 17.9881 11.5307 17.9999 10.022C18.0001 10.0147 18.0002 10.0074 18.0002 10C18.0002 7.95378 17.219 5.9051 15.6571 4.34315C12.5329 1.21895 7.46757 1.21895 4.34337 4.34315C1.21918 7.46734 1.21918 12.5327 4.34337 15.6569C7.46757 18.781 12.5329 18.781 15.6571 15.6569C15.95 15.364 15.95 14.8891 15.6571 14.5962C15.3642 14.3033 14.8893 14.3033 14.5964 14.5962C12.058 17.1346 7.94244 17.1346 5.40403 14.5962ZM10 7.5C8.61929 7.5 7.5 8.61929 7.5 10C7.5 11.3807 8.61929 12.5 10 12.5C11.3807 12.5 12.5 11.3807 12.5 10C12.5 8.61929 11.3807 7.5 10 7.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.40403 14.5962C2.86563 12.0578 2.86563 7.94221 5.40403 5.40381C7.94244 2.8654 12.058 2.8654 14.5964 5.40381C15.8658 6.67316 16.5002 8.33534 16.5002 10C16.5002 10.6904 15.9404 11.25 15.25 11.25C14.5596 11.25 14 10.6904 14 10C14 7.79086 12.2091 6 10 6C7.79086 6 6 7.79086 6 10C6 12.2091 7.79086 14 10 14C11.4553 14 12.7292 13.2228 13.429 12.0607C13.914 12.4897 14.5516 12.75 15.25 12.75C16.7614 12.75 17.9881 11.5307 17.9999 10.022C18.0001 10.0147 18.0002 10.0074 18.0002 10C18.0002 7.95378 17.219 5.9051 15.6571 4.34315C12.5329 1.21895 7.46757 1.21895 4.34337 4.34315C1.21918 7.46734 1.21918 12.5327 4.34337 15.6569C7.46757 18.781 12.5329 18.781 15.6571 15.6569C15.95 15.364 15.95 14.8891 15.6571 14.5962C15.3642 14.3033 14.8893 14.3033 14.5964 14.5962C12.058 17.1346 7.94244 17.1346 5.40403 14.5962ZM10 7.5C8.61929 7.5 7.5 8.61929 7.5 10C7.5 11.3807 8.61929 12.5 10 12.5C11.3807 12.5 12.5 11.3807 12.5 10C12.5 8.61929 11.3807 7.5 10 7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/backspace.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.21967 3.21967C7.36032 3.07902 7.55109 3 7.75 3H16.75C17.9926 3 19 4.00736 19 5.25V14.75C19 15.9926 17.9926 17 16.75 17H7.75C7.55109 17 7.36032 16.921 7.21967 16.7803L0.96967 10.5303C0.676777 10.2374 0.676777 9.76256 0.96967 9.46967L7.21967 3.21967ZM10.2803 7.21967C9.98744 6.92678 9.51256 6.92678 9.21967 7.21967C8.92678 7.51256 8.92678 7.98744 9.21967 8.28033L10.9393 10L9.21967 11.7197C8.92678 12.0126 8.92678 12.4874 9.21967 12.7803C9.51256 13.0732 9.98744 13.0732 10.2803 12.7803L12 11.0607L13.7197 12.7803C14.0126 13.0732 14.4874 13.0732 14.7803 12.7803C15.0732 12.4874 15.0732 12.0126 14.7803 11.7197L13.0607 10L14.7803 8.28033C15.0732 7.98744 15.0732 7.51256 14.7803 7.21967C14.4874 6.92678 14.0126 6.92678 13.7197 7.21967L12 8.93934L10.2803 7.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.21967 3.21967C7.36032 3.07902 7.55109 3 7.75 3H16.75C17.9926 3 19 4.00736 19 5.25V14.75C19 15.9926 17.9926 17 16.75 17H7.75C7.55109 17 7.36032 16.921 7.21967 16.7803L0.96967 10.5303C0.676777 10.2374 0.676777 9.76256 0.96967 9.46967L7.21967 3.21967ZM10.2803 7.21967C9.98744 6.92678 9.51256 6.92678 9.21967 7.21967C8.92678 7.51256 8.92678 7.98744 9.21967 8.28033L10.9393 10L9.21967 11.7197C8.92678 12.0126 8.92678 12.4874 9.21967 12.7803C9.51256 13.0732 9.98744 13.0732 10.2803 12.7803L12 11.0607L13.7197 12.7803C14.0126 13.0732 14.4874 13.0732 14.7803 12.7803C15.0732 12.4874 15.0732 12.0126 14.7803 11.7197L13.0607 10L14.7803 8.28033C15.0732 7.98744 15.0732 7.51256 14.7803 7.21967C14.4874 6.92678 14.0126 6.92678 13.7197 7.21967L12 8.93934L10.2803 7.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/backward.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M7.71176 4.81895C8.71109 4.20172 10 4.92057 10 6.09515V9.06794C10.1044 8.93679 10.234 8.81991 10.389 8.72419L16.7118 4.81895C17.7111 4.20172 19 4.92057 19 6.09515V13.9056C19 15.0802 17.7111 15.7991 16.7118 15.1818L10.389 11.2766C10.234 11.1809 10.1044 11.064 10 10.9328V13.9056C10 15.0802 8.7111 15.7991 7.71176 15.1818L1.38899 11.2766C0.439979 10.6904 0.439975 9.31035 1.38899 8.72419L7.71176 4.81895Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M7.71176 4.81895C8.71109 4.20172 10 4.92057 10 6.09515V9.06794C10.1044 8.93679 10.234 8.81991 10.389 8.72419L16.7118 4.81895C17.7111 4.20172 19 4.92057 19 6.09515V13.9056C19 15.0802 17.7111 15.7991 16.7118 15.1818L10.389 11.2766C10.234 11.1809 10.1044 11.064 10 10.9328V13.9056C10 15.0802 8.7111 15.7991 7.71176 15.1818L1.38899 11.2766C0.439979 10.6904 0.439975 9.31035 1.38899 8.72419L7.71176 4.81895Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/banknotes.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 4C1 3.44772 1.44772 3 2 3H18C18.5523 3 19 3.44772 19 4V12C19 12.5523 18.5523 13 18 13H2C1.44772 13 1 12.5523 1 12V4ZM13 8C13 9.65685 11.6569 11 10 11C8.34315 11 7 9.65685 7 8C7 6.34315 8.34315 5 10 5C11.6569 5 13 6.34315 13 8ZM4 9C4.55228 9 5 8.55228 5 8C5 7.44772 4.55228 7 4 7C3.44772 7 3 7.44772 3 8C3 8.55228 3.44772 9 4 9ZM17 8C17 8.55228 16.5523 9 16 9C15.4477 9 15 8.55228 15 8C15 7.44772 15.4477 7 16 7C16.5523 7 17 7.44772 17 8ZM1.75 14.5C1.33579 14.5 1 14.8358 1 15.25C1 15.6642 1.33579 16 1.75 16C6.16731 16 10.4426 16.6028 14.4987 17.7301C15.6102 18.039 16.75 17.2183 16.75 16.0336V15.25C16.75 14.8358 16.4142 14.5 16 14.5C15.5858 14.5 15.25 14.8358 15.25 15.25V16.0336C15.25 16.1952 15.0861 16.3365 14.9004 16.2849C10.7147 15.1215 6.30435 14.5 1.75 14.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 4C1 3.44772 1.44772 3 2 3H18C18.5523 3 19 3.44772 19 4V12C19 12.5523 18.5523 13 18 13H2C1.44772 13 1 12.5523 1 12V4ZM13 8C13 9.65685 11.6569 11 10 11C8.34315 11 7 9.65685 7 8C7 6.34315 8.34315 5 10 5C11.6569 5 13 6.34315 13 8ZM4 9C4.55228 9 5 8.55228 5 8C5 7.44772 4.55228 7 4 7C3.44772 7 3 7.44772 3 8C3 8.55228 3.44772 9 4 9ZM17 8C17 8.55228 16.5523 9 16 9C15.4477 9 15 8.55228 15 8C15 7.44772 15.4477 7 16 7C16.5523 7 17 7.44772 17 8ZM1.75 14.5C1.33579 14.5 1 14.8358 1 15.25C1 15.6642 1.33579 16 1.75 16C6.16731 16 10.4426 16.6028 14.4987 17.7301C15.6102 18.039 16.75 17.2183 16.75 16.0336V15.25C16.75 14.8358 16.4142 14.5 16 14.5C15.5858 14.5 15.25 14.8358 15.25 15.25V16.0336C15.25 16.1952 15.0861 16.3365 14.9004 16.2849C10.7147 15.1215 6.30435 14.5 1.75 14.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bars-2.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 6.75C2 6.33579 2.33579 6 2.75 6H17.25C17.6642 6 18 6.33579 18 6.75C18 7.16421 17.6642 7.5 17.25 7.5H2.75C2.33579 7.5 2 7.16421 2 6.75ZM2 13.25C2 12.8358 2.33579 12.5 2.75 12.5H17.25C17.6642 12.5 18 12.8358 18 13.25C18 13.6642 17.6642 14 17.25 14H2.75C2.33579 14 2 13.6642 2 13.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 6.75C2 6.33579 2.33579 6 2.75 6H17.25C17.6642 6 18 6.33579 18 6.75C18 7.16421 17.6642 7.5 17.25 7.5H2.75C2.33579 7.5 2 7.16421 2 6.75ZM2 13.25C2 12.8358 2.33579 12.5 2.75 12.5H17.25C17.6642 12.5 18 12.8358 18 13.25C18 13.6642 17.6642 14 17.25 14H2.75C2.33579 14 2 13.6642 2 13.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bars-3-bottom-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 4.75C2 4.33579 2.33579 4 2.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H2.75C2.33579 5.5 2 5.16421 2 4.75ZM2 15.25C2 14.8358 2.33579 14.5 2.75 14.5H10.25C10.6642 14.5 11 14.8358 11 15.25C11 15.6642 10.6642 16 10.25 16H2.75C2.33579 16 2 15.6642 2 15.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 9.58579 2.33579 9.25 2.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10C18 10.4142 17.6642 10.75 17.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 4.75C2 4.33579 2.33579 4 2.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H2.75C2.33579 5.5 2 5.16421 2 4.75ZM2 15.25C2 14.8358 2.33579 14.5 2.75 14.5H10.25C10.6642 14.5 11 14.8358 11 15.25C11 15.6642 10.6642 16 10.25 16H2.75C2.33579 16 2 15.6642 2 15.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 10C2 9.58579 2.33579 9.25 2.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10C18 10.4142 17.6642 10.75 17.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bars-3-bottom-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 4.75C2 4.33579 2.33579 4 2.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H2.75C2.33579 5.5 2 5.16421 2 4.75ZM9 15.25C9 14.8358 9.33579 14.5 9.75 14.5H17.25C17.6642 14.5 18 14.8358 18 15.25C18 15.6642 17.6642 16 17.25 16H9.75C9.33579 16 9 15.6642 9 15.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 9.58579 2.33579 9.25 2.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10C18 10.4142 17.6642 10.75 17.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 4.75C2 4.33579 2.33579 4 2.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H2.75C2.33579 5.5 2 5.16421 2 4.75ZM9 15.25C9 14.8358 9.33579 14.5 9.75 14.5H17.25C17.6642 14.5 18 14.8358 18 15.25C18 15.6642 17.6642 16 17.25 16H9.75C9.33579 16 9 15.6642 9 15.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 10C2 9.58579 2.33579 9.25 2.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10C18 10.4142 17.6642 10.75 17.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bars-3-center-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 4.75C2 4.33579 2.33579 4 2.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H2.75C2.33579 5.5 2 5.16421 2 4.75ZM2 15.25C2 14.8358 2.33579 14.5 2.75 14.5H17.25C17.6642 14.5 18 14.8358 18 15.25C18 15.6642 17.6642 16 17.25 16H2.75C2.33579 16 2 15.6642 2 15.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 9.58579 2.33579 9.25 2.75 9.25H10.25C10.6642 9.25 11 9.58579 11 10C11 10.4142 10.6642 10.75 10.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 4.75C2 4.33579 2.33579 4 2.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H2.75C2.33579 5.5 2 5.16421 2 4.75ZM2 15.25C2 14.8358 2.33579 14.5 2.75 14.5H17.25C17.6642 14.5 18 14.8358 18 15.25C18 15.6642 17.6642 16 17.25 16H2.75C2.33579 16 2 15.6642 2 15.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 10C2 9.58579 2.33579 9.25 2.75 9.25H10.25C10.6642 9.25 11 9.58579 11 10C11 10.4142 10.6642 10.75 10.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bars-3.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 4.75C2 4.33579 2.33579 4 2.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H2.75C2.33579 5.5 2 5.16421 2 4.75ZM2 10C2 9.58579 2.33579 9.25 2.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10C18 10.4142 17.6642 10.75 17.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10ZM2 15.25C2 14.8358 2.33579 14.5 2.75 14.5H17.25C17.6642 14.5 18 14.8358 18 15.25C18 15.6642 17.6642 16 17.25 16H2.75C2.33579 16 2 15.6642 2 15.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 4.75C2 4.33579 2.33579 4 2.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H2.75C2.33579 5.5 2 5.16421 2 4.75ZM2 10C2 9.58579 2.33579 9.25 2.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10C18 10.4142 17.6642 10.75 17.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10ZM2 15.25C2 14.8358 2.33579 14.5 2.75 14.5H17.25C17.6642 14.5 18 14.8358 18 15.25C18 15.6642 17.6642 16 17.25 16H2.75C2.33579 16 2 15.6642 2 15.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bars-4.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 3.75C2 3.33579 2.33579 3 2.75 3H17.25C17.6642 3 18 3.33579 18 3.75C18 4.16421 17.6642 4.5 17.25 4.5H2.75C2.33579 4.5 2 4.16421 2 3.75ZM2 7.91667C2 7.50245 2.33579 7.16667 2.75 7.16667H17.25C17.6642 7.16667 18 7.50245 18 7.91667C18 8.33088 17.6642 8.66667 17.25 8.66667H2.75C2.33579 8.66667 2 8.33088 2 7.91667ZM2 12.0833C2 11.6691 2.33579 11.3333 2.75 11.3333H17.25C17.6642 11.3333 18 11.6691 18 12.0833C18 12.4975 17.6642 12.8333 17.25 12.8333H2.75C2.33579 12.8333 2 12.4975 2 12.0833ZM2 16.25C2 15.8358 2.33579 15.5 2.75 15.5H17.25C17.6642 15.5 18 15.8358 18 16.25C18 16.6642 17.6642 17 17.25 17H2.75C2.33579 17 2 16.6642 2 16.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 3.75C2 3.33579 2.33579 3 2.75 3H17.25C17.6642 3 18 3.33579 18 3.75C18 4.16421 17.6642 4.5 17.25 4.5H2.75C2.33579 4.5 2 4.16421 2 3.75ZM2 7.91667C2 7.50245 2.33579 7.16667 2.75 7.16667H17.25C17.6642 7.16667 18 7.50245 18 7.91667C18 8.33088 17.6642 8.66667 17.25 8.66667H2.75C2.33579 8.66667 2 8.33088 2 7.91667ZM2 12.0833C2 11.6691 2.33579 11.3333 2.75 11.3333H17.25C17.6642 11.3333 18 11.6691 18 12.0833C18 12.4975 17.6642 12.8333 17.25 12.8333H2.75C2.33579 12.8333 2 12.4975 2 12.0833ZM2 16.25C2 15.8358 2.33579 15.5 2.75 15.5H17.25C17.6642 15.5 18 15.8358 18 16.25C18 16.6642 17.6642 17 17.25 17H2.75C2.33579 17 2 16.6642 2 16.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bars-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_arrow_down />

      <.bars_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_arrow_down() %>

      <%= bars_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_arrow_down(assigns_or_opts \\ [])

  def bars_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 3.75C2 3.33579 2.33579 3 2.75 3H14.25C14.6642 3 15 3.33579 15 3.75C15 4.16421 14.6642 4.5 14.25 4.5H2.75C2.33579 4.5 2 4.16421 2 3.75ZM2 7.5C2 7.08579 2.33579 6.75 2.75 6.75H10.2582C10.6724 6.75 11.0082 7.08579 11.0082 7.5C11.0082 7.91421 10.6724 8.25 10.2582 8.25H2.75C2.33579 8.25 2 7.91421 2 7.5ZM14 7C14.4142 7 14.75 7.33579 14.75 7.75L14.75 14.3401L16.7004 12.2397C16.9823 11.9361 17.4568 11.9186 17.7603 12.2004C18.0639 12.4823 18.0814 12.9568 17.7996 13.2603L14.5496 16.7603C14.4077 16.9132 14.2085 17 14 17C13.7914 17 13.5923 16.9132 13.4504 16.7603L10.2004 13.2603C9.91855 12.9568 9.93613 12.4823 10.2397 12.2004C10.5432 11.9186 11.0177 11.9361 11.2996 12.2397L13.25 14.3401L13.25 7.75C13.25 7.33579 13.5858 7 14 7ZM2 11.25C2 10.8358 2.33579 10.5 2.75 10.5H7.31205C7.72626 10.5 8.06205 10.8358 8.06205 11.25C8.06205 11.6642 7.72626 12 7.31205 12H2.75C2.33579 12 2 11.6642 2 11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 3.75C2 3.33579 2.33579 3 2.75 3H14.25C14.6642 3 15 3.33579 15 3.75C15 4.16421 14.6642 4.5 14.25 4.5H2.75C2.33579 4.5 2 4.16421 2 3.75ZM2 7.5C2 7.08579 2.33579 6.75 2.75 6.75H10.2582C10.6724 6.75 11.0082 7.08579 11.0082 7.5C11.0082 7.91421 10.6724 8.25 10.2582 8.25H2.75C2.33579 8.25 2 7.91421 2 7.5ZM14 7C14.4142 7 14.75 7.33579 14.75 7.75L14.75 14.3401L16.7004 12.2397C16.9823 11.9361 17.4568 11.9186 17.7603 12.2004C18.0639 12.4823 18.0814 12.9568 17.7996 13.2603L14.5496 16.7603C14.4077 16.9132 14.2085 17 14 17C13.7914 17 13.5923 16.9132 13.4504 16.7603L10.2004 13.2603C9.91855 12.9568 9.93613 12.4823 10.2397 12.2004C10.5432 11.9186 11.0177 11.9361 11.2996 12.2397L13.25 14.3401L13.25 7.75C13.25 7.33579 13.5858 7 14 7ZM2 11.25C2 10.8358 2.33579 10.5 2.75 10.5H7.31205C7.72626 10.5 8.06205 10.8358 8.06205 11.25C8.06205 11.6642 7.72626 12 7.31205 12H2.75C2.33579 12 2 11.6642 2 11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bars-arrow-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_arrow_up />

      <.bars_arrow_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_arrow_up() %>

      <%= bars_arrow_up(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_arrow_up(assigns_or_opts \\ [])

  def bars_arrow_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 3.75C2 3.33579 2.33579 3 2.75 3H14.25C14.6642 3 15 3.33579 15 3.75C15 4.16421 14.6642 4.5 14.25 4.5H2.75C2.33579 4.5 2 4.16421 2 3.75ZM2 7.5C2 7.08579 2.33579 6.75 2.75 6.75H9.11474C9.52895 6.75 9.86474 7.08579 9.86474 7.5C9.86474 7.91421 9.52895 8.25 9.11474 8.25H2.75C2.33579 8.25 2 7.91421 2 7.5ZM14 7C14.2086 7 14.4077 7.08684 14.5496 7.23966L17.7996 10.7397C18.0814 11.0432 18.0639 11.5177 17.7603 11.7996C17.4568 12.0814 16.9823 12.0639 16.7004 11.7603L14.75 9.6599L14.75 16.25C14.75 16.6642 14.4142 17 14 17C13.5858 17 13.25 16.6642 13.25 16.25L13.25 9.6599L11.2996 11.7603C11.0177 12.0639 10.5432 12.0814 10.2397 11.7996C9.93613 11.5177 9.91855 11.0432 10.2004 10.7397L13.4504 7.23966C13.5923 7.08684 13.7914 7 14 7ZM2 11.25C2 10.8358 2.33579 10.5 2.75 10.5H6.99999C7.4142 10.5 7.74999 10.8358 7.74999 11.25C7.74999 11.6642 7.4142 12 6.99999 12H2.75C2.33579 12 2 11.6642 2 11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_arrow_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 3.75C2 3.33579 2.33579 3 2.75 3H14.25C14.6642 3 15 3.33579 15 3.75C15 4.16421 14.6642 4.5 14.25 4.5H2.75C2.33579 4.5 2 4.16421 2 3.75ZM2 7.5C2 7.08579 2.33579 6.75 2.75 6.75H9.11474C9.52895 6.75 9.86474 7.08579 9.86474 7.5C9.86474 7.91421 9.52895 8.25 9.11474 8.25H2.75C2.33579 8.25 2 7.91421 2 7.5ZM14 7C14.2086 7 14.4077 7.08684 14.5496 7.23966L17.7996 10.7397C18.0814 11.0432 18.0639 11.5177 17.7603 11.7996C17.4568 12.0814 16.9823 12.0639 16.7004 11.7603L14.75 9.6599L14.75 16.25C14.75 16.6642 14.4142 17 14 17C13.5858 17 13.25 16.6642 13.25 16.25L13.25 9.6599L11.2996 11.7603C11.0177 12.0639 10.5432 12.0814 10.2397 11.7996C9.93613 11.5177 9.91855 11.0432 10.2004 10.7397L13.4504 7.23966C13.5923 7.08684 13.7914 7 14 7ZM2 11.25C2 10.8358 2.33579 10.5 2.75 10.5H6.99999C7.4142 10.5 7.74999 10.8358 7.74999 11.25C7.74999 11.6642 7.4142 12 6.99999 12H2.75C2.33579 12 2 11.6642 2 11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/beaker.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.49999 3.52795V8.17157C8.49999 8.90092 8.21026 9.60039 7.69453 10.1161L6.47812 11.3325C7.68604 11.2911 8.89515 11.5003 10.0275 11.9532L10.5296 12.1541C11.8561 12.6847 13.3098 12.8115 14.708 12.5187L12.3054 10.1161C11.7897 9.60039 11.5 8.90092 11.5 8.17157V3.52795C11.0023 3.50937 10.5023 3.5 9.99999 3.5C9.49771 3.5 8.99766 3.50937 8.49999 3.52795ZM13 3.61218C13.0635 3.61695 13.1269 3.62186 13.1903 3.62693C13.6032 3.65992 13.9646 3.35194 13.9976 2.93905C14.0306 2.52615 13.7226 2.16468 13.3097 2.13169C12.9714 2.10466 12.6319 2.08173 12.2913 2.06296C11.5327 2.02117 10.7688 2 9.99999 2C9.23118 2 8.46724 2.02117 7.70873 2.06296C7.36812 2.08173 7.02862 2.10466 6.69025 2.13169C6.27736 2.16468 5.96938 2.52615 6.00237 2.93905C6.03536 3.35194 6.39683 3.65992 6.80973 3.62693C6.8731 3.62186 6.93653 3.61695 6.99999 3.61218V8.17157C6.99999 8.50309 6.86829 8.82104 6.63387 9.05546L2.60034 13.089C1.10385 14.5855 1.78334 17.2391 4.00336 17.5645C5.9611 17.8515 7.96343 18 9.99999 18C12.0366 18 14.0389 17.8515 15.9966 17.5645C18.2166 17.2391 18.8961 14.5855 17.3996 13.089L13.3661 9.05546C13.1317 8.82104 13 8.50309 13 8.17157V3.61218Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.49999 3.52795V8.17157C8.49999 8.90092 8.21026 9.60039 7.69453 10.1161L6.47812 11.3325C7.68604 11.2911 8.89515 11.5003 10.0275 11.9532L10.5296 12.1541C11.8561 12.6847 13.3098 12.8115 14.708 12.5187L12.3054 10.1161C11.7897 9.60039 11.5 8.90092 11.5 8.17157V3.52795C11.0023 3.50937 10.5023 3.5 9.99999 3.5C9.49771 3.5 8.99766 3.50937 8.49999 3.52795ZM13 3.61218C13.0635 3.61695 13.1269 3.62186 13.1903 3.62693C13.6032 3.65992 13.9646 3.35194 13.9976 2.93905C14.0306 2.52615 13.7226 2.16468 13.3097 2.13169C12.9714 2.10466 12.6319 2.08173 12.2913 2.06296C11.5327 2.02117 10.7688 2 9.99999 2C9.23118 2 8.46724 2.02117 7.70873 2.06296C7.36812 2.08173 7.02862 2.10466 6.69025 2.13169C6.27736 2.16468 5.96938 2.52615 6.00237 2.93905C6.03536 3.35194 6.39683 3.65992 6.80973 3.62693C6.8731 3.62186 6.93653 3.61695 6.99999 3.61218V8.17157C6.99999 8.50309 6.86829 8.82104 6.63387 9.05546L2.60034 13.089C1.10385 14.5855 1.78334 17.2391 4.00336 17.5645C5.9611 17.8515 7.96343 18 9.99999 18C12.0366 18 14.0389 17.8515 15.9966 17.5645C18.2166 17.2391 18.8961 14.5855 17.3996 13.089L13.3661 9.05546C13.1317 8.82104 13 8.50309 13 8.17157V3.61218Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bell-alert.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M4.21444 3.2267C4.47824 2.90735 4.43321 2.43462 4.11386 2.17082C3.79452 1.90702 3.32178 1.95204 3.05798 2.27139C2.1587 3.36002 1.50992 4.66481 1.20153 6.09691C1.11433 6.50184 1.37191 6.90079 1.77684 6.98799C2.18177 7.07519 2.58072 6.81762 2.66792 6.41268C2.92443 5.22148 3.46427 4.13482 4.21444 3.2267Z" fill="#0F172A"/>
    <path d="M16.9417 2.27139C16.6779 1.95204 16.2051 1.90702 15.8858 2.17082C15.5664 2.43462 15.5214 2.90735 15.7852 3.2267C16.5354 4.13482 17.0752 5.22148 17.3317 6.41268C17.4189 6.81762 17.8179 7.07519 18.2228 6.98799C18.6277 6.90079 18.8853 6.50184 18.7981 6.09691C18.4897 4.66481 17.8409 3.36002 16.9417 2.27139Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.99997 1.99988C6.68626 1.99988 3.99997 4.68617 3.99997 7.99988C3.99997 9.88651 3.54624 11.665 2.7426 13.2342C2.63591 13.4425 2.6326 13.6887 2.73365 13.8998C2.83469 14.111 3.02851 14.2628 3.25769 14.3104C4.32537 14.5321 5.41181 14.7021 6.51426 14.8179C6.67494 16.6019 8.17421 17.9999 10 17.9999C11.8258 17.9999 13.3251 16.6019 13.4857 14.8179C14.5882 14.7021 15.6746 14.5321 16.7422 14.3104C16.9714 14.2628 17.1652 14.111 17.2663 13.8998C17.3673 13.6887 17.364 13.4425 17.2573 13.2342C16.4537 11.665 16 9.88651 16 7.99988C16 4.68617 13.3137 1.99988 9.99997 1.99988ZM10 16.4999C9.04777 16.4999 8.25097 15.8344 8.0493 14.9432C8.69477 14.9808 9.34517 14.9999 9.99997 14.9999C10.6548 14.9999 11.3052 14.9808 11.9507 14.9432C11.749 15.8344 10.9522 16.4999 10 16.4999Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.21444 3.2267C4.47824 2.90735 4.43321 2.43462 4.11386 2.17082C3.79452 1.90702 3.32178 1.95204 3.05798 2.27139C2.1587 3.36002 1.50992 4.66481 1.20153 6.09691C1.11433 6.50184 1.37191 6.90079 1.77684 6.98799C2.18177 7.07519 2.58072 6.81762 2.66792 6.41268C2.92443 5.22148 3.46427 4.13482 4.21444 3.2267Z\" fill=\"#0F172A\"/>\n<path d=\"M16.9417 2.27139C16.6779 1.95204 16.2051 1.90702 15.8858 2.17082C15.5664 2.43462 15.5214 2.90735 15.7852 3.2267C16.5354 4.13482 17.0752 5.22148 17.3317 6.41268C17.4189 6.81762 17.8179 7.07519 18.2228 6.98799C18.6277 6.90079 18.8853 6.50184 18.7981 6.09691C18.4897 4.66481 17.8409 3.36002 16.9417 2.27139Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.99997 1.99988C6.68626 1.99988 3.99997 4.68617 3.99997 7.99988C3.99997 9.88651 3.54624 11.665 2.7426 13.2342C2.63591 13.4425 2.6326 13.6887 2.73365 13.8998C2.83469 14.111 3.02851 14.2628 3.25769 14.3104C4.32537 14.5321 5.41181 14.7021 6.51426 14.8179C6.67494 16.6019 8.17421 17.9999 10 17.9999C11.8258 17.9999 13.3251 16.6019 13.4857 14.8179C14.5882 14.7021 15.6746 14.5321 16.7422 14.3104C16.9714 14.2628 17.1652 14.111 17.2663 13.8998C17.3673 13.6887 17.364 13.4425 17.2573 13.2342C16.4537 11.665 16 9.88651 16 7.99988C16 4.68617 13.3137 1.99988 9.99997 1.99988ZM10 16.4999C9.04777 16.4999 8.25097 15.8344 8.0493 14.9432C8.69477 14.9808 9.34517 14.9999 9.99997 14.9999C10.6548 14.9999 11.3052 14.9808 11.9507 14.9432C11.749 15.8344 10.9522 16.4999 10 16.4999Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bell-slash.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.99997 8C3.99997 7.73938 4.01658 7.48265 4.04881 7.23079L11.7713 14.9533C11.1847 14.9843 10.5942 15 9.99997 15C9.34517 15 8.69477 14.9809 8.0493 14.9433C8.25097 15.8345 9.04777 16.5 10 16.5C10.8982 16.5 11.6581 15.9079 11.9107 15.0927L13.045 16.227C12.4432 17.2858 11.305 18 10 18C8.17421 18 6.67494 16.602 6.51426 14.818C5.41181 14.7023 4.32537 14.5322 3.25769 14.3105C3.02851 14.2629 2.83469 14.1111 2.73365 13.9C2.6326 13.6888 2.63591 13.4426 2.7426 13.2343C3.54624 11.6651 3.99997 9.88663 3.99997 8Z" fill="#0F172A"/>
    <path d="M17.2663 13.9C17.2467 13.9408 17.2237 13.9795 17.1976 14.0156L6.38945 3.20747C7.39404 2.44946 8.64452 2 9.99997 2C13.3137 2 16 4.68629 16 8C16 9.88663 16.4537 11.6651 17.2573 13.2343C17.364 13.4426 17.3673 13.6888 17.2663 13.9Z" fill="#0F172A"/>
    <path d="M3.28033 2.21967C2.98744 1.92678 2.51256 1.92678 2.21967 2.21967C1.92678 2.51256 1.92678 2.98744 2.21967 3.28033L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L3.28033 2.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.99997 8C3.99997 7.73938 4.01658 7.48265 4.04881 7.23079L11.7713 14.9533C11.1847 14.9843 10.5942 15 9.99997 15C9.34517 15 8.69477 14.9809 8.0493 14.9433C8.25097 15.8345 9.04777 16.5 10 16.5C10.8982 16.5 11.6581 15.9079 11.9107 15.0927L13.045 16.227C12.4432 17.2858 11.305 18 10 18C8.17421 18 6.67494 16.602 6.51426 14.818C5.41181 14.7023 4.32537 14.5322 3.25769 14.3105C3.02851 14.2629 2.83469 14.1111 2.73365 13.9C2.6326 13.6888 2.63591 13.4426 2.7426 13.2343C3.54624 11.6651 3.99997 9.88663 3.99997 8Z\" fill=\"#0F172A\"/>\n<path d=\"M17.2663 13.9C17.2467 13.9408 17.2237 13.9795 17.1976 14.0156L6.38945 3.20747C7.39404 2.44946 8.64452 2 9.99997 2C13.3137 2 16 4.68629 16 8C16 9.88663 16.4537 11.6651 17.2573 13.2343C17.364 13.4426 17.3673 13.6888 17.2663 13.9Z\" fill=\"#0F172A\"/>\n<path d=\"M3.28033 2.21967C2.98744 1.92678 2.51256 1.92678 2.21967 2.21967C1.92678 2.51256 1.92678 2.98744 2.21967 3.28033L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L3.28033 2.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bell-snooze.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.99997 8C3.99997 4.68629 6.68626 2 9.99997 2C13.3137 2 16 4.68629 16 8C16 9.88663 16.4537 11.6651 17.2573 13.2343C17.364 13.4426 17.3673 13.6888 17.2663 13.9C17.1652 14.1111 16.9714 14.2629 16.7422 14.3105C15.6746 14.5322 14.5882 14.7023 13.4857 14.818C13.3251 16.602 11.8258 18 10 18C8.17421 18 6.67494 16.602 6.51426 14.818C5.41181 14.7023 4.32537 14.5322 3.25769 14.3105C3.02851 14.2629 2.83469 14.1111 2.73365 13.9C2.6326 13.6888 2.63591 13.4426 2.7426 13.2343C3.54624 11.6651 3.99997 9.88663 3.99997 8ZM9.99997 15C9.34517 15 8.69477 14.9809 8.0493 14.9433C8.25097 15.8345 9.04777 16.5 10 16.5C10.9522 16.5 11.749 15.8345 11.9507 14.9433C11.3052 14.9809 10.6548 15 9.99997 15ZM8.75 6C8.33579 6 8 6.33579 8 6.75C8 7.16421 8.33579 7.5 8.75 7.5H9.79261L8.1397 9.81407C7.97641 10.0427 7.95457 10.3434 8.08312 10.5932C8.21168 10.843 8.46906 11 8.75 11H11.25C11.6642 11 12 10.6642 12 10.25C12 9.83579 11.6642 9.5 11.25 9.5H10.2074L11.8603 7.18593C12.0236 6.95732 12.0454 6.65662 11.9169 6.40681C11.7883 6.15701 11.5309 6 11.25 6H8.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.99997 8C3.99997 4.68629 6.68626 2 9.99997 2C13.3137 2 16 4.68629 16 8C16 9.88663 16.4537 11.6651 17.2573 13.2343C17.364 13.4426 17.3673 13.6888 17.2663 13.9C17.1652 14.1111 16.9714 14.2629 16.7422 14.3105C15.6746 14.5322 14.5882 14.7023 13.4857 14.818C13.3251 16.602 11.8258 18 10 18C8.17421 18 6.67494 16.602 6.51426 14.818C5.41181 14.7023 4.32537 14.5322 3.25769 14.3105C3.02851 14.2629 2.83469 14.1111 2.73365 13.9C2.6326 13.6888 2.63591 13.4426 2.7426 13.2343C3.54624 11.6651 3.99997 9.88663 3.99997 8ZM9.99997 15C9.34517 15 8.69477 14.9809 8.0493 14.9433C8.25097 15.8345 9.04777 16.5 10 16.5C10.9522 16.5 11.749 15.8345 11.9507 14.9433C11.3052 14.9809 10.6548 15 9.99997 15ZM8.75 6C8.33579 6 8 6.33579 8 6.75C8 7.16421 8.33579 7.5 8.75 7.5H9.79261L8.1397 9.81407C7.97641 10.0427 7.95457 10.3434 8.08312 10.5932C8.21168 10.843 8.46906 11 8.75 11H11.25C11.6642 11 12 10.6642 12 10.25C12 9.83579 11.6642 9.5 11.25 9.5H10.2074L11.8603 7.18593C12.0236 6.95732 12.0454 6.65662 11.9169 6.40681C11.7883 6.15701 11.5309 6 11.25 6H8.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bell.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.99997 2C6.68626 2 3.99997 4.68629 3.99997 8C3.99997 9.88663 3.54624 11.6651 2.7426 13.2343C2.63591 13.4426 2.6326 13.6888 2.73365 13.9C2.83469 14.1111 3.02851 14.2629 3.25769 14.3105C4.32537 14.5322 5.41181 14.7023 6.51426 14.818C6.67494 16.602 8.17421 18 10 18C11.8258 18 13.3251 16.602 13.4857 14.818C14.5882 14.7023 15.6746 14.5322 16.7422 14.3105C16.9714 14.2629 17.1652 14.1111 17.2663 13.9C17.3673 13.6888 17.364 13.4426 17.2573 13.2343C16.4537 11.6651 16 9.88663 16 8C16 4.68629 13.3137 2 9.99997 2ZM8.0493 14.9433C8.69477 14.9809 9.34517 15 9.99997 15C10.6548 15 11.3052 14.9809 11.9507 14.9433C11.749 15.8345 10.9522 16.5 10 16.5C9.04777 16.5 8.25097 15.8345 8.0493 14.9433Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.99997 2C6.68626 2 3.99997 4.68629 3.99997 8C3.99997 9.88663 3.54624 11.6651 2.7426 13.2343C2.63591 13.4426 2.6326 13.6888 2.73365 13.9C2.83469 14.1111 3.02851 14.2629 3.25769 14.3105C4.32537 14.5322 5.41181 14.7023 6.51426 14.818C6.67494 16.602 8.17421 18 10 18C11.8258 18 13.3251 16.602 13.4857 14.818C14.5882 14.7023 15.6746 14.5322 16.7422 14.3105C16.9714 14.2629 17.1652 14.1111 17.2663 13.9C17.3673 13.6888 17.364 13.4426 17.2573 13.2343C16.4537 11.6651 16 9.88663 16 8C16 4.68629 13.3137 2 9.99997 2ZM8.0493 14.9433C8.69477 14.9809 9.34517 15 9.99997 15C10.6548 15 11.3052 14.9809 11.9507 14.9433C11.749 15.8345 10.9522 16.5 10 16.5C9.04777 16.5 8.25097 15.8345 8.0493 14.9433Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bolt-slash.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.21967 2.21967C2.51256 1.92678 2.98744 1.92678 3.28033 2.21967L17.7803 16.7197C18.0732 17.0126 18.0732 17.4874 17.7803 17.7803C17.4874 18.0732 17.0126 18.0732 16.7197 17.7803L2.21967 3.28033C1.92678 2.98744 1.92678 2.51256 2.21967 2.21967Z" fill="#0F172A"/>
    <path d="M4.73016 7.91214L2.19108 10.7499C1.99385 10.9704 1.9446 11.2861 2.06533 11.5562C2.18607 11.8262 2.45423 12 2.75001 12H8.81805L4.73016 7.91214Z" fill="#0F172A"/>
    <path d="M9.23329 12.4153L8.01666 18.0929C7.9454 18.4255 8.10685 18.7644 8.41002 18.9185C8.71318 19.0727 9.08215 19.0036 9.30894 18.7501L12.2647 15.4467L9.23329 12.4153Z" fill="#0F172A"/>
    <path d="M15.2699 12.0879L17.8089 9.25013C18.0062 9.0297 18.0554 8.71393 17.9347 8.4439C17.814 8.17388 17.5458 8.00003 17.25 8.00003H11.182L15.2699 12.0879Z" fill="#0F172A"/>
    <path d="M10.7667 7.58476L11.9834 1.90718C12.0546 1.57461 11.8932 1.23571 11.59 1.08152C11.2868 0.927338 10.9179 0.996463 10.6911 1.24994L7.73537 4.55339L10.7667 7.58476Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.21967 2.21967C2.51256 1.92678 2.98744 1.92678 3.28033 2.21967L17.7803 16.7197C18.0732 17.0126 18.0732 17.4874 17.7803 17.7803C17.4874 18.0732 17.0126 18.0732 16.7197 17.7803L2.21967 3.28033C1.92678 2.98744 1.92678 2.51256 2.21967 2.21967Z\" fill=\"#0F172A\"/>\n<path d=\"M4.73016 7.91214L2.19108 10.7499C1.99385 10.9704 1.9446 11.2861 2.06533 11.5562C2.18607 11.8262 2.45423 12 2.75001 12H8.81805L4.73016 7.91214Z\" fill=\"#0F172A\"/>\n<path d=\"M9.23329 12.4153L8.01666 18.0929C7.9454 18.4255 8.10685 18.7644 8.41002 18.9185C8.71318 19.0727 9.08215 19.0036 9.30894 18.7501L12.2647 15.4467L9.23329 12.4153Z\" fill=\"#0F172A\"/>\n<path d=\"M15.2699 12.0879L17.8089 9.25013C18.0062 9.0297 18.0554 8.71393 17.9347 8.4439C17.814 8.17388 17.5458 8.00003 17.25 8.00003H11.182L15.2699 12.0879Z\" fill=\"#0F172A\"/>\n<path d=\"M10.7667 7.58476L11.9834 1.90718C12.0546 1.57461 11.8932 1.23571 11.59 1.08152C11.2868 0.927338 10.9179 0.996463 10.6911 1.24994L7.73537 4.55339L10.7667 7.58476Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bolt.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.9834 1.90718C12.0546 1.57461 11.8932 1.23571 11.59 1.08152C11.2868 0.927338 10.9179 0.996463 10.6911 1.24994L2.19108 10.7499C1.99385 10.9704 1.9446 11.2861 2.06533 11.5562C2.18607 11.8262 2.45423 12 2.75001 12H9.32227L8.01666 18.0929C7.9454 18.4255 8.10685 18.7644 8.41002 18.9185C8.71318 19.0727 9.08215 19.0036 9.30894 18.7501L17.8089 9.25013C18.0062 9.0297 18.0554 8.71393 17.9347 8.4439C17.814 8.17388 17.5458 8.00003 17.25 8.00003H10.6778L11.9834 1.90718Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.9834 1.90718C12.0546 1.57461 11.8932 1.23571 11.59 1.08152C11.2868 0.927338 10.9179 0.996463 10.6911 1.24994L2.19108 10.7499C1.99385 10.9704 1.9446 11.2861 2.06533 11.5562C2.18607 11.8262 2.45423 12 2.75001 12H9.32227L8.01666 18.0929C7.9454 18.4255 8.10685 18.7644 8.41002 18.9185C8.71318 19.0727 9.08215 19.0036 9.30894 18.7501L17.8089 9.25013C18.0062 9.0297 18.0554 8.71393 17.9347 8.4439C17.814 8.17388 17.5458 8.00003 17.25 8.00003H10.6778L11.9834 1.90718Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/book-open.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.75 16.8195C11.9579 15.9871 13.4212 15.5 15 15.5C15.7103 15.5 16.3964 15.5985 17.0459 15.7822C17.272 15.8462 17.515 15.8005 17.7024 15.6587C17.8899 15.5169 18 15.2955 18 15.0605V4.06055C18 3.72495 17.7771 3.4302 17.4541 3.33886C16.6731 3.11796 15.8497 3 15 3C13.4636 3 12.016 3.38549 10.75 4.06487V16.8195Z" fill="#0F172A"/>
    <path d="M9.25 4.06487C7.98396 3.38549 6.5364 3 5 3C4.15029 3 3.32689 3.11796 2.54588 3.33886C2.22295 3.4302 2 3.72495 2 4.06055V15.0605C2 15.2955 2.11014 15.5169 2.29756 15.6587C2.48497 15.8005 2.728 15.8462 2.95412 15.7822C3.60361 15.5985 4.28967 15.5 5 15.5C6.57884 15.5 8.04208 15.9871 9.25 16.8195V4.06487Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10.75 16.8195C11.9579 15.9871 13.4212 15.5 15 15.5C15.7103 15.5 16.3964 15.5985 17.0459 15.7822C17.272 15.8462 17.515 15.8005 17.7024 15.6587C17.8899 15.5169 18 15.2955 18 15.0605V4.06055C18 3.72495 17.7771 3.4302 17.4541 3.33886C16.6731 3.11796 15.8497 3 15 3C13.4636 3 12.016 3.38549 10.75 4.06487V16.8195Z\" fill=\"#0F172A\"/>\n<path d=\"M9.25 4.06487C7.98396 3.38549 6.5364 3 5 3C4.15029 3 3.32689 3.11796 2.54588 3.33886C2.22295 3.4302 2 3.72495 2 4.06055V15.0605C2 15.2955 2.11014 15.5169 2.29756 15.6587C2.48497 15.8005 2.728 15.8462 2.95412 15.7822C3.60361 15.5985 4.28967 15.5 5 15.5C6.57884 15.5 8.04208 15.9871 9.25 16.8195V4.06487Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bookmark-slash.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3 18.25V6.18198L15.5768 18.7588L10 16.0819L4.07455 18.9261C3.84215 19.0377 3.56875 19.0221 3.35057 18.8848C3.13239 18.7475 3 18.5078 3 18.25Z" fill="#0F172A"/>
    <path d="M17 3.51661V13.818L4.56818 1.3862C4.68444 1.35141 4.80528 1.32585 4.93005 1.31046C6.5916 1.10551 8.28365 1 10 1C11.7163 1 13.4084 1.10551 15.07 1.31046C16.1942 1.44913 17 2.41374 17 3.51661Z" fill="#0F172A"/>
    <path d="M3.28033 2.21967C2.98744 1.92678 2.51256 1.92678 2.21967 2.21967C1.92678 2.51256 1.92678 2.98744 2.21967 3.28033L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L3.28033 2.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3 18.25V6.18198L15.5768 18.7588L10 16.0819L4.07455 18.9261C3.84215 19.0377 3.56875 19.0221 3.35057 18.8848C3.13239 18.7475 3 18.5078 3 18.25Z\" fill=\"#0F172A\"/>\n<path d=\"M17 3.51661V13.818L4.56818 1.3862C4.68444 1.35141 4.80528 1.32585 4.93005 1.31046C6.5916 1.10551 8.28365 1 10 1C11.7163 1 13.4084 1.10551 15.07 1.31046C16.1942 1.44913 17 2.41374 17 3.51661Z\" fill=\"#0F172A\"/>\n<path d=\"M3.28033 2.21967C2.98744 1.92678 2.51256 1.92678 2.21967 2.21967C1.92678 2.51256 1.92678 2.98744 2.21967 3.28033L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L3.28033 2.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bookmark-square.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 2C3.00736 2 2 3.00736 2 4.25V15.75C2 16.9926 3.00736 18 4.25 18H15.75C16.9926 18 18 16.9926 18 15.75V4.25C18 3.00736 16.9926 2 15.75 2H4.25ZM6 13.25V3.5H14V13.25C14 13.5058 13.8697 13.7439 13.6542 13.8818C13.4388 14.0196 13.1679 14.0382 12.9357 13.931L10 12.576L7.06429 13.931C6.83207 14.0382 6.56123 14.0196 6.34578 13.8818C6.13034 13.7439 6 13.5058 6 13.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.25 2C3.00736 2 2 3.00736 2 4.25V15.75C2 16.9926 3.00736 18 4.25 18H15.75C16.9926 18 18 16.9926 18 15.75V4.25C18 3.00736 16.9926 2 15.75 2H4.25ZM6 13.25V3.5H14V13.25C14 13.5058 13.8697 13.7439 13.6542 13.8818C13.4388 14.0196 13.1679 14.0382 12.9357 13.931L10 12.576L7.06429 13.931C6.83207 14.0382 6.56123 14.0196 6.34578 13.8818C6.13034 13.7439 6 13.5058 6 13.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/bookmark.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 1C8.28365 1 6.5916 1.10551 4.93005 1.31046C3.80579 1.44913 3 2.41374 3 3.51661V18.25C3 18.5078 3.13239 18.7475 3.35057 18.8848C3.56875 19.0221 3.84215 19.0377 4.07455 18.9261L10 16.0819L15.9255 18.9261C16.1578 19.0377 16.4312 19.0221 16.6494 18.8848C16.8676 18.7475 17 18.5078 17 18.25V3.51661C17 2.41374 16.1942 1.44913 15.07 1.31046C13.4084 1.10551 11.7163 1 10 1Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 1C8.28365 1 6.5916 1.10551 4.93005 1.31046C3.80579 1.44913 3 2.41374 3 3.51661V18.25C3 18.5078 3.13239 18.7475 3.35057 18.8848C3.56875 19.0221 3.84215 19.0377 4.07455 18.9261L10 16.0819L15.9255 18.9261C16.1578 19.0377 16.4312 19.0221 16.6494 18.8848C16.8676 18.7475 17 18.5078 17 18.25V3.51661C17 2.41374 16.1942 1.44913 15.07 1.31046C13.4084 1.10551 11.7163 1 10 1Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/briefcase.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6 3.75C6 2.23122 7.23122 1 8.75 1H11.25C12.7688 1 14 2.23122 14 3.75V4.19269C14.572 4.24808 15.1407 4.31524 15.7057 4.39392C17.0526 4.58149 18 5.74901 18 7.07023V10.5386C18 11.6653 17.3058 12.7301 16.1705 13.0786C14.2185 13.6778 12.1462 14 10 14C7.8538 14 5.78149 13.6778 3.82951 13.0786C2.69423 12.7301 2 11.6653 2 10.5386V7.07023C2 5.74901 2.94737 4.58149 4.29435 4.39392C4.85933 4.31524 5.42796 4.24808 6 4.19269V3.75ZM12.5 3.75V4.07499C11.673 4.02523 10.8394 4 10 4C9.16061 4 8.32704 4.02523 7.5 4.07499V3.75C7.5 3.05964 8.05964 2.5 8.75 2.5H11.25C11.9404 2.5 12.5 3.05964 12.5 3.75ZM10 10C9.44772 10 9 10.4477 9 11V11.01C9 11.5623 9.44772 12.01 10 12.01H10.01C10.5623 12.01 11.01 11.5623 11.01 11.01V11C11.01 10.4477 10.5623 10 10.01 10H10Z" fill="#0F172A"/>
    <path d="M3 15.0552V14.3714C3.1256 14.4243 3.25542 14.4715 3.38933 14.5126C5.48234 15.1551 7.70295 15.5 10 15.5C12.297 15.5 14.5177 15.1551 16.6107 14.5126C16.7446 14.4715 16.8744 14.4243 17 14.3714V15.0552C17 16.4024 16.0154 17.5854 14.6369 17.7406C13.1147 17.9119 11.5675 17.9999 10 17.9999C8.43253 17.9999 6.88533 17.9119 5.36311 17.7406C3.98461 17.5854 3 16.4024 3 15.0552Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6 3.75C6 2.23122 7.23122 1 8.75 1H11.25C12.7688 1 14 2.23122 14 3.75V4.19269C14.572 4.24808 15.1407 4.31524 15.7057 4.39392C17.0526 4.58149 18 5.74901 18 7.07023V10.5386C18 11.6653 17.3058 12.7301 16.1705 13.0786C14.2185 13.6778 12.1462 14 10 14C7.8538 14 5.78149 13.6778 3.82951 13.0786C2.69423 12.7301 2 11.6653 2 10.5386V7.07023C2 5.74901 2.94737 4.58149 4.29435 4.39392C4.85933 4.31524 5.42796 4.24808 6 4.19269V3.75ZM12.5 3.75V4.07499C11.673 4.02523 10.8394 4 10 4C9.16061 4 8.32704 4.02523 7.5 4.07499V3.75C7.5 3.05964 8.05964 2.5 8.75 2.5H11.25C11.9404 2.5 12.5 3.05964 12.5 3.75ZM10 10C9.44772 10 9 10.4477 9 11V11.01C9 11.5623 9.44772 12.01 10 12.01H10.01C10.5623 12.01 11.01 11.5623 11.01 11.01V11C11.01 10.4477 10.5623 10 10.01 10H10Z\" fill=\"#0F172A\"/>\n<path d=\"M3 15.0552V14.3714C3.1256 14.4243 3.25542 14.4715 3.38933 14.5126C5.48234 15.1551 7.70295 15.5 10 15.5C12.297 15.5 14.5177 15.1551 16.6107 14.5126C16.7446 14.4715 16.8744 14.4243 17 14.3714V15.0552C17 16.4024 16.0154 17.5854 14.6369 17.7406C13.1147 17.9119 11.5675 17.9999 10 17.9999C8.43253 17.9999 6.88533 17.9119 5.36311 17.7406C3.98461 17.5854 3 16.4024 3 15.0552Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/building-library.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.67411 2.07459C9.88011 1.97514 10.1202 1.97514 10.3262 2.07459L17.5762 5.57459C17.9493 5.75467 18.1057 6.20304 17.9256 6.57606C17.7576 6.92403 17.3561 7.08351 17.0002 6.95718V16.5H17.2502C17.6644 16.5 18.0002 16.8358 18.0002 17.25C18.0002 17.6642 17.6644 18 17.2502 18H2.75017C2.33596 18 2.00017 17.6642 2.00017 17.25C2.00017 16.8358 2.33596 16.5 2.75017 16.5H3.00017V6.95718C2.6442 7.08351 2.24274 6.92403 2.07476 6.57606C1.89468 6.20304 2.05109 5.75467 2.42411 5.57459L9.67411 2.07459ZM11 6C11 6.55228 10.5523 7 10 7C9.44772 7 9 6.55228 9 6C9 5.44772 9.44772 5 10 5C10.5523 5 11 5.44772 11 6ZM7.5 9.75C7.5 9.33579 7.16421 9 6.75 9C6.33579 9 6 9.33579 6 9.75V15.25C6 15.6642 6.33579 16 6.75 16C7.16421 16 7.5 15.6642 7.5 15.25V9.75ZM10.75 9.75C10.75 9.33579 10.4142 9 10 9C9.58579 9 9.25 9.33579 9.25 9.75V15.25C9.25 15.6642 9.58579 16 10 16C10.4142 16 10.75 15.6642 10.75 15.25V9.75ZM14 9.75C14 9.33579 13.6642 9 13.25 9C12.8358 9 12.5 9.33579 12.5 9.75V15.25C12.5 15.6642 12.8358 16 13.25 16C13.6642 16 14 15.6642 14 15.25V9.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.67411 2.07459C9.88011 1.97514 10.1202 1.97514 10.3262 2.07459L17.5762 5.57459C17.9493 5.75467 18.1057 6.20304 17.9256 6.57606C17.7576 6.92403 17.3561 7.08351 17.0002 6.95718V16.5H17.2502C17.6644 16.5 18.0002 16.8358 18.0002 17.25C18.0002 17.6642 17.6644 18 17.2502 18H2.75017C2.33596 18 2.00017 17.6642 2.00017 17.25C2.00017 16.8358 2.33596 16.5 2.75017 16.5H3.00017V6.95718C2.6442 7.08351 2.24274 6.92403 2.07476 6.57606C1.89468 6.20304 2.05109 5.75467 2.42411 5.57459L9.67411 2.07459ZM11 6C11 6.55228 10.5523 7 10 7C9.44772 7 9 6.55228 9 6C9 5.44772 9.44772 5 10 5C10.5523 5 11 5.44772 11 6ZM7.5 9.75C7.5 9.33579 7.16421 9 6.75 9C6.33579 9 6 9.33579 6 9.75V15.25C6 15.6642 6.33579 16 6.75 16C7.16421 16 7.5 15.6642 7.5 15.25V9.75ZM10.75 9.75C10.75 9.33579 10.4142 9 10 9C9.58579 9 9.25 9.33579 9.25 9.75V15.25C9.25 15.6642 9.58579 16 10 16C10.4142 16 10.75 15.6642 10.75 15.25V9.75ZM14 9.75C14 9.33579 13.6642 9 13.25 9C12.8358 9 12.5 9.33579 12.5 9.75V15.25C12.5 15.6642 12.8358 16 13.25 16C13.6642 16 14 15.6642 14 15.25V9.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/building-office-2.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 2.75C1 2.33579 1.33579 2 1.75 2H12.25C12.6642 2 13 2.33579 13 2.75C13 3.16421 12.6642 3.5 12.25 3.5H12V17.25C12 17.6642 11.6642 18 11.25 18H9.75C9.33579 18 9 17.6642 9 17.25V14.75C9 14.3358 8.66421 14 8.25 14H5.75C5.33579 14 5 14.3358 5 14.75V17.25C5 17.6642 4.66421 18 4.25 18H1.75C1.33579 18 1 17.6642 1 17.25C1 16.8358 1.33579 16.5 1.75 16.5H2V3.5H1.75C1.33579 3.5 1 3.16421 1 2.75ZM4 5.5C4 5.22386 4.22386 5 4.5 5H5.5C5.77614 5 6 5.22386 6 5.5V6.5C6 6.77614 5.77614 7 5.5 7H4.5C4.22386 7 4 6.77614 4 6.5V5.5ZM4.5 9C4.22386 9 4 9.22386 4 9.5V10.5C4 10.7761 4.22386 11 4.5 11H5.5C5.77614 11 6 10.7761 6 10.5V9.5C6 9.22386 5.77614 9 5.5 9H4.5ZM8 5.5C8 5.22386 8.22386 5 8.5 5H9.5C9.77614 5 10 5.22386 10 5.5V6.5C10 6.77614 9.77614 7 9.5 7H8.5C8.22386 7 8 6.77614 8 6.5V5.5ZM8.5 9C8.22386 9 8 9.22386 8 9.5V10.5C8 10.7761 8.22386 11 8.5 11H9.5C9.77614 11 10 10.7761 10 10.5V9.5C10 9.22386 9.77614 9 9.5 9H8.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.25 6C13.8358 6 13.5 6.33579 13.5 6.75V17C13.5 17.5523 13.9477 18 14.5 18H18.25C18.6642 18 19 17.6642 19 17.25C19 16.8358 18.6642 16.5 18.25 16.5H18V7.5H18.25C18.6642 7.5 19 7.16421 19 6.75C19 6.33579 18.6642 6 18.25 6H14.25ZM14.75 9.5C14.75 9.22386 14.9739 9 15.25 9H16.25C16.5261 9 16.75 9.22386 16.75 9.5V10.5C16.75 10.7761 16.5261 11 16.25 11H15.25C14.9739 11 14.75 10.7761 14.75 10.5V9.5ZM15.25 13C14.9739 13 14.75 13.2239 14.75 13.5V14.5C14.75 14.7761 14.9739 15 15.25 15H16.25C16.5261 15 16.75 14.7761 16.75 14.5V13.5C16.75 13.2239 16.5261 13 16.25 13H15.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 2.75C1 2.33579 1.33579 2 1.75 2H12.25C12.6642 2 13 2.33579 13 2.75C13 3.16421 12.6642 3.5 12.25 3.5H12V17.25C12 17.6642 11.6642 18 11.25 18H9.75C9.33579 18 9 17.6642 9 17.25V14.75C9 14.3358 8.66421 14 8.25 14H5.75C5.33579 14 5 14.3358 5 14.75V17.25C5 17.6642 4.66421 18 4.25 18H1.75C1.33579 18 1 17.6642 1 17.25C1 16.8358 1.33579 16.5 1.75 16.5H2V3.5H1.75C1.33579 3.5 1 3.16421 1 2.75ZM4 5.5C4 5.22386 4.22386 5 4.5 5H5.5C5.77614 5 6 5.22386 6 5.5V6.5C6 6.77614 5.77614 7 5.5 7H4.5C4.22386 7 4 6.77614 4 6.5V5.5ZM4.5 9C4.22386 9 4 9.22386 4 9.5V10.5C4 10.7761 4.22386 11 4.5 11H5.5C5.77614 11 6 10.7761 6 10.5V9.5C6 9.22386 5.77614 9 5.5 9H4.5ZM8 5.5C8 5.22386 8.22386 5 8.5 5H9.5C9.77614 5 10 5.22386 10 5.5V6.5C10 6.77614 9.77614 7 9.5 7H8.5C8.22386 7 8 6.77614 8 6.5V5.5ZM8.5 9C8.22386 9 8 9.22386 8 9.5V10.5C8 10.7761 8.22386 11 8.5 11H9.5C9.77614 11 10 10.7761 10 10.5V9.5C10 9.22386 9.77614 9 9.5 9H8.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.25 6C13.8358 6 13.5 6.33579 13.5 6.75V17C13.5 17.5523 13.9477 18 14.5 18H18.25C18.6642 18 19 17.6642 19 17.25C19 16.8358 18.6642 16.5 18.25 16.5H18V7.5H18.25C18.6642 7.5 19 7.16421 19 6.75C19 6.33579 18.6642 6 18.25 6H14.25ZM14.75 9.5C14.75 9.22386 14.9739 9 15.25 9H16.25C16.5261 9 16.75 9.22386 16.75 9.5V10.5C16.75 10.7761 16.5261 11 16.25 11H15.25C14.9739 11 14.75 10.7761 14.75 10.5V9.5ZM15.25 13C14.9739 13 14.75 13.2239 14.75 13.5V14.5C14.75 14.7761 14.9739 15 15.25 15H16.25C16.5261 15 16.75 14.7761 16.75 14.5V13.5C16.75 13.2239 16.5261 13 16.25 13H15.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/building-office.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4 16.5V3.5H3.75C3.33579 3.5 3 3.16421 3 2.75C3 2.33579 3.33579 2 3.75 2H16.25C16.6642 2 17 2.33579 17 2.75C17 3.16421 16.6642 3.5 16.25 3.5H16V16.5H16.25C16.6642 16.5 17 16.8358 17 17.25C17 17.6642 16.6642 18 16.25 18H12.75C12.3358 18 12 17.6642 12 17.25V14.75C12 14.3358 11.6642 14 11.25 14H8.75C8.33579 14 8 14.3358 8 14.75V17.25C8 17.6642 7.66421 18 7.25 18H3.75C3.33579 18 3 17.6642 3 17.25C3 16.8358 3.33579 16.5 3.75 16.5H4ZM7 5.5C7 5.22386 7.22386 5 7.5 5H8.5C8.77614 5 9 5.22386 9 5.5V6.5C9 6.77614 8.77614 7 8.5 7H7.5C7.22386 7 7 6.77614 7 6.5V5.5ZM7.5 9C7.22386 9 7 9.22386 7 9.5V10.5C7 10.7761 7.22386 11 7.5 11H8.5C8.77614 11 9 10.7761 9 10.5V9.5C9 9.22386 8.77614 9 8.5 9H7.5ZM11 5.5C11 5.22386 11.2239 5 11.5 5H12.5C12.7761 5 13 5.22386 13 5.5V6.5C13 6.77614 12.7761 7 12.5 7H11.5C11.2239 7 11 6.77614 11 6.5V5.5ZM11.5 9C11.2239 9 11 9.22386 11 9.5V10.5C11 10.7761 11.2239 11 11.5 11H12.5C12.7761 11 13 10.7761 13 10.5V9.5C13 9.22386 12.7761 9 12.5 9H11.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4 16.5V3.5H3.75C3.33579 3.5 3 3.16421 3 2.75C3 2.33579 3.33579 2 3.75 2H16.25C16.6642 2 17 2.33579 17 2.75C17 3.16421 16.6642 3.5 16.25 3.5H16V16.5H16.25C16.6642 16.5 17 16.8358 17 17.25C17 17.6642 16.6642 18 16.25 18H12.75C12.3358 18 12 17.6642 12 17.25V14.75C12 14.3358 11.6642 14 11.25 14H8.75C8.33579 14 8 14.3358 8 14.75V17.25C8 17.6642 7.66421 18 7.25 18H3.75C3.33579 18 3 17.6642 3 17.25C3 16.8358 3.33579 16.5 3.75 16.5H4ZM7 5.5C7 5.22386 7.22386 5 7.5 5H8.5C8.77614 5 9 5.22386 9 5.5V6.5C9 6.77614 8.77614 7 8.5 7H7.5C7.22386 7 7 6.77614 7 6.5V5.5ZM7.5 9C7.22386 9 7 9.22386 7 9.5V10.5C7 10.7761 7.22386 11 7.5 11H8.5C8.77614 11 9 10.7761 9 10.5V9.5C9 9.22386 8.77614 9 8.5 9H7.5ZM11 5.5C11 5.22386 11.2239 5 11.5 5H12.5C12.7761 5 13 5.22386 13 5.5V6.5C13 6.77614 12.7761 7 12.5 7H11.5C11.2239 7 11 6.77614 11 6.5V5.5ZM11.5 9C11.2239 9 11 9.22386 11 9.5V10.5C11 10.7761 11.2239 11 11.5 11H12.5C12.7761 11 13 10.7761 13 10.5V9.5C13 9.22386 12.7761 9 12.5 9H11.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/building-storefront.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M2.87868 7.12106C4.05025 8.29263 5.94975 8.29263 7.12132 7.12106C7.26529 6.97709 7.39156 6.82213 7.50015 6.65889C8.03763 7.46711 8.95661 7.99977 10 7.99977C11.0435 7.99977 11.9626 7.46697 12.5001 6.65856C12.6087 6.82194 12.7351 6.97702 12.8791 7.12109C14.0507 8.29267 15.9502 8.29267 17.1218 7.12109C18.2933 5.94952 18.2933 4.05003 17.1218 2.87845L16.8291 2.58579C16.454 2.21071 15.9453 2 15.4149 2H4.58552C4.05509 2 3.54638 2.21071 3.17131 2.58579L2.87868 2.87842C1.70711 4.04999 1.70711 5.94949 2.87868 7.12106Z" fill="#0F172A"/>
    <path d="M3 9.03223C4.42799 9.74067 6.15393 9.64395 7.50057 8.74205C8.21499 9.22007 9.07471 9.49977 10 9.49977C10.9254 9.49977 11.7852 9.22002 12.4996 8.74191C13.8462 9.64388 15.572 9.74073 17 9.03249V16.5H17.25C17.6642 16.5 18 16.8358 18 17.25C18 17.6642 17.6642 18 17.25 18H12.75C12.3358 18 12 17.6642 12 17.25V13.75C12 13.3358 11.6642 13 11.25 13H8.75C8.33579 13 8 13.3358 8 13.75V17.25C8 17.6642 7.66421 18 7.25 18H2.75C2.33579 18 2 17.6642 2 17.25C2 16.8358 2.33579 16.5 2.75 16.5H3V9.03223Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M2.87868 7.12106C4.05025 8.29263 5.94975 8.29263 7.12132 7.12106C7.26529 6.97709 7.39156 6.82213 7.50015 6.65889C8.03763 7.46711 8.95661 7.99977 10 7.99977C11.0435 7.99977 11.9626 7.46697 12.5001 6.65856C12.6087 6.82194 12.7351 6.97702 12.8791 7.12109C14.0507 8.29267 15.9502 8.29267 17.1218 7.12109C18.2933 5.94952 18.2933 4.05003 17.1218 2.87845L16.8291 2.58579C16.454 2.21071 15.9453 2 15.4149 2H4.58552C4.05509 2 3.54638 2.21071 3.17131 2.58579L2.87868 2.87842C1.70711 4.04999 1.70711 5.94949 2.87868 7.12106Z\" fill=\"#0F172A\"/>\n<path d=\"M3 9.03223C4.42799 9.74067 6.15393 9.64395 7.50057 8.74205C8.21499 9.22007 9.07471 9.49977 10 9.49977C10.9254 9.49977 11.7852 9.22002 12.4996 8.74191C13.8462 9.64388 15.572 9.74073 17 9.03249V16.5H17.25C17.6642 16.5 18 16.8358 18 17.25C18 17.6642 17.6642 18 17.25 18H12.75C12.3358 18 12 17.6642 12 17.25V13.75C12 13.3358 11.6642 13 11.25 13H8.75C8.33579 13 8 13.3358 8 13.75V17.25C8 17.6642 7.66421 18 7.25 18H2.75C2.33579 18 2 17.6642 2 17.25C2 16.8358 2.33579 16.5 2.75 16.5H3V9.03223Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cake.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.74999 0.979492L5.86612 1.86339C5.37796 2.35154 5.37796 3.143 5.86612 3.63115C6.35427 4.11931 7.14573 4.11931 7.63388 3.63115C8.12204 3.143 8.12204 2.35154 7.63388 1.86339L6.74999 0.979492Z" fill="#0F172A"/>
    <path d="M13.25 0.979492L12.3661 1.86339C11.878 2.35154 11.878 3.143 12.3661 3.63115C12.8543 4.11931 13.6457 4.11931 14.1339 3.63115C14.622 3.143 14.622 2.35154 14.1339 1.86339L13.25 0.979492Z" fill="#0F172A"/>
    <path d="M9.99999 0.979492L10.8839 1.86339C11.372 2.35154 11.372 3.143 10.8839 3.63115C10.3957 4.11931 9.60427 4.11931 9.11612 3.63115C8.62796 3.143 8.62796 2.35154 9.11612 1.86339L9.99999 0.979492Z" fill="#0F172A"/>
    <path d="M7.5 5.75015C7.5 5.33594 7.16421 5.00015 6.75 5.00015C6.33579 5.00015 6 5.33594 6 5.75015V6.21394C4.82122 6.51862 4 7.60448 4 8.83585V8.93037C4.10036 8.90975 4.20229 8.89245 4.30573 8.87859C6.16935 8.62892 8.07023 8.50015 10 8.50015C11.9298 8.50015 13.8306 8.62892 15.6943 8.87859C15.7977 8.89245 15.8996 8.90975 16 8.93037V8.83585C16 7.60447 15.1788 6.51862 14 6.21394V5.75015C14 5.33594 13.6642 5.00015 13.25 5.00015C12.8358 5.00015 12.5 5.33594 12.5 5.75015V6.06844C11.9195 6.03665 11.3361 6.01586 10.75 6.00628V5.75015C10.75 5.33594 10.4142 5.00015 10 5.00015C9.58579 5.00015 9.25 5.33594 9.25 5.75015V6.00628C8.66391 6.01586 8.08051 6.03665 7.5 6.06844V5.75015Z" fill="#0F172A"/>
    <path d="M4.50491 10.3653C6.30269 10.1245 8.13702 10.0002 10 10.0002C11.863 10.0002 13.6973 10.1245 15.4951 10.3653C16.9666 10.5625 18 11.838 18 13.279V13.9723C17.4297 13.9723 16.8594 13.8413 16.3354 13.5793C14.8652 12.8442 13.1348 12.8442 11.6646 13.5793C10.6167 14.1033 9.38329 14.1033 8.33541 13.5793C6.86524 12.8442 5.13476 12.8442 3.66459 13.5793C3.14065 13.8413 2.57032 13.9723 2 13.9723V13.279C2 11.838 3.03337 10.5625 4.50491 10.3653Z" fill="#0F172A"/>
    <path d="M15.6646 14.921C16.3997 15.2885 17.1998 15.4723 18 15.4723V16.5002C18 17.3286 17.3284 18.0002 16.5 18.0002H3.5C2.67157 18.0002 2 17.3286 2 16.5002V15.4723C2.80016 15.4723 3.60032 15.2885 4.33541 14.921C5.38329 14.397 6.61671 14.397 7.66459 14.921C9.13476 15.6561 10.8652 15.6561 12.3354 14.921C13.3833 14.397 14.6167 14.397 15.6646 14.921Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6.74999 0.979492L5.86612 1.86339C5.37796 2.35154 5.37796 3.143 5.86612 3.63115C6.35427 4.11931 7.14573 4.11931 7.63388 3.63115C8.12204 3.143 8.12204 2.35154 7.63388 1.86339L6.74999 0.979492Z\" fill=\"#0F172A\"/>\n<path d=\"M13.25 0.979492L12.3661 1.86339C11.878 2.35154 11.878 3.143 12.3661 3.63115C12.8543 4.11931 13.6457 4.11931 14.1339 3.63115C14.622 3.143 14.622 2.35154 14.1339 1.86339L13.25 0.979492Z\" fill=\"#0F172A\"/>\n<path d=\"M9.99999 0.979492L10.8839 1.86339C11.372 2.35154 11.372 3.143 10.8839 3.63115C10.3957 4.11931 9.60427 4.11931 9.11612 3.63115C8.62796 3.143 8.62796 2.35154 9.11612 1.86339L9.99999 0.979492Z\" fill=\"#0F172A\"/>\n<path d=\"M7.5 5.75015C7.5 5.33594 7.16421 5.00015 6.75 5.00015C6.33579 5.00015 6 5.33594 6 5.75015V6.21394C4.82122 6.51862 4 7.60448 4 8.83585V8.93037C4.10036 8.90975 4.20229 8.89245 4.30573 8.87859C6.16935 8.62892 8.07023 8.50015 10 8.50015C11.9298 8.50015 13.8306 8.62892 15.6943 8.87859C15.7977 8.89245 15.8996 8.90975 16 8.93037V8.83585C16 7.60447 15.1788 6.51862 14 6.21394V5.75015C14 5.33594 13.6642 5.00015 13.25 5.00015C12.8358 5.00015 12.5 5.33594 12.5 5.75015V6.06844C11.9195 6.03665 11.3361 6.01586 10.75 6.00628V5.75015C10.75 5.33594 10.4142 5.00015 10 5.00015C9.58579 5.00015 9.25 5.33594 9.25 5.75015V6.00628C8.66391 6.01586 8.08051 6.03665 7.5 6.06844V5.75015Z\" fill=\"#0F172A\"/>\n<path d=\"M4.50491 10.3653C6.30269 10.1245 8.13702 10.0002 10 10.0002C11.863 10.0002 13.6973 10.1245 15.4951 10.3653C16.9666 10.5625 18 11.838 18 13.279V13.9723C17.4297 13.9723 16.8594 13.8413 16.3354 13.5793C14.8652 12.8442 13.1348 12.8442 11.6646 13.5793C10.6167 14.1033 9.38329 14.1033 8.33541 13.5793C6.86524 12.8442 5.13476 12.8442 3.66459 13.5793C3.14065 13.8413 2.57032 13.9723 2 13.9723V13.279C2 11.838 3.03337 10.5625 4.50491 10.3653Z\" fill=\"#0F172A\"/>\n<path d=\"M15.6646 14.921C16.3997 15.2885 17.1998 15.4723 18 15.4723V16.5002C18 17.3286 17.3284 18.0002 16.5 18.0002H3.5C2.67157 18.0002 2 17.3286 2 16.5002V15.4723C2.80016 15.4723 3.60032 15.2885 4.33541 14.921C5.38329 14.397 6.61671 14.397 7.66459 14.921C9.13476 15.6561 10.8652 15.6561 12.3354 14.921C13.3833 14.397 14.6167 14.397 15.6646 14.921Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/calculator.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 1C8.28365 1 6.5916 1.10551 4.93005 1.31046C3.80579 1.44913 3 2.41374 3 3.51661V16.75C3 17.9926 4.00736 19 5.25 19H14.75C15.9926 19 17 17.9926 17 16.75V3.51661C17 2.41374 16.1942 1.44913 15.07 1.31046C13.4084 1.10551 11.7163 1 10 1ZM5.99023 8.75C5.99023 8.33579 6.32602 8 6.74023 8H6.75023C7.16445 8 7.50023 8.33579 7.50023 8.75V8.76C7.50023 9.17421 7.16445 9.51 6.75023 9.51H6.74023C6.32602 9.51 5.99023 9.17421 5.99023 8.76V8.75ZM6.74023 10.1666C6.32602 10.1666 5.99023 10.5024 5.99023 10.9166V10.9266C5.99023 11.3408 6.32602 11.6766 6.74023 11.6766H6.75023C7.16445 11.6766 7.50023 11.3408 7.50023 10.9266V10.9166C7.50023 10.5024 7.16445 10.1666 6.75023 10.1666H6.74023ZM5.99023 13.0833C5.99023 12.669 6.32602 12.3333 6.74023 12.3333H6.75023C7.16445 12.3333 7.50023 12.669 7.50023 13.0833V13.0933C7.50023 13.5075 7.16445 13.8433 6.75023 13.8433H6.74023C6.32602 13.8433 5.99023 13.5075 5.99023 13.0933V13.0833ZM6.74023 14.4999C6.32602 14.4999 5.99023 14.8357 5.99023 15.2499V15.2599C5.99023 15.6741 6.32602 16.0099 6.74023 16.0099H6.75023C7.16445 16.0099 7.50023 15.6741 7.50023 15.2599V15.2499C7.50023 14.8357 7.16445 14.4999 6.75023 14.4999H6.74023ZM8.15691 8.75C8.15691 8.33579 8.49269 8 8.90691 8H8.91691C9.33112 8 9.66691 8.33579 9.66691 8.75V8.76C9.66691 9.17421 9.33112 9.51 8.91691 9.51H8.90691C8.49269 9.51 8.15691 9.17421 8.15691 8.76V8.75ZM8.90691 10.1666C8.49269 10.1666 8.15691 10.5024 8.15691 10.9166V10.9266C8.15691 11.3408 8.49269 11.6766 8.90691 11.6766H8.91691C9.33112 11.6766 9.66691 11.3408 9.66691 10.9266V10.9166C9.66691 10.5024 9.33112 10.1666 8.91691 10.1666H8.90691ZM8.15691 13.0833C8.15691 12.669 8.49269 12.3333 8.90691 12.3333H8.91691C9.33112 12.3333 9.66691 12.669 9.66691 13.0833V13.0933C9.66691 13.5075 9.33112 13.8433 8.91691 13.8433H8.90691C8.49269 13.8433 8.15691 13.5075 8.15691 13.0933V13.0833ZM8.90691 14.4999C8.49269 14.4999 8.15691 14.8357 8.15691 15.2499V15.2599C8.15691 15.6741 8.49269 16.0099 8.90691 16.0099H8.91691C9.33112 16.0099 9.66691 15.6741 9.66691 15.2599V15.2499C9.66691 14.8357 9.33112 14.4999 8.91691 14.4999H8.90691ZM10.3269 8.75C10.3269 8.33579 10.6627 8 11.0769 8H11.0869C11.5011 8 11.8369 8.33579 11.8369 8.75V8.76C11.8369 9.17421 11.5011 9.51 11.0869 9.51H11.0769C10.6627 9.51 10.3269 9.17421 10.3269 8.76V8.75ZM11.0769 10.1666C10.6627 10.1666 10.3269 10.5024 10.3269 10.9166V10.9266C10.3269 11.3408 10.6627 11.6766 11.0769 11.6766H11.0869C11.5011 11.6766 11.8369 11.3408 11.8369 10.9266V10.9166C11.8369 10.5024 11.5011 10.1666 11.0869 10.1666H11.0769ZM10.3269 13.0833C10.3269 12.669 10.6627 12.3333 11.0769 12.3333H11.0869C11.5011 12.3333 11.8369 12.669 11.8369 13.0833V13.0933C11.8369 13.5075 11.5011 13.8433 11.0869 13.8433H11.0769C10.6627 13.8433 10.3269 13.5075 10.3269 13.0933V13.0833ZM11.0769 14.4999C10.6627 14.4999 10.3269 14.8357 10.3269 15.2499V15.2599C10.3269 15.6741 10.6627 16.0099 11.0769 16.0099H11.0869C11.5011 16.0099 11.8369 15.6741 11.8369 15.2599V15.2499C11.8369 14.8357 11.5011 14.4999 11.0869 14.4999H11.0769ZM12.5002 8.75C12.5002 8.33579 12.836 8 13.2502 8H13.2602C13.6744 8 14.0102 8.33579 14.0102 8.75V8.76C14.0102 9.17421 13.6744 9.51 13.2602 9.51H13.2502C12.836 9.51 12.5002 9.17421 12.5002 8.76V8.75ZM13.2502 10.1666C12.836 10.1666 12.5002 10.5024 12.5002 10.9166V10.9266C12.5002 11.3408 12.836 11.6766 13.2502 11.6766H13.2602C13.6744 11.6766 14.0102 11.3408 14.0102 10.9266V10.9166C14.0102 10.5024 13.6744 10.1666 13.2602 10.1666H13.2502ZM13.2502 12.3334C13.6644 12.3334 14.0002 12.6692 14.0002 13.0834V15.25C14.0002 15.6643 13.6644 16 13.2502 16C12.836 16 12.5002 15.6643 12.5002 15.25V13.0834C12.5002 12.6692 12.836 12.3334 13.2502 12.3334ZM6.75 4C6.33579 4 6 4.33579 6 4.75V5.25C6 5.66421 6.33579 6 6.75 6H13.25C13.6642 6 14 5.66421 14 5.25V4.75C14 4.33579 13.6642 4 13.25 4H6.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 1C8.28365 1 6.5916 1.10551 4.93005 1.31046C3.80579 1.44913 3 2.41374 3 3.51661V16.75C3 17.9926 4.00736 19 5.25 19H14.75C15.9926 19 17 17.9926 17 16.75V3.51661C17 2.41374 16.1942 1.44913 15.07 1.31046C13.4084 1.10551 11.7163 1 10 1ZM5.99023 8.75C5.99023 8.33579 6.32602 8 6.74023 8H6.75023C7.16445 8 7.50023 8.33579 7.50023 8.75V8.76C7.50023 9.17421 7.16445 9.51 6.75023 9.51H6.74023C6.32602 9.51 5.99023 9.17421 5.99023 8.76V8.75ZM6.74023 10.1666C6.32602 10.1666 5.99023 10.5024 5.99023 10.9166V10.9266C5.99023 11.3408 6.32602 11.6766 6.74023 11.6766H6.75023C7.16445 11.6766 7.50023 11.3408 7.50023 10.9266V10.9166C7.50023 10.5024 7.16445 10.1666 6.75023 10.1666H6.74023ZM5.99023 13.0833C5.99023 12.669 6.32602 12.3333 6.74023 12.3333H6.75023C7.16445 12.3333 7.50023 12.669 7.50023 13.0833V13.0933C7.50023 13.5075 7.16445 13.8433 6.75023 13.8433H6.74023C6.32602 13.8433 5.99023 13.5075 5.99023 13.0933V13.0833ZM6.74023 14.4999C6.32602 14.4999 5.99023 14.8357 5.99023 15.2499V15.2599C5.99023 15.6741 6.32602 16.0099 6.74023 16.0099H6.75023C7.16445 16.0099 7.50023 15.6741 7.50023 15.2599V15.2499C7.50023 14.8357 7.16445 14.4999 6.75023 14.4999H6.74023ZM8.15691 8.75C8.15691 8.33579 8.49269 8 8.90691 8H8.91691C9.33112 8 9.66691 8.33579 9.66691 8.75V8.76C9.66691 9.17421 9.33112 9.51 8.91691 9.51H8.90691C8.49269 9.51 8.15691 9.17421 8.15691 8.76V8.75ZM8.90691 10.1666C8.49269 10.1666 8.15691 10.5024 8.15691 10.9166V10.9266C8.15691 11.3408 8.49269 11.6766 8.90691 11.6766H8.91691C9.33112 11.6766 9.66691 11.3408 9.66691 10.9266V10.9166C9.66691 10.5024 9.33112 10.1666 8.91691 10.1666H8.90691ZM8.15691 13.0833C8.15691 12.669 8.49269 12.3333 8.90691 12.3333H8.91691C9.33112 12.3333 9.66691 12.669 9.66691 13.0833V13.0933C9.66691 13.5075 9.33112 13.8433 8.91691 13.8433H8.90691C8.49269 13.8433 8.15691 13.5075 8.15691 13.0933V13.0833ZM8.90691 14.4999C8.49269 14.4999 8.15691 14.8357 8.15691 15.2499V15.2599C8.15691 15.6741 8.49269 16.0099 8.90691 16.0099H8.91691C9.33112 16.0099 9.66691 15.6741 9.66691 15.2599V15.2499C9.66691 14.8357 9.33112 14.4999 8.91691 14.4999H8.90691ZM10.3269 8.75C10.3269 8.33579 10.6627 8 11.0769 8H11.0869C11.5011 8 11.8369 8.33579 11.8369 8.75V8.76C11.8369 9.17421 11.5011 9.51 11.0869 9.51H11.0769C10.6627 9.51 10.3269 9.17421 10.3269 8.76V8.75ZM11.0769 10.1666C10.6627 10.1666 10.3269 10.5024 10.3269 10.9166V10.9266C10.3269 11.3408 10.6627 11.6766 11.0769 11.6766H11.0869C11.5011 11.6766 11.8369 11.3408 11.8369 10.9266V10.9166C11.8369 10.5024 11.5011 10.1666 11.0869 10.1666H11.0769ZM10.3269 13.0833C10.3269 12.669 10.6627 12.3333 11.0769 12.3333H11.0869C11.5011 12.3333 11.8369 12.669 11.8369 13.0833V13.0933C11.8369 13.5075 11.5011 13.8433 11.0869 13.8433H11.0769C10.6627 13.8433 10.3269 13.5075 10.3269 13.0933V13.0833ZM11.0769 14.4999C10.6627 14.4999 10.3269 14.8357 10.3269 15.2499V15.2599C10.3269 15.6741 10.6627 16.0099 11.0769 16.0099H11.0869C11.5011 16.0099 11.8369 15.6741 11.8369 15.2599V15.2499C11.8369 14.8357 11.5011 14.4999 11.0869 14.4999H11.0769ZM12.5002 8.75C12.5002 8.33579 12.836 8 13.2502 8H13.2602C13.6744 8 14.0102 8.33579 14.0102 8.75V8.76C14.0102 9.17421 13.6744 9.51 13.2602 9.51H13.2502C12.836 9.51 12.5002 9.17421 12.5002 8.76V8.75ZM13.2502 10.1666C12.836 10.1666 12.5002 10.5024 12.5002 10.9166V10.9266C12.5002 11.3408 12.836 11.6766 13.2502 11.6766H13.2602C13.6744 11.6766 14.0102 11.3408 14.0102 10.9266V10.9166C14.0102 10.5024 13.6744 10.1666 13.2602 10.1666H13.2502ZM13.2502 12.3334C13.6644 12.3334 14.0002 12.6692 14.0002 13.0834V15.25C14.0002 15.6643 13.6644 16 13.2502 16C12.836 16 12.5002 15.6643 12.5002 15.25V13.0834C12.5002 12.6692 12.836 12.3334 13.2502 12.3334ZM6.75 4C6.33579 4 6 4.33579 6 4.75V5.25C6 5.66421 6.33579 6 6.75 6H13.25C13.6642 6 14 5.66421 14 5.25V4.75C14 4.33579 13.6642 4 13.25 4H6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/calendar-days.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.25 12C5.25 11.5858 5.58579 11.25 6 11.25H6.01C6.42421 11.25 6.76 11.5858 6.76 12V12.01C6.76 12.4242 6.42421 12.76 6.01 12.76H6C5.58579 12.76 5.25 12.4242 5.25 12.01V12Z" fill="#0F172A"/>
    <path d="M6 13.25C5.58579 13.25 5.25 13.5858 5.25 14V14.01C5.25 14.4242 5.58579 14.76 6 14.76H6.01C6.42421 14.76 6.76 14.4242 6.76 14.01V14C6.76 13.5858 6.42421 13.25 6.01 13.25H6Z" fill="#0F172A"/>
    <path d="M7.25 12C7.25 11.5858 7.58579 11.25 8 11.25H8.01C8.42421 11.25 8.76 11.5858 8.76 12V12.01C8.76 12.4242 8.42421 12.76 8.01 12.76H8C7.58579 12.76 7.25 12.4242 7.25 12.01V12Z" fill="#0F172A"/>
    <path d="M8 13.25C7.58579 13.25 7.25 13.5858 7.25 14V14.01C7.25 14.4242 7.58579 14.76 8 14.76H8.01C8.42421 14.76 8.76 14.4242 8.76 14.01V14C8.76 13.5858 8.42421 13.25 8.01 13.25H8Z" fill="#0F172A"/>
    <path d="M9.25 10C9.25 9.58579 9.58579 9.25 10 9.25H10.01C10.4242 9.25 10.76 9.58579 10.76 10V10.01C10.76 10.4242 10.4242 10.76 10.01 10.76H10C9.58579 10.76 9.25 10.4242 9.25 10.01V10Z" fill="#0F172A"/>
    <path d="M10 11.25C9.58579 11.25 9.25 11.5858 9.25 12V12.01C9.25 12.4242 9.58579 12.76 10 12.76H10.01C10.4242 12.76 10.76 12.4242 10.76 12.01V12C10.76 11.5858 10.4242 11.25 10.01 11.25H10Z" fill="#0F172A"/>
    <path d="M9.25 14C9.25 13.5858 9.58579 13.25 10 13.25H10.01C10.4242 13.25 10.76 13.5858 10.76 14V14.01C10.76 14.4242 10.4242 14.76 10.01 14.76H10C9.58579 14.76 9.25 14.4242 9.25 14.01V14Z" fill="#0F172A"/>
    <path d="M12 9.25C11.5858 9.25 11.25 9.58579 11.25 10V10.01C11.25 10.4242 11.5858 10.76 12 10.76H12.01C12.4242 10.76 12.76 10.4242 12.76 10.01V10C12.76 9.58579 12.4242 9.25 12.01 9.25H12Z" fill="#0F172A"/>
    <path d="M11.25 12C11.25 11.5858 11.5858 11.25 12 11.25H12.01C12.4242 11.25 12.76 11.5858 12.76 12V12.01C12.76 12.4242 12.4242 12.76 12.01 12.76H12C11.5858 12.76 11.25 12.4242 11.25 12.01V12Z" fill="#0F172A"/>
    <path d="M12 13.25C11.5858 13.25 11.25 13.5858 11.25 14V14.01C11.25 14.4242 11.5858 14.76 12 14.76H12.01C12.4242 14.76 12.76 14.4242 12.76 14.01V14C12.76 13.5858 12.4242 13.25 12.01 13.25H12Z" fill="#0F172A"/>
    <path d="M13.25 10C13.25 9.58579 13.5858 9.25 14 9.25H14.01C14.4242 9.25 14.76 9.58579 14.76 10V10.01C14.76 10.4242 14.4242 10.76 14.01 10.76H14C13.5858 10.76 13.25 10.4242 13.25 10.01V10Z" fill="#0F172A"/>
    <path d="M14 11.25C13.5858 11.25 13.25 11.5858 13.25 12V12.01C13.25 12.4242 13.5858 12.76 14 12.76H14.01C14.4242 12.76 14.76 12.4242 14.76 12.01V12C14.76 11.5858 14.4242 11.25 14.01 11.25H14Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.75 2C6.16421 2 6.5 2.33579 6.5 2.75V4H13.5V2.75C13.5 2.33579 13.8358 2 14.25 2C14.6642 2 15 2.33579 15 2.75V4H15.25C16.7688 4 18 5.23122 18 6.75V15.25C18 16.7688 16.7688 18 15.25 18H4.75C3.23122 18 2 16.7688 2 15.25V6.75C2 5.23122 3.23122 4 4.75 4H5V2.75C5 2.33579 5.33579 2 5.75 2ZM4.75 7.5C4.05964 7.5 3.5 8.05964 3.5 8.75V15.25C3.5 15.9404 4.05964 16.5 4.75 16.5H15.25C15.9404 16.5 16.5 15.9404 16.5 15.25V8.75C16.5 8.05964 15.9404 7.5 15.25 7.5H4.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.25 12C5.25 11.5858 5.58579 11.25 6 11.25H6.01C6.42421 11.25 6.76 11.5858 6.76 12V12.01C6.76 12.4242 6.42421 12.76 6.01 12.76H6C5.58579 12.76 5.25 12.4242 5.25 12.01V12Z\" fill=\"#0F172A\"/>\n<path d=\"M6 13.25C5.58579 13.25 5.25 13.5858 5.25 14V14.01C5.25 14.4242 5.58579 14.76 6 14.76H6.01C6.42421 14.76 6.76 14.4242 6.76 14.01V14C6.76 13.5858 6.42421 13.25 6.01 13.25H6Z\" fill=\"#0F172A\"/>\n<path d=\"M7.25 12C7.25 11.5858 7.58579 11.25 8 11.25H8.01C8.42421 11.25 8.76 11.5858 8.76 12V12.01C8.76 12.4242 8.42421 12.76 8.01 12.76H8C7.58579 12.76 7.25 12.4242 7.25 12.01V12Z\" fill=\"#0F172A\"/>\n<path d=\"M8 13.25C7.58579 13.25 7.25 13.5858 7.25 14V14.01C7.25 14.4242 7.58579 14.76 8 14.76H8.01C8.42421 14.76 8.76 14.4242 8.76 14.01V14C8.76 13.5858 8.42421 13.25 8.01 13.25H8Z\" fill=\"#0F172A\"/>\n<path d=\"M9.25 10C9.25 9.58579 9.58579 9.25 10 9.25H10.01C10.4242 9.25 10.76 9.58579 10.76 10V10.01C10.76 10.4242 10.4242 10.76 10.01 10.76H10C9.58579 10.76 9.25 10.4242 9.25 10.01V10Z\" fill=\"#0F172A\"/>\n<path d=\"M10 11.25C9.58579 11.25 9.25 11.5858 9.25 12V12.01C9.25 12.4242 9.58579 12.76 10 12.76H10.01C10.4242 12.76 10.76 12.4242 10.76 12.01V12C10.76 11.5858 10.4242 11.25 10.01 11.25H10Z\" fill=\"#0F172A\"/>\n<path d=\"M9.25 14C9.25 13.5858 9.58579 13.25 10 13.25H10.01C10.4242 13.25 10.76 13.5858 10.76 14V14.01C10.76 14.4242 10.4242 14.76 10.01 14.76H10C9.58579 14.76 9.25 14.4242 9.25 14.01V14Z\" fill=\"#0F172A\"/>\n<path d=\"M12 9.25C11.5858 9.25 11.25 9.58579 11.25 10V10.01C11.25 10.4242 11.5858 10.76 12 10.76H12.01C12.4242 10.76 12.76 10.4242 12.76 10.01V10C12.76 9.58579 12.4242 9.25 12.01 9.25H12Z\" fill=\"#0F172A\"/>\n<path d=\"M11.25 12C11.25 11.5858 11.5858 11.25 12 11.25H12.01C12.4242 11.25 12.76 11.5858 12.76 12V12.01C12.76 12.4242 12.4242 12.76 12.01 12.76H12C11.5858 12.76 11.25 12.4242 11.25 12.01V12Z\" fill=\"#0F172A\"/>\n<path d=\"M12 13.25C11.5858 13.25 11.25 13.5858 11.25 14V14.01C11.25 14.4242 11.5858 14.76 12 14.76H12.01C12.4242 14.76 12.76 14.4242 12.76 14.01V14C12.76 13.5858 12.4242 13.25 12.01 13.25H12Z\" fill=\"#0F172A\"/>\n<path d=\"M13.25 10C13.25 9.58579 13.5858 9.25 14 9.25H14.01C14.4242 9.25 14.76 9.58579 14.76 10V10.01C14.76 10.4242 14.4242 10.76 14.01 10.76H14C13.5858 10.76 13.25 10.4242 13.25 10.01V10Z\" fill=\"#0F172A\"/>\n<path d=\"M14 11.25C13.5858 11.25 13.25 11.5858 13.25 12V12.01C13.25 12.4242 13.5858 12.76 14 12.76H14.01C14.4242 12.76 14.76 12.4242 14.76 12.01V12C14.76 11.5858 14.4242 11.25 14.01 11.25H14Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.75 2C6.16421 2 6.5 2.33579 6.5 2.75V4H13.5V2.75C13.5 2.33579 13.8358 2 14.25 2C14.6642 2 15 2.33579 15 2.75V4H15.25C16.7688 4 18 5.23122 18 6.75V15.25C18 16.7688 16.7688 18 15.25 18H4.75C3.23122 18 2 16.7688 2 15.25V6.75C2 5.23122 3.23122 4 4.75 4H5V2.75C5 2.33579 5.33579 2 5.75 2ZM4.75 7.5C4.05964 7.5 3.5 8.05964 3.5 8.75V15.25C3.5 15.9404 4.05964 16.5 4.75 16.5H15.25C15.9404 16.5 16.5 15.9404 16.5 15.25V8.75C16.5 8.05964 15.9404 7.5 15.25 7.5H4.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/calendar.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.75 2C6.16421 2 6.5 2.33579 6.5 2.75V4H13.5V2.75C13.5 2.33579 13.8358 2 14.25 2C14.6642 2 15 2.33579 15 2.75V4H15.25C16.7688 4 18 5.23122 18 6.75V15.25C18 16.7688 16.7688 18 15.25 18H4.75C3.23122 18 2 16.7688 2 15.25V6.75C2 5.23122 3.23122 4 4.75 4H5V2.75C5 2.33579 5.33579 2 5.75 2ZM4.75 7.5C4.05964 7.5 3.5 8.05964 3.5 8.75V15.25C3.5 15.9404 4.05964 16.5 4.75 16.5H15.25C15.9404 16.5 16.5 15.9404 16.5 15.25V8.75C16.5 8.05964 15.9404 7.5 15.25 7.5H4.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.75 2C6.16421 2 6.5 2.33579 6.5 2.75V4H13.5V2.75C13.5 2.33579 13.8358 2 14.25 2C14.6642 2 15 2.33579 15 2.75V4H15.25C16.7688 4 18 5.23122 18 6.75V15.25C18 16.7688 16.7688 18 15.25 18H4.75C3.23122 18 2 16.7688 2 15.25V6.75C2 5.23122 3.23122 4 4.75 4H5V2.75C5 2.33579 5.33579 2 5.75 2ZM4.75 7.5C4.05964 7.5 3.5 8.05964 3.5 8.75V15.25C3.5 15.9404 4.05964 16.5 4.75 16.5H15.25C15.9404 16.5 16.5 15.9404 16.5 15.25V8.75C16.5 8.05964 15.9404 7.5 15.25 7.5H4.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/camera.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 8C1 6.89543 1.89543 6 3 6H3.92963C4.59834 6 5.2228 5.6658 5.59373 5.1094L6.40627 3.8906C6.7772 3.3342 7.40166 3 8.07037 3H11.9296C12.5983 3 13.2228 3.3342 13.5937 3.8906L14.4063 5.1094C14.7772 5.6658 15.4017 6 16.0704 6H17C18.1046 6 19 6.89543 19 8V15C19 16.1046 18.1046 17 17 17H3C1.89543 17 1 16.1046 1 15V8ZM14.5 11C14.5 13.4853 12.4853 15.5 10 15.5C7.51472 15.5 5.5 13.4853 5.5 11C5.5 8.51472 7.51472 6.5 10 6.5C12.4853 6.5 14.5 8.51472 14.5 11ZM10 14C11.6569 14 13 12.6569 13 11C13 9.34315 11.6569 8 10 8C8.34315 8 7 9.34315 7 11C7 12.6569 8.34315 14 10 14Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 8C1 6.89543 1.89543 6 3 6H3.92963C4.59834 6 5.2228 5.6658 5.59373 5.1094L6.40627 3.8906C6.7772 3.3342 7.40166 3 8.07037 3H11.9296C12.5983 3 13.2228 3.3342 13.5937 3.8906L14.4063 5.1094C14.7772 5.6658 15.4017 6 16.0704 6H17C18.1046 6 19 6.89543 19 8V15C19 16.1046 18.1046 17 17 17H3C1.89543 17 1 16.1046 1 15V8ZM14.5 11C14.5 13.4853 12.4853 15.5 10 15.5C7.51472 15.5 5.5 13.4853 5.5 11C5.5 8.51472 7.51472 6.5 10 6.5C12.4853 6.5 14.5 8.51472 14.5 11ZM10 14C11.6569 14 13 12.6569 13 11C13 9.34315 11.6569 8 10 8C8.34315 8 7 9.34315 7 11C7 12.6569 8.34315 14 10 14Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chart-bar-square.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 2C3.00736 2 2 3.00736 2 4.25V15.75C2 16.9926 3.00736 18 4.25 18H15.75C16.9926 18 18 16.9926 18 15.75V4.25C18 3.00736 16.9926 2 15.75 2H4.25ZM15 5.75C15 5.33579 14.6642 5 14.25 5C13.8358 5 13.5 5.33579 13.5 5.75V14.25C13.5 14.6642 13.8358 15 14.25 15C14.6642 15 15 14.6642 15 14.25V5.75ZM6.5 11.75C6.5 11.3358 6.16421 11 5.75 11C5.33579 11 5 11.3358 5 11.75V14.25C5 14.6642 5.33579 15 5.75 15C6.16421 15 6.5 14.6642 6.5 14.25V11.75ZM8.5835 9C8.99771 9 9.3335 9.33579 9.3335 9.75V14.25C9.3335 14.6642 8.99771 15 8.5835 15C8.16928 15 7.8335 14.6642 7.8335 14.25V9.75C7.8335 9.33579 8.16928 9 8.5835 9ZM12.1636 7.75C12.1636 7.33579 11.8278 7 11.4136 7C10.9994 7 10.6636 7.33579 10.6636 7.75V14.25C10.6636 14.6642 10.9994 15 11.4136 15C11.8278 15 12.1636 14.6642 12.1636 14.25V7.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.25 2C3.00736 2 2 3.00736 2 4.25V15.75C2 16.9926 3.00736 18 4.25 18H15.75C16.9926 18 18 16.9926 18 15.75V4.25C18 3.00736 16.9926 2 15.75 2H4.25ZM15 5.75C15 5.33579 14.6642 5 14.25 5C13.8358 5 13.5 5.33579 13.5 5.75V14.25C13.5 14.6642 13.8358 15 14.25 15C14.6642 15 15 14.6642 15 14.25V5.75ZM6.5 11.75C6.5 11.3358 6.16421 11 5.75 11C5.33579 11 5 11.3358 5 11.75V14.25C5 14.6642 5.33579 15 5.75 15C6.16421 15 6.5 14.6642 6.5 14.25V11.75ZM8.5835 9C8.99771 9 9.3335 9.33579 9.3335 9.75V14.25C9.3335 14.6642 8.99771 15 8.5835 15C8.16928 15 7.8335 14.6642 7.8335 14.25V9.75C7.8335 9.33579 8.16928 9 8.5835 9ZM12.1636 7.75C12.1636 7.33579 11.8278 7 11.4136 7C10.9994 7 10.6636 7.33579 10.6636 7.75V14.25C10.6636 14.6642 10.9994 15 11.4136 15C11.8278 15 12.1636 14.6642 12.1636 14.25V7.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chart-bar.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M15.5 2C14.6716 2 14 2.67157 14 3.5V16.5C14 17.3284 14.6716 18 15.5 18H16.5C17.3284 18 18 17.3284 18 16.5V3.5C18 2.67157 17.3284 2 16.5 2H15.5Z" fill="#0F172A"/>
    <path d="M9.5 6C8.67157 6 8 6.67157 8 7.5V16.5C8 17.3284 8.67157 18 9.5 18H10.5C11.3284 18 12 17.3284 12 16.5V7.5C12 6.67157 11.3284 6 10.5 6H9.5Z" fill="#0F172A"/>
    <path d="M3.5 10C2.67157 10 2 10.6716 2 11.5V16.5C2 17.3284 2.67157 18 3.5 18H4.5C5.32843 18 6 17.3284 6 16.5V11.5C6 10.6716 5.32843 10 4.5 10H3.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15.5 2C14.6716 2 14 2.67157 14 3.5V16.5C14 17.3284 14.6716 18 15.5 18H16.5C17.3284 18 18 17.3284 18 16.5V3.5C18 2.67157 17.3284 2 16.5 2H15.5Z\" fill=\"#0F172A\"/>\n<path d=\"M9.5 6C8.67157 6 8 6.67157 8 7.5V16.5C8 17.3284 8.67157 18 9.5 18H10.5C11.3284 18 12 17.3284 12 16.5V7.5C12 6.67157 11.3284 6 10.5 6H9.5Z\" fill=\"#0F172A\"/>\n<path d=\"M3.5 10C2.67157 10 2 10.6716 2 11.5V16.5C2 17.3284 2.67157 18 3.5 18H4.5C5.32843 18 6 17.3284 6 16.5V11.5C6 10.6716 5.32843 10 4.5 10H3.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chart-pie.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 8.99979C11.4477 8.99979 11 8.55207 11 7.99979V2.99979C11 2.4475 11.4503 1.99229 11.997 2.07025C15.0651 2.50777 17.492 4.93467 17.9295 8.00276C18.0075 8.54951 17.5523 8.99979 17 8.99979H12Z" fill="#0F172A"/>
    <path d="M8.00297 4.07025C8.54972 3.99229 9 4.4475 9 4.99979V9.99979C9 10.5521 9.44772 10.9998 10 10.9998H15C15.5523 10.9998 16.0075 11.4501 15.9295 11.9968C15.4456 15.3906 12.5275 17.9998 9 17.9998C5.13401 17.9998 2 14.8658 2 10.9998C2 7.47229 4.60923 4.5542 8.00297 4.07025Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12 8.99979C11.4477 8.99979 11 8.55207 11 7.99979V2.99979C11 2.4475 11.4503 1.99229 11.997 2.07025C15.0651 2.50777 17.492 4.93467 17.9295 8.00276C18.0075 8.54951 17.5523 8.99979 17 8.99979H12Z\" fill=\"#0F172A\"/>\n<path d=\"M8.00297 4.07025C8.54972 3.99229 9 4.4475 9 4.99979V9.99979C9 10.5521 9.44772 10.9998 10 10.9998H15C15.5523 10.9998 16.0075 11.4501 15.9295 11.9968C15.4456 15.3906 12.5275 17.9998 9 17.9998C5.13401 17.9998 2 14.8658 2 10.9998C2 7.47229 4.60923 4.5542 8.00297 4.07025Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chat-bubble-bottom-center-text.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 2C7.76407 2 5.56943 2.17905 3.42976 2.52374C1.99339 2.75513 1 4.01325 1 5.42588V10.5741C1 11.9867 1.99338 13.2449 3.42976 13.4763C4.59764 13.6644 5.78193 13.8032 6.9804 13.8905C7.2601 13.9108 7.5012 14.0703 7.62247 14.3035L9.33459 17.596C9.46367 17.8443 9.7202 18 10 18C10.2798 18 10.5363 17.8443 10.6654 17.596L12.3775 14.3035C12.4988 14.0703 12.7399 13.9108 13.0196 13.8905C14.2181 13.8032 15.4024 13.6644 16.5702 13.4763C18.0066 13.2449 19 11.9867 19 10.5741V5.42588C19 4.01325 18.0066 2.75513 16.5702 2.52374C14.4306 2.17905 12.2359 2 10 2ZM6.75 6C6.33579 6 6 6.33579 6 6.75C6 7.16421 6.33579 7.5 6.75 7.5H13.25C13.6642 7.5 14 7.16421 14 6.75C14 6.33579 13.6642 6 13.25 6H6.75ZM6.75 8.5C6.33579 8.5 6 8.83579 6 9.25C6 9.66421 6.33579 10 6.75 10H10.25C10.6642 10 11 9.66421 11 9.25C11 8.83579 10.6642 8.5 10.25 8.5H6.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 2C7.76407 2 5.56943 2.17905 3.42976 2.52374C1.99339 2.75513 1 4.01325 1 5.42588V10.5741C1 11.9867 1.99338 13.2449 3.42976 13.4763C4.59764 13.6644 5.78193 13.8032 6.9804 13.8905C7.2601 13.9108 7.5012 14.0703 7.62247 14.3035L9.33459 17.596C9.46367 17.8443 9.7202 18 10 18C10.2798 18 10.5363 17.8443 10.6654 17.596L12.3775 14.3035C12.4988 14.0703 12.7399 13.9108 13.0196 13.8905C14.2181 13.8032 15.4024 13.6644 16.5702 13.4763C18.0066 13.2449 19 11.9867 19 10.5741V5.42588C19 4.01325 18.0066 2.75513 16.5702 2.52374C14.4306 2.17905 12.2359 2 10 2ZM6.75 6C6.33579 6 6 6.33579 6 6.75C6 7.16421 6.33579 7.5 6.75 7.5H13.25C13.6642 7.5 14 7.16421 14 6.75C14 6.33579 13.6642 6 13.25 6H6.75ZM6.75 8.5C6.33579 8.5 6 8.83579 6 9.25C6 9.66421 6.33579 10 6.75 10H10.25C10.6642 10 11 9.66421 11 9.25C11 8.83579 10.6642 8.5 10.25 8.5H6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chat-bubble-bottom-center.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.42976 2.52374C5.56943 2.17905 7.76407 2 10 2C12.2359 2 14.4306 2.17905 16.5702 2.52374C18.0066 2.75513 19 4.01325 19 5.42588V10.5741C19 11.9867 18.0066 13.2449 16.5702 13.4763C15.4024 13.6644 14.2181 13.8032 13.0196 13.8905C12.7399 13.9108 12.4988 14.0703 12.3775 14.3035L10.6654 17.596C10.5363 17.8443 10.2798 18 10 18C9.7202 18 9.46367 17.8443 9.33459 17.596L7.62247 14.3035C7.5012 14.0703 7.2601 13.9108 6.9804 13.8905C5.78193 13.8032 4.59764 13.6644 3.42976 13.4763C1.99338 13.2449 1 11.9867 1 10.5741V5.42588C1 4.01325 1.99339 2.75513 3.42976 2.52374Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.42976 2.52374C5.56943 2.17905 7.76407 2 10 2C12.2359 2 14.4306 2.17905 16.5702 2.52374C18.0066 2.75513 19 4.01325 19 5.42588V10.5741C19 11.9867 18.0066 13.2449 16.5702 13.4763C15.4024 13.6644 14.2181 13.8032 13.0196 13.8905C12.7399 13.9108 12.4988 14.0703 12.3775 14.3035L10.6654 17.596C10.5363 17.8443 10.2798 18 10 18C9.7202 18 9.46367 17.8443 9.33459 17.596L7.62247 14.3035C7.5012 14.0703 7.2601 13.9108 6.9804 13.8905C5.78193 13.8032 4.59764 13.6644 3.42976 13.4763C1.99338 13.2449 1 11.9867 1 10.5741V5.42588C1 4.01325 1.99339 2.75513 3.42976 2.52374Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chat-bubble-left-ellipsis.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 2C7.76407 2 5.56943 2.17905 3.42976 2.52374C1.99339 2.75513 1 4.01325 1 5.42588V10.5741C1 11.9868 1.99339 13.2449 3.42976 13.4763C4.27814 13.6129 5.13517 13.7236 6 13.8073V17.25C6 17.5533 6.18273 17.8268 6.46299 17.9429C6.74324 18.059 7.06583 17.9948 7.28033 17.7803L10.8594 14.2013C10.9953 14.0654 11.1832 13.9837 11.3869 13.977C13.1447 13.9185 14.8747 13.7494 16.5702 13.4763C18.0066 13.2449 19 11.9867 19 10.5741V5.42588C19 4.01325 18.0066 2.75513 16.5702 2.52374C14.4306 2.17905 12.2359 2 10 2ZM10 9C10.5523 9 11 8.55228 11 8C11 7.44772 10.5523 7 10 7C9.44771 7 9 7.44772 9 8C9 8.55228 9.44771 9 10 9ZM8 8C8 8.55228 7.55228 9 7 9C6.44772 9 6 8.55228 6 8C6 7.44772 6.44772 7 7 7C7.55228 7 8 7.44772 8 8ZM13 9C13.5523 9 14 8.55228 14 8C14 7.44772 13.5523 7 13 7C12.4477 7 12 7.44772 12 8C12 8.55228 12.4477 9 13 9Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 2C7.76407 2 5.56943 2.17905 3.42976 2.52374C1.99339 2.75513 1 4.01325 1 5.42588V10.5741C1 11.9868 1.99339 13.2449 3.42976 13.4763C4.27814 13.6129 5.13517 13.7236 6 13.8073V17.25C6 17.5533 6.18273 17.8268 6.46299 17.9429C6.74324 18.059 7.06583 17.9948 7.28033 17.7803L10.8594 14.2013C10.9953 14.0654 11.1832 13.9837 11.3869 13.977C13.1447 13.9185 14.8747 13.7494 16.5702 13.4763C18.0066 13.2449 19 11.9867 19 10.5741V5.42588C19 4.01325 18.0066 2.75513 16.5702 2.52374C14.4306 2.17905 12.2359 2 10 2ZM10 9C10.5523 9 11 8.55228 11 8C11 7.44772 10.5523 7 10 7C9.44771 7 9 7.44772 9 8C9 8.55228 9.44771 9 10 9ZM8 8C8 8.55228 7.55228 9 7 9C6.44772 9 6 8.55228 6 8C6 7.44772 6.44772 7 7 7C7.55228 7 8 7.44772 8 8ZM13 9C13.5523 9 14 8.55228 14 8C14 7.44772 13.5523 7 13 7C12.4477 7 12 7.44772 12 8C12 8.55228 12.4477 9 13 9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chat-bubble-left-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.50491 2.36515C5.30269 2.1243 7.13702 2 9 2C10.863 2 12.6973 2.1243 14.4951 2.36515C15.7418 2.53218 16.6741 3.4733 16.9298 4.6333C16.7425 4.59823 16.5501 4.57486 16.3531 4.5641C15.5739 4.52154 14.7894 4.5 14 4.5C13.2106 4.5 12.4261 4.52154 11.6469 4.5641C9.22913 4.69615 7.5 6.72739 7.5 8.99794V11.2377C7.5 12.6511 8.17008 13.9726 9.26042 14.8002L6.28033 17.7803C6.06583 17.9948 5.74324 18.059 5.46299 17.9429C5.18273 17.8268 5 17.5533 5 17.25V13.8073C4.49897 13.7588 4.00056 13.7013 3.50493 13.6349C2.0334 13.4377 1 12.1622 1 10.7211V5.27886C1 3.83785 2.03337 2.5623 3.50491 2.36515Z" fill="#0F172A"/>
    <path d="M14 6C13.2379 6 12.4807 6.0208 11.7287 6.06187C10.1572 6.1477 9 7.47212 9 8.99794V11.2377C9 12.7565 10.1467 14.077 11.7102 14.1726C11.9238 14.1857 12.1379 14.1971 12.3524 14.2068C12.5526 14.216 12.7366 14.2973 12.8702 14.4309L15.2197 16.7803C15.4342 16.9948 15.7568 17.059 16.037 16.9429C16.3173 16.8268 16.5 16.5533 16.5 16.25V14.1795C17.9525 13.9847 19 12.7165 19 11.2648V8.99794C19 7.47212 17.8428 6.1477 16.2713 6.06187C15.5193 6.0208 14.7621 6 14 6Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.50491 2.36515C5.30269 2.1243 7.13702 2 9 2C10.863 2 12.6973 2.1243 14.4951 2.36515C15.7418 2.53218 16.6741 3.4733 16.9298 4.6333C16.7425 4.59823 16.5501 4.57486 16.3531 4.5641C15.5739 4.52154 14.7894 4.5 14 4.5C13.2106 4.5 12.4261 4.52154 11.6469 4.5641C9.22913 4.69615 7.5 6.72739 7.5 8.99794V11.2377C7.5 12.6511 8.17008 13.9726 9.26042 14.8002L6.28033 17.7803C6.06583 17.9948 5.74324 18.059 5.46299 17.9429C5.18273 17.8268 5 17.5533 5 17.25V13.8073C4.49897 13.7588 4.00056 13.7013 3.50493 13.6349C2.0334 13.4377 1 12.1622 1 10.7211V5.27886C1 3.83785 2.03337 2.5623 3.50491 2.36515Z\" fill=\"#0F172A\"/>\n<path d=\"M14 6C13.2379 6 12.4807 6.0208 11.7287 6.06187C10.1572 6.1477 9 7.47212 9 8.99794V11.2377C9 12.7565 10.1467 14.077 11.7102 14.1726C11.9238 14.1857 12.1379 14.1971 12.3524 14.2068C12.5526 14.216 12.7366 14.2973 12.8702 14.4309L15.2197 16.7803C15.4342 16.9948 15.7568 17.059 16.037 16.9429C16.3173 16.8268 16.5 16.5533 16.5 16.25V14.1795C17.9525 13.9847 19 12.7165 19 11.2648V8.99794C19 7.47212 17.8428 6.1477 16.2713 6.06187C15.5193 6.0208 14.7621 6 14 6Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chat-bubble-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.42976 2.52374C5.56943 2.17905 7.76407 2 10 2C12.2359 2 14.4306 2.17905 16.5702 2.52374C18.0066 2.75513 19 4.01325 19 5.42588V10.5741C19 11.9867 18.0066 13.2449 16.5702 13.4763C14.8747 13.7494 13.1447 13.9185 11.3869 13.977C11.1832 13.9837 10.9953 14.0654 10.8594 14.2013L7.28033 17.7803C7.06583 17.9948 6.74324 18.059 6.46299 17.9429C6.18273 17.8268 6 17.5533 6 17.25V13.8073C5.13517 13.7236 4.27814 13.6129 3.42976 13.4763C1.99339 13.2449 1 11.9868 1 10.5741V5.42588C1 4.01325 1.99339 2.75513 3.42976 2.52374Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.42976 2.52374C5.56943 2.17905 7.76407 2 10 2C12.2359 2 14.4306 2.17905 16.5702 2.52374C18.0066 2.75513 19 4.01325 19 5.42588V10.5741C19 11.9867 18.0066 13.2449 16.5702 13.4763C14.8747 13.7494 13.1447 13.9185 11.3869 13.977C11.1832 13.9837 10.9953 14.0654 10.8594 14.2013L7.28033 17.7803C7.06583 17.9948 6.74324 18.059 6.46299 17.9429C6.18273 17.8268 6 17.5533 6 17.25V13.8073C5.13517 13.7236 4.27814 13.6129 3.42976 13.4763C1.99339 13.2449 1 11.9868 1 10.5741V5.42588C1 4.01325 1.99339 2.75513 3.42976 2.52374Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chat-bubble-oval-left-ellipsis.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 3C5.69006 3 2 6.0334 2 10C2 12.0244 2.97849 13.8253 4.49899 15.0848C4.48371 15.7294 4.29476 16.329 3.97742 16.8409C3.83914 17.064 3.82753 17.3431 3.9468 17.5769C4.06608 17.8107 4.29888 17.9651 4.56065 17.9841C4.70585 17.9947 4.85237 18 5 18C6.3037 18 7.51177 17.5834 8.49617 16.8766C8.98381 16.9577 9.48658 17 10 17C14.3099 17 18 13.9666 18 10C18 6.0334 14.3099 3 10 3ZM10 11C10.5523 11 11 10.5523 11 10C11 9.44772 10.5523 9 10 9C9.44772 9 9 9.44772 9 10C9 10.5523 9.44772 11 10 11ZM8 10C8 10.5523 7.55228 11 7 11C6.44772 11 6 10.5523 6 10C6 9.44772 6.44772 9 7 9C7.55228 9 8 9.44772 8 10ZM13 11C13.5523 11 14 10.5523 14 10C14 9.44772 13.5523 9 13 9C12.4477 9 12 9.44772 12 10C12 10.5523 12.4477 11 13 11Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 3C5.69006 3 2 6.0334 2 10C2 12.0244 2.97849 13.8253 4.49899 15.0848C4.48371 15.7294 4.29476 16.329 3.97742 16.8409C3.83914 17.064 3.82753 17.3431 3.9468 17.5769C4.06608 17.8107 4.29888 17.9651 4.56065 17.9841C4.70585 17.9947 4.85237 18 5 18C6.3037 18 7.51177 17.5834 8.49617 16.8766C8.98381 16.9577 9.48658 17 10 17C14.3099 17 18 13.9666 18 10C18 6.0334 14.3099 3 10 3ZM10 11C10.5523 11 11 10.5523 11 10C11 9.44772 10.5523 9 10 9C9.44772 9 9 9.44772 9 10C9 10.5523 9.44772 11 10 11ZM8 10C8 10.5523 7.55228 11 7 11C6.44772 11 6 10.5523 6 10C6 9.44772 6.44772 9 7 9C7.55228 9 8 9.44772 8 10ZM13 11C13.5523 11 14 10.5523 14 10C14 9.44772 13.5523 9 13 9C12.4477 9 12 9.44772 12 10C12 10.5523 12.4477 11 13 11Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chat-bubble-oval-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 6.0334 5.69006 3 10 3C14.3099 3 18 6.0334 18 10C18 13.9666 14.3099 17 10 17C9.48658 17 8.98381 16.9577 8.49617 16.8766C7.51177 17.5834 6.3037 18 5 18C4.85237 18 4.70585 17.9947 4.56065 17.9841C4.29888 17.9651 4.06608 17.8107 3.9468 17.5769C3.82753 17.3431 3.83914 17.064 3.97742 16.8409C4.29476 16.329 4.48371 15.7294 4.49899 15.0848C2.97849 13.8253 2 12.0244 2 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 10C2 6.0334 5.69006 3 10 3C14.3099 3 18 6.0334 18 10C18 13.9666 14.3099 17 10 17C9.48658 17 8.98381 16.9577 8.49617 16.8766C7.51177 17.5834 6.3037 18 5 18C4.85237 18 4.70585 17.9947 4.56065 17.9841C4.29888 17.9651 4.06608 17.8107 3.9468 17.5769C3.82753 17.3431 3.83914 17.064 3.97742 16.8409C4.29476 16.329 4.48371 15.7294 4.49899 15.0848C2.97849 13.8253 2 12.0244 2 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/check-badge.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.4032 12.6523C17.353 12.1487 18 11.1499 18 10C18 8.85007 17.353 7.85126 16.4032 7.34771C16.7188 6.32002 16.47 5.15625 15.6569 4.34312C14.8437 3.53 13.68 3.28122 12.6523 3.59679C12.1487 2.64698 11.1499 2 10 2C8.85007 2 7.85125 2.64699 7.3477 3.59681C6.32002 3.28126 5.15627 3.53004 4.34315 4.34316C3.53003 5.15628 3.28125 6.32003 3.5968 7.34771C2.64699 7.85126 2 8.85007 2 10C2 11.1499 2.64699 12.1487 3.59681 12.6523C3.28124 13.68 3.53001 14.8437 4.34314 15.6569C5.15627 16.47 6.32003 16.7188 7.34771 16.4032C7.85126 17.353 8.85007 18 10 18C11.1499 18 12.1488 17.353 12.6523 16.4032C13.68 16.7187 14.8437 16.47 15.6569 15.6568C16.47 14.8437 16.7188 13.68 16.4032 12.6523ZM13.8566 8.19113C14.1002 7.85614 14.0261 7.38708 13.6911 7.14345C13.3561 6.89982 12.8871 6.97388 12.6434 7.30887L9.15969 12.099L7.28033 10.2197C6.98744 9.92678 6.51256 9.92678 6.21967 10.2197C5.92678 10.5126 5.92678 10.9874 6.21967 11.2803L8.71967 13.7803C8.87477 13.9354 9.08999 14.0149 9.30867 13.9977C9.52734 13.9805 9.72754 13.8685 9.85655 13.6911L13.8566 8.19113Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M16.4032 12.6523C17.353 12.1487 18 11.1499 18 10C18 8.85007 17.353 7.85126 16.4032 7.34771C16.7188 6.32002 16.47 5.15625 15.6569 4.34312C14.8437 3.53 13.68 3.28122 12.6523 3.59679C12.1487 2.64698 11.1499 2 10 2C8.85007 2 7.85125 2.64699 7.3477 3.59681C6.32002 3.28126 5.15627 3.53004 4.34315 4.34316C3.53003 5.15628 3.28125 6.32003 3.5968 7.34771C2.64699 7.85126 2 8.85007 2 10C2 11.1499 2.64699 12.1487 3.59681 12.6523C3.28124 13.68 3.53001 14.8437 4.34314 15.6569C5.15627 16.47 6.32003 16.7188 7.34771 16.4032C7.85126 17.353 8.85007 18 10 18C11.1499 18 12.1488 17.353 12.6523 16.4032C13.68 16.7187 14.8437 16.47 15.6569 15.6568C16.47 14.8437 16.7188 13.68 16.4032 12.6523ZM13.8566 8.19113C14.1002 7.85614 14.0261 7.38708 13.6911 7.14345C13.3561 6.89982 12.8871 6.97388 12.6434 7.30887L9.15969 12.099L7.28033 10.2197C6.98744 9.92678 6.51256 9.92678 6.21967 10.2197C5.92678 10.5126 5.92678 10.9874 6.21967 11.2803L8.71967 13.7803C8.87477 13.9354 9.08999 14.0149 9.30867 13.9977C9.52734 13.9805 9.72754 13.8685 9.85655 13.6911L13.8566 8.19113Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/check-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM13.8566 8.19113C14.1002 7.85614 14.0261 7.38708 13.6911 7.14345C13.3561 6.89982 12.8871 6.97388 12.6434 7.30887L9.15969 12.099L7.28033 10.2197C6.98744 9.92678 6.51256 9.92678 6.21967 10.2197C5.92678 10.5126 5.92678 10.9874 6.21967 11.2803L8.71967 13.7803C8.87477 13.9354 9.08999 14.0149 9.30867 13.9977C9.52734 13.9805 9.72754 13.8685 9.85655 13.6911L13.8566 8.19113Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM13.8566 8.19113C14.1002 7.85614 14.0261 7.38708 13.6911 7.14345C13.3561 6.89982 12.8871 6.97388 12.6434 7.30887L9.15969 12.099L7.28033 10.2197C6.98744 9.92678 6.51256 9.92678 6.21967 10.2197C5.92678 10.5126 5.92678 10.9874 6.21967 11.2803L8.71967 13.7803C8.87477 13.9354 9.08999 14.0149 9.30867 13.9977C9.52734 13.9805 9.72754 13.8685 9.85655 13.6911L13.8566 8.19113Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/check.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.7045 4.15347C17.034 4.4045 17.0976 4.87509 16.8466 5.20457L8.84657 15.7046C8.71541 15.8767 8.51627 15.9838 8.30033 15.9983C8.08439 16.0129 7.87271 15.9334 7.71967 15.7804L3.21967 11.2804C2.92678 10.9875 2.92678 10.5126 3.21967 10.2197C3.51256 9.92682 3.98744 9.92682 4.28033 10.2197L8.17351 14.1129L15.6534 4.29551C15.9045 3.96603 16.3751 3.90243 16.7045 4.15347Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M16.7045 4.15347C17.034 4.4045 17.0976 4.87509 16.8466 5.20457L8.84657 15.7046C8.71541 15.8767 8.51627 15.9838 8.30033 15.9983C8.08439 16.0129 7.87271 15.9334 7.71967 15.7804L3.21967 11.2804C2.92678 10.9875 2.92678 10.5126 3.21967 10.2197C3.51256 9.92682 3.98744 9.92682 4.28033 10.2197L8.17351 14.1129L15.6534 4.29551C15.9045 3.96603 16.3751 3.90243 16.7045 4.15347Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chevron-double-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.7698 4.20938C15.0684 4.49647 15.0777 4.97125 14.7906 5.26983L10.5406 9.76983C10.3992 9.91689 10.204 10 10 10C9.79599 10 9.60078 9.91689 9.45937 9.76983L5.20937 5.26983C4.92228 4.97125 4.93159 4.49647 5.23017 4.20938C5.52875 3.92228 6.00353 3.93159 6.29062 4.23017L10 8.16792L13.7094 4.23017C13.9965 3.93159 14.4713 3.92228 14.7698 4.20938ZM14.7698 10.2094C15.0684 10.4965 15.0777 10.9713 14.7906 11.2698L10.5406 15.7698C10.3992 15.9169 10.204 16 10 16C9.79599 16 9.60078 15.9169 9.45937 15.7698L5.20937 11.2698C4.92228 10.9713 4.93159 10.4965 5.23017 10.2094C5.52875 9.92228 6.00353 9.93159 6.29062 10.2302L10 14.1679L13.7094 10.2302C13.9965 9.93159 14.4713 9.92228 14.7698 10.2094Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.7698 4.20938C15.0684 4.49647 15.0777 4.97125 14.7906 5.26983L10.5406 9.76983C10.3992 9.91689 10.204 10 10 10C9.79599 10 9.60078 9.91689 9.45937 9.76983L5.20937 5.26983C4.92228 4.97125 4.93159 4.49647 5.23017 4.20938C5.52875 3.92228 6.00353 3.93159 6.29062 4.23017L10 8.16792L13.7094 4.23017C13.9965 3.93159 14.4713 3.92228 14.7698 4.20938ZM14.7698 10.2094C15.0684 10.4965 15.0777 10.9713 14.7906 11.2698L10.5406 15.7698C10.3992 15.9169 10.204 16 10 16C9.79599 16 9.60078 15.9169 9.45937 15.7698L5.20937 11.2698C4.92228 10.9713 4.93159 10.4965 5.23017 10.2094C5.52875 9.92228 6.00353 9.93159 6.29062 10.2302L10 14.1679L13.7094 10.2302C13.9965 9.93159 14.4713 9.92228 14.7698 10.2094Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chevron-double-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.7906 14.7698C15.5035 15.0684 15.0287 15.0777 14.7302 14.7906L10.2302 10.5406C10.0831 10.3992 10 10.204 10 10C10 9.79599 10.0831 9.60078 10.2302 9.45938L14.7302 5.20937C15.0287 4.92228 15.5035 4.93159 15.7906 5.23017C16.0777 5.52875 16.0684 6.00353 15.7698 6.29062L11.8321 10L15.7698 13.7094C16.0684 13.9965 16.0777 14.4713 15.7906 14.7698ZM9.79062 14.7698C9.50353 15.0684 9.02875 15.0777 8.73017 14.7906L4.23017 10.5406C4.08311 10.3992 4 10.204 4 10C4 9.79599 4.08311 9.60078 4.23017 9.45938L8.73017 5.20938C9.02875 4.92228 9.50353 4.93159 9.79062 5.23017C10.0777 5.52875 10.0684 6.00353 9.76983 6.29062L5.83208 10L9.76983 13.7094C10.0684 13.9965 10.0777 14.4713 9.79062 14.7698Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.7906 14.7698C15.5035 15.0684 15.0287 15.0777 14.7302 14.7906L10.2302 10.5406C10.0831 10.3992 10 10.204 10 10C10 9.79599 10.0831 9.60078 10.2302 9.45938L14.7302 5.20937C15.0287 4.92228 15.5035 4.93159 15.7906 5.23017C16.0777 5.52875 16.0684 6.00353 15.7698 6.29062L11.8321 10L15.7698 13.7094C16.0684 13.9965 16.0777 14.4713 15.7906 14.7698ZM9.79062 14.7698C9.50353 15.0684 9.02875 15.0777 8.73017 14.7906L4.23017 10.5406C4.08311 10.3992 4 10.204 4 10C4 9.79599 4.08311 9.60078 4.23017 9.45938L8.73017 5.20938C9.02875 4.92228 9.50353 4.93159 9.79062 5.23017C10.0777 5.52875 10.0684 6.00353 9.76983 6.29062L5.83208 10L9.76983 13.7094C10.0684 13.9965 10.0777 14.4713 9.79062 14.7698Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chevron-double-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.2094 14.7698C9.92228 14.4713 9.93159 13.9965 10.2302 13.7094L14.1679 10L10.2302 6.29062C9.93159 6.00353 9.92228 5.52875 10.2094 5.23017C10.4965 4.93159 10.9713 4.92228 11.2698 5.20937L15.7698 9.45937C15.9169 9.60078 16 9.79599 16 10C16 10.204 15.9169 10.3992 15.7698 10.5406L11.2698 14.7906C10.9713 15.0777 10.4965 15.0684 10.2094 14.7698Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.20938 14.7698C3.92228 14.4713 3.93159 13.9965 4.23017 13.7094L8.16792 10L4.23017 6.29062C3.93159 6.00353 3.92228 5.52875 4.20938 5.23017C4.49647 4.93159 4.97125 4.92228 5.26983 5.20937L9.76983 9.45937C9.91689 9.60078 10 9.79599 10 10C10 10.204 9.91689 10.3992 9.76983 10.5406L5.26983 14.7906C4.97125 15.0777 4.49647 15.0684 4.20938 14.7698Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.2094 14.7698C9.92228 14.4713 9.93159 13.9965 10.2302 13.7094L14.1679 10L10.2302 6.29062C9.93159 6.00353 9.92228 5.52875 10.2094 5.23017C10.4965 4.93159 10.9713 4.92228 11.2698 5.20937L15.7698 9.45937C15.9169 9.60078 16 9.79599 16 10C16 10.204 15.9169 10.3992 15.7698 10.5406L11.2698 14.7906C10.9713 15.0777 10.4965 15.0684 10.2094 14.7698Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.20938 14.7698C3.92228 14.4713 3.93159 13.9965 4.23017 13.7094L8.16792 10L4.23017 6.29062C3.93159 6.00353 3.92228 5.52875 4.20938 5.23017C4.49647 4.93159 4.97125 4.92228 5.26983 5.20937L9.76983 9.45937C9.91689 9.60078 10 9.79599 10 10C10 10.204 9.91689 10.3992 9.76983 10.5406L5.26983 14.7906C4.97125 15.0777 4.49647 15.0684 4.20938 14.7698Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chevron-double-up.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.23017 15.7906C4.93159 15.5035 4.92228 15.0287 5.20938 14.7302L9.45938 10.2302C9.60078 10.0831 9.79599 10 10 10C10.204 10 10.3992 10.0831 10.5406 10.2302L14.7906 14.7302C15.0777 15.0287 15.0684 15.5035 14.7698 15.7906C14.4713 16.0777 13.9965 16.0684 13.7094 15.7698L10 11.8321L6.29063 15.7698C6.00353 16.0684 5.52875 16.0777 5.23017 15.7906ZM5.23017 9.79062C4.93159 9.50353 4.92228 9.02875 5.20938 8.73017L9.45938 4.23017C9.60078 4.08311 9.79599 4 10 4C10.204 4 10.3992 4.08311 10.5406 4.23017L14.7906 8.73017C15.0777 9.02875 15.0684 9.50353 14.7698 9.79062C14.4713 10.0777 13.9965 10.0684 13.7094 9.76983L10 5.83208L6.29063 9.76983C6.00353 10.0684 5.52875 10.0777 5.23017 9.79062Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.23017 15.7906C4.93159 15.5035 4.92228 15.0287 5.20938 14.7302L9.45938 10.2302C9.60078 10.0831 9.79599 10 10 10C10.204 10 10.3992 10.0831 10.5406 10.2302L14.7906 14.7302C15.0777 15.0287 15.0684 15.5035 14.7698 15.7906C14.4713 16.0777 13.9965 16.0684 13.7094 15.7698L10 11.8321L6.29063 15.7698C6.00353 16.0684 5.52875 16.0777 5.23017 15.7906ZM5.23017 9.79062C4.93159 9.50353 4.92228 9.02875 5.20938 8.73017L9.45938 4.23017C9.60078 4.08311 9.79599 4 10 4C10.204 4 10.3992 4.08311 10.5406 4.23017L14.7906 8.73017C15.0777 9.02875 15.0684 9.50353 14.7698 9.79062C14.4713 10.0777 13.9965 10.0684 13.7094 9.76983L10 5.83208L6.29063 9.76983C6.00353 10.0684 5.52875 10.0777 5.23017 9.79062Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chevron-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.23017 7.20938C5.52875 6.92228 6.00353 6.93159 6.29063 7.23017L10 11.1679L13.7094 7.23017C13.9965 6.93159 14.4713 6.92228 14.7698 7.20938C15.0684 7.49647 15.0777 7.97125 14.7906 8.26983L10.5406 12.7698C10.3992 12.9169 10.204 13 10 13C9.79599 13 9.60078 12.9169 9.45938 12.7698L5.20938 8.26983C4.92228 7.97125 4.93159 7.49647 5.23017 7.20938Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.23017 7.20938C5.52875 6.92228 6.00353 6.93159 6.29063 7.23017L10 11.1679L13.7094 7.23017C13.9965 6.93159 14.4713 6.92228 14.7698 7.20938C15.0684 7.49647 15.0777 7.97125 14.7906 8.26983L10.5406 12.7698C10.3992 12.9169 10.204 13 10 13C9.79599 13 9.60078 12.9169 9.45938 12.7698L5.20938 8.26983C4.92228 7.97125 4.93159 7.49647 5.23017 7.20938Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chevron-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.7906 5.23017C13.0777 5.52875 13.0684 6.00353 12.7698 6.29063L8.83208 10L12.7698 13.7094C13.0684 13.9965 13.0777 14.4713 12.7906 14.7698C12.5035 15.0684 12.0287 15.0777 11.7302 14.7906L7.23017 10.5406C7.08311 10.3992 7 10.204 7 10C7 9.79599 7.08311 9.60078 7.23017 9.45938L11.7302 5.20938C12.0287 4.92228 12.5035 4.93159 12.7906 5.23017Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.7906 5.23017C13.0777 5.52875 13.0684 6.00353 12.7698 6.29063L8.83208 10L12.7698 13.7094C13.0684 13.9965 13.0777 14.4713 12.7906 14.7698C12.5035 15.0684 12.0287 15.0777 11.7302 14.7906L7.23017 10.5406C7.08311 10.3992 7 10.204 7 10C7 9.79599 7.08311 9.60078 7.23017 9.45938L11.7302 5.20938C12.0287 4.92228 12.5035 4.93159 12.7906 5.23017Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chevron-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.20938 14.7698C6.92228 14.4713 6.93159 13.9965 7.23017 13.7094L11.1679 10L7.23017 6.29062C6.93159 6.00353 6.92228 5.52875 7.20938 5.23017C7.49647 4.93159 7.97125 4.92228 8.26983 5.20937L12.7698 9.45937C12.9169 9.60078 13 9.79599 13 10C13 10.204 12.9169 10.3992 12.7698 10.5406L8.26983 14.7906C7.97125 15.0777 7.49647 15.0684 7.20938 14.7698Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.20938 14.7698C6.92228 14.4713 6.93159 13.9965 7.23017 13.7094L11.1679 10L7.23017 6.29062C6.93159 6.00353 6.92228 5.52875 7.20938 5.23017C7.49647 4.93159 7.97125 4.92228 8.26983 5.20937L12.7698 9.45937C12.9169 9.60078 13 9.79599 13 10C13 10.204 12.9169 10.3992 12.7698 10.5406L8.26983 14.7906C7.97125 15.0777 7.49647 15.0684 7.20938 14.7698Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chevron-up-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_up_down />

      <.chevron_up_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_up_down() %>

      <%= chevron_up_down(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_up_down(assigns_or_opts \\ [])

  def chevron_up_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 3C10.2086 3 10.4077 3.08684 10.5496 3.23966L13.7996 6.73966C14.0815 7.0432 14.0639 7.51774 13.7603 7.7996C13.4568 8.08145 12.9823 8.06387 12.7004 7.76034L10 4.85221L7.2996 7.76034C7.01775 8.06387 6.5432 8.08145 6.23966 7.79959C5.93613 7.51774 5.91856 7.04319 6.20041 6.73966L9.45041 3.23966C9.59232 3.08684 9.79145 3 10 3ZM6.23967 12.2004C6.5432 11.9186 7.01775 11.9361 7.2996 12.2397L10 15.1478L12.7004 12.2397C12.9823 11.9361 13.4568 11.9186 13.7603 12.2004C14.0639 12.4823 14.0815 12.9568 13.7996 13.2603L10.5496 16.7603C10.4077 16.9132 10.2086 17 10 17C9.79145 17 9.59232 16.9132 9.45041 16.7603L6.20041 13.2603C5.91856 12.9568 5.93613 12.4823 6.23967 12.2004Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_up_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 3C10.2086 3 10.4077 3.08684 10.5496 3.23966L13.7996 6.73966C14.0815 7.0432 14.0639 7.51774 13.7603 7.7996C13.4568 8.08145 12.9823 8.06387 12.7004 7.76034L10 4.85221L7.2996 7.76034C7.01775 8.06387 6.5432 8.08145 6.23966 7.79959C5.93613 7.51774 5.91856 7.04319 6.20041 6.73966L9.45041 3.23966C9.59232 3.08684 9.79145 3 10 3ZM6.23967 12.2004C6.5432 11.9186 7.01775 11.9361 7.2996 12.2397L10 15.1478L12.7004 12.2397C12.9823 11.9361 13.4568 11.9186 13.7603 12.2004C14.0639 12.4823 14.0815 12.9568 13.7996 13.2603L10.5496 16.7603C10.4077 16.9132 10.2086 17 10 17C9.79145 17 9.59232 16.9132 9.45041 16.7603L6.20041 13.2603C5.91856 12.9568 5.93613 12.4823 6.23967 12.2004Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/chevron-up.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.7698 12.7906C14.4713 13.0777 13.9965 13.0684 13.7094 12.7698L10 8.83208L6.29062 12.7698C6.00353 13.0684 5.52875 13.0777 5.23017 12.7906C4.93159 12.5035 4.92228 12.0287 5.20937 11.7302L9.45937 7.23017C9.60078 7.08311 9.79599 7 10 7C10.204 7 10.3992 7.08311 10.5406 7.23017L14.7906 11.7302C15.0777 12.0287 15.0684 12.5035 14.7698 12.7906Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.7698 12.7906C14.4713 13.0777 13.9965 13.0684 13.7094 12.7698L10 8.83208L6.29062 12.7698C6.00353 13.0684 5.52875 13.0777 5.23017 12.7906C4.93159 12.5035 4.92228 12.0287 5.20937 11.7302L9.45937 7.23017C9.60078 7.08311 9.79599 7 10 7C10.204 7 10.3992 7.08311 10.5406 7.23017L14.7906 11.7302C15.0777 12.0287 15.0684 12.5035 14.7698 12.7906Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/circle-stack.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 1C13.866 1 17 2.79086 17 5C17 7.20914 13.866 9 10 9C6.13401 9 3 7.20914 3 5C3 2.79086 6.13401 1 10 1ZM15.694 9.13079C16.1576 8.86588 16.6044 8.54736 17 8.17775V10C17 12.2091 13.866 14 10 14C6.13401 14 3 12.2091 3 10V8.17775C3.3956 8.54736 3.84244 8.86588 4.30604 9.13079C5.83803 10.0062 7.85433 10.5 10 10.5C12.1457 10.5 14.162 10.0062 15.694 9.13079ZM3 13.1777V15C3 17.2091 6.13401 19 10 19C13.866 19 17 17.2091 17 15V13.1777C16.6044 13.5474 16.1576 13.8659 15.694 14.1308C14.162 15.0062 12.1457 15.5 10 15.5C7.85433 15.5 5.83803 15.0062 4.30604 14.1308C3.84244 13.8659 3.3956 13.5474 3 13.1777Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 1C13.866 1 17 2.79086 17 5C17 7.20914 13.866 9 10 9C6.13401 9 3 7.20914 3 5C3 2.79086 6.13401 1 10 1ZM15.694 9.13079C16.1576 8.86588 16.6044 8.54736 17 8.17775V10C17 12.2091 13.866 14 10 14C6.13401 14 3 12.2091 3 10V8.17775C3.3956 8.54736 3.84244 8.86588 4.30604 9.13079C5.83803 10.0062 7.85433 10.5 10 10.5C12.1457 10.5 14.162 10.0062 15.694 9.13079ZM3 13.1777V15C3 17.2091 6.13401 19 10 19C13.866 19 17 17.2091 17 15V13.1777C16.6044 13.5474 16.1576 13.8659 15.694 14.1308C14.162 15.0062 12.1457 15.5 10 15.5C7.85433 15.5 5.83803 15.0062 4.30604 14.1308C3.84244 13.8659 3.3956 13.5474 3 13.1777Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/clipboard-document-check.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.9999 5.25C17.9999 4.08761 17.1185 3.1311 15.9875 3.0124C15.8688 1.88145 14.9123 1 13.7499 1H12.2499C11.0875 1 10.131 1.88145 10.0123 3.0124C9.13721 3.10424 8.4115 3.69769 8.12793 4.5H10.9999C12.3806 4.5 13.4999 5.61929 13.4999 7V14H15.7499C16.9925 14 17.9999 12.9926 17.9999 11.75V5.25ZM12.2499 2.5C11.8357 2.5 11.4999 2.83579 11.4999 3.25V3.5H14.4999V3.25C14.4999 2.83579 14.1641 2.5 13.7499 2.5H12.2499Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 6C2.44772 6 2 6.44771 2 7V17C2 17.5523 2.44772 18 3 18H11C11.5523 18 12 17.5523 12 17V7C12 6.44772 11.5523 6 11 6H3ZM9.87404 10.166C10.1038 9.82138 10.0107 9.35573 9.66603 9.12596C9.32138 8.8962 8.85573 8.98933 8.62596 9.33397L6.13343 13.0728L5.28033 12.2197C4.98744 11.9268 4.51256 11.9268 4.21967 12.2197C3.92678 12.5126 3.92678 12.9874 4.21967 13.2803L5.71967 14.7803C5.87855 14.9392 6.1003 15.0185 6.3239 14.9963C6.5475 14.9742 6.7494 14.853 6.87404 14.666L9.87404 10.166Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M17.9999 5.25C17.9999 4.08761 17.1185 3.1311 15.9875 3.0124C15.8688 1.88145 14.9123 1 13.7499 1H12.2499C11.0875 1 10.131 1.88145 10.0123 3.0124C9.13721 3.10424 8.4115 3.69769 8.12793 4.5H10.9999C12.3806 4.5 13.4999 5.61929 13.4999 7V14H15.7499C16.9925 14 17.9999 12.9926 17.9999 11.75V5.25ZM12.2499 2.5C11.8357 2.5 11.4999 2.83579 11.4999 3.25V3.5H14.4999V3.25C14.4999 2.83579 14.1641 2.5 13.7499 2.5H12.2499Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 6C2.44772 6 2 6.44771 2 7V17C2 17.5523 2.44772 18 3 18H11C11.5523 18 12 17.5523 12 17V7C12 6.44772 11.5523 6 11 6H3ZM9.87404 10.166C10.1038 9.82138 10.0107 9.35573 9.66603 9.12596C9.32138 8.8962 8.85573 8.98933 8.62596 9.33397L6.13343 13.0728L5.28033 12.2197C4.98744 11.9268 4.51256 11.9268 4.21967 12.2197C3.92678 12.5126 3.92678 12.9874 4.21967 13.2803L5.71967 14.7803C5.87855 14.9392 6.1003 15.0185 6.3239 14.9963C6.5475 14.9742 6.7494 14.853 6.87404 14.666L9.87404 10.166Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/clipboard-document-list.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.9875 3.0124C17.1185 3.1311 17.9999 4.08761 17.9999 5.25V11.75C17.9999 12.9926 16.9925 14 15.7499 14H13.4999V7C13.4999 5.61929 12.3806 4.5 10.9999 4.5H8.12793C8.4115 3.69769 9.13721 3.10424 10.0123 3.0124C10.131 1.88145 11.0875 1 12.2499 1H13.7499C14.9123 1 15.8688 1.88145 15.9875 3.0124ZM11.4999 3.25C11.4999 2.83579 11.8357 2.5 12.2499 2.5H13.7499C14.1641 2.5 14.4999 2.83579 14.4999 3.25V3.5H11.4999V3.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 7C2 6.44771 2.44772 6 3 6H11C11.5523 6 12 6.44772 12 7V17C12 17.5523 11.5523 18 11 18H3C2.44772 18 2 17.5523 2 17V7ZM4 10.25C4 9.83579 4.33579 9.5 4.75 9.5H9.25C9.66421 9.5 10 9.83579 10 10.25C10 10.6642 9.66421 11 9.25 11H4.75C4.33579 11 4 10.6642 4 10.25ZM4 13.75C4 13.3358 4.33579 13 4.75 13H9.25C9.66421 13 10 13.3358 10 13.75C10 14.1642 9.66421 14.5 9.25 14.5H4.75C4.33579 14.5 4 14.1642 4 13.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.9875 3.0124C17.1185 3.1311 17.9999 4.08761 17.9999 5.25V11.75C17.9999 12.9926 16.9925 14 15.7499 14H13.4999V7C13.4999 5.61929 12.3806 4.5 10.9999 4.5H8.12793C8.4115 3.69769 9.13721 3.10424 10.0123 3.0124C10.131 1.88145 11.0875 1 12.2499 1H13.7499C14.9123 1 15.8688 1.88145 15.9875 3.0124ZM11.4999 3.25C11.4999 2.83579 11.8357 2.5 12.2499 2.5H13.7499C14.1641 2.5 14.4999 2.83579 14.4999 3.25V3.5H11.4999V3.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 7C2 6.44771 2.44772 6 3 6H11C11.5523 6 12 6.44772 12 7V17C12 17.5523 11.5523 18 11 18H3C2.44772 18 2 17.5523 2 17V7ZM4 10.25C4 9.83579 4.33579 9.5 4.75 9.5H9.25C9.66421 9.5 10 9.83579 10 10.25C10 10.6642 9.66421 11 9.25 11H4.75C4.33579 11 4 10.6642 4 10.25ZM4 13.75C4 13.3358 4.33579 13 4.75 13H9.25C9.66421 13 10 13.3358 10 13.75C10 14.1642 9.66421 14.5 9.25 14.5H4.75C4.33579 14.5 4 14.1642 4 13.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/clipboard-document.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.9877 3.0124C17.1186 3.1311 18.0001 4.08761 18.0001 5.25V11.75C18.0001 12.9926 16.9927 14 15.7501 14H13.5001V10.6213C13.5001 9.82567 13.184 9.06261 12.6214 8.5L9.50008 5.37868C9.1106 4.9892 8.62505 4.71787 8.09912 4.58776C8.35944 3.74123 9.10578 3.10756 10.0125 3.0124C10.1312 1.88145 11.0877 1 12.2501 1H13.7501C14.9125 1 15.869 1.88145 15.9877 3.0124ZM11.5001 3.25C11.5001 2.83579 11.8359 2.5 12.2501 2.5H13.7501C14.1643 2.5 14.5001 2.83579 14.5001 3.25V3.5H11.5001V3.25Z" fill="#0F172A"/>
    <path d="M3.5 6C2.67157 6 2 6.67157 2 7.5V16.5C2 17.3284 2.67157 18 3.5 18H10.5C11.3284 18 12 17.3284 12 16.5V10.6213C12 10.2235 11.842 9.84196 11.5607 9.56066L8.43934 6.43934C8.15804 6.15804 7.7765 6 7.37868 6H3.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.9877 3.0124C17.1186 3.1311 18.0001 4.08761 18.0001 5.25V11.75C18.0001 12.9926 16.9927 14 15.7501 14H13.5001V10.6213C13.5001 9.82567 13.184 9.06261 12.6214 8.5L9.50008 5.37868C9.1106 4.9892 8.62505 4.71787 8.09912 4.58776C8.35944 3.74123 9.10578 3.10756 10.0125 3.0124C10.1312 1.88145 11.0877 1 12.2501 1H13.7501C14.9125 1 15.869 1.88145 15.9877 3.0124ZM11.5001 3.25C11.5001 2.83579 11.8359 2.5 12.2501 2.5H13.7501C14.1643 2.5 14.5001 2.83579 14.5001 3.25V3.5H11.5001V3.25Z\" fill=\"#0F172A\"/>\n<path d=\"M3.5 6C2.67157 6 2 6.67157 2 7.5V16.5C2 17.3284 2.67157 18 3.5 18H10.5C11.3284 18 12 17.3284 12 16.5V10.6213C12 10.2235 11.842 9.84196 11.5607 9.56066L8.43934 6.43934C8.15804 6.15804 7.7765 6 7.37868 6H3.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/clipboard.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.8871 3.18189C14.283 3.21913 14.6773 3.262 15.07 3.31043C16.1942 3.44911 17 4.41371 17 5.51659V16.75C17 17.9926 15.9926 19 14.75 19H5.25C4.00736 19 3 17.9926 3 16.75V5.51659C3 4.41371 3.80579 3.44911 4.93005 3.31043C5.32266 3.26201 5.71697 3.21913 6.11291 3.18189C6.46903 1.92267 7.62676 1 9 1H11C12.3732 1 13.531 1.92267 13.8871 3.18189ZM7.5 4C7.5 3.17157 8.17157 2.5 9 2.5H11C11.8284 2.5 12.5 3.17157 12.5 4V4.5H7.5V4Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M13.8871 3.18189C14.283 3.21913 14.6773 3.262 15.07 3.31043C16.1942 3.44911 17 4.41371 17 5.51659V16.75C17 17.9926 15.9926 19 14.75 19H5.25C4.00736 19 3 17.9926 3 16.75V5.51659C3 4.41371 3.80579 3.44911 4.93005 3.31043C5.32266 3.26201 5.71697 3.21913 6.11291 3.18189C6.46903 1.92267 7.62676 1 9 1H11C12.3732 1 13.531 1.92267 13.8871 3.18189ZM7.5 4C7.5 3.17157 8.17157 2.5 9 2.5H11C11.8284 2.5 12.5 3.17157 12.5 4V4.5H7.5V4Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/clock.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM10.75 5C10.75 4.58579 10.4142 4.25 10 4.25C9.58579 4.25 9.25 4.58579 9.25 5V10C9.25 10.4142 9.58579 10.75 10 10.75H14C14.4142 10.75 14.75 10.4142 14.75 10C14.75 9.58579 14.4142 9.25 14 9.25H10.75V5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM10.75 5C10.75 4.58579 10.4142 4.25 10 4.25C9.58579 4.25 9.25 4.58579 9.25 5V10C9.25 10.4142 9.58579 10.75 10 10.75H14C14.4142 10.75 14.75 10.4142 14.75 10C14.75 9.58579 14.4142 9.25 14 9.25H10.75V5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cloud-arrow-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.5 17C3.01472 17 1 14.9853 1 12.5C1 10.5184 2.28084 8.83595 4.05979 8.2354C4.02046 7.9961 4 7.75044 4 7.5C4 5.01472 6.01472 3 8.5 3C10.1404 3 11.5758 3.87771 12.3621 5.18913C12.7189 5.06655 13.1017 5 13.5 5C15.433 5 17 6.567 17 8.5C17 8.83334 16.9534 9.15579 16.8664 9.4612C18.1353 10.1318 19 11.4649 19 13C19 15.2091 17.2091 17 15 17H5.5ZM10.75 7.75C10.75 7.33579 10.4142 7 10 7C9.58579 7 9.25 7.33579 9.25 7.75V12.3401L7.29959 10.2397C7.01774 9.93613 6.54319 9.91855 6.23966 10.2004C5.93613 10.4823 5.91855 10.9568 6.20041 11.2603L9.45041 14.7603C9.59231 14.9132 9.79145 15 10 15C10.2086 15 10.4077 14.9132 10.5496 14.7603L13.7996 11.2603C14.0814 10.9568 14.0639 10.4823 13.7603 10.2004C13.4568 9.91855 12.9823 9.93613 12.7004 10.2397L10.75 12.3401V7.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.5 17C3.01472 17 1 14.9853 1 12.5C1 10.5184 2.28084 8.83595 4.05979 8.2354C4.02046 7.9961 4 7.75044 4 7.5C4 5.01472 6.01472 3 8.5 3C10.1404 3 11.5758 3.87771 12.3621 5.18913C12.7189 5.06655 13.1017 5 13.5 5C15.433 5 17 6.567 17 8.5C17 8.83334 16.9534 9.15579 16.8664 9.4612C18.1353 10.1318 19 11.4649 19 13C19 15.2091 17.2091 17 15 17H5.5ZM10.75 7.75C10.75 7.33579 10.4142 7 10 7C9.58579 7 9.25 7.33579 9.25 7.75V12.3401L7.29959 10.2397C7.01774 9.93613 6.54319 9.91855 6.23966 10.2004C5.93613 10.4823 5.91855 10.9568 6.20041 11.2603L9.45041 14.7603C9.59231 14.9132 9.79145 15 10 15C10.2086 15 10.4077 14.9132 10.5496 14.7603L13.7996 11.2603C14.0814 10.9568 14.0639 10.4823 13.7603 10.2004C13.4568 9.91855 12.9823 9.93613 12.7004 10.2397L10.75 12.3401V7.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cloud-arrow-up.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.5 17C3.01472 17 1 14.9853 1 12.5C1 10.5184 2.28084 8.83595 4.05979 8.2354C4.02046 7.9961 4 7.75044 4 7.5C4 5.01472 6.01472 3 8.5 3C10.1404 3 11.5758 3.87771 12.3621 5.18913C12.7189 5.06655 13.1017 5 13.5 5C15.433 5 17 6.567 17 8.5C17 8.83334 16.9534 9.15579 16.8664 9.4612C18.1353 10.1318 19 11.4649 19 13C19 15.2091 17.2091 17 15 17H5.5ZM9.25 14.25C9.25 14.6642 9.58579 15 10 15C10.4142 15 10.75 14.6642 10.75 14.25V9.6599L12.7004 11.7603C12.9823 12.0639 13.4568 12.0814 13.7603 11.7996C14.0639 11.5177 14.0814 11.0432 13.7996 10.7397L10.5496 7.23966C10.4077 7.08684 10.2086 7 10 7C9.79145 7 9.59231 7.08684 9.45041 7.23966L6.20041 10.7397C5.91855 11.0432 5.93613 11.5177 6.23966 11.7996C6.54319 12.0814 7.01774 12.0639 7.2996 11.7603L9.25 9.6599V14.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.5 17C3.01472 17 1 14.9853 1 12.5C1 10.5184 2.28084 8.83595 4.05979 8.2354C4.02046 7.9961 4 7.75044 4 7.5C4 5.01472 6.01472 3 8.5 3C10.1404 3 11.5758 3.87771 12.3621 5.18913C12.7189 5.06655 13.1017 5 13.5 5C15.433 5 17 6.567 17 8.5C17 8.83334 16.9534 9.15579 16.8664 9.4612C18.1353 10.1318 19 11.4649 19 13C19 15.2091 17.2091 17 15 17H5.5ZM9.25 14.25C9.25 14.6642 9.58579 15 10 15C10.4142 15 10.75 14.6642 10.75 14.25V9.6599L12.7004 11.7603C12.9823 12.0639 13.4568 12.0814 13.7603 11.7996C14.0639 11.5177 14.0814 11.0432 13.7996 10.7397L10.5496 7.23966C10.4077 7.08684 10.2086 7 10 7C9.79145 7 9.59231 7.08684 9.45041 7.23966L6.20041 10.7397C5.91855 11.0432 5.93613 11.5177 6.23966 11.7996C6.54319 12.0814 7.01774 12.0639 7.2996 11.7603L9.25 9.6599V14.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cloud.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M1 12.5C1 14.9853 3.01472 17 5.5 17H15C17.2091 17 19 15.2091 19 13C19 11.4649 18.1353 10.1318 16.8664 9.4612C16.9534 9.15579 17 8.83334 17 8.5C17 6.567 15.433 5 13.5 5C13.1017 5 12.7189 5.06655 12.3621 5.18913C11.5758 3.87771 10.1404 3 8.5 3C6.01472 3 4 5.01472 4 7.5C4 7.75044 4.02046 7.9961 4.05979 8.2354C2.28084 8.83595 1 10.5184 1 12.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M1 12.5C1 14.9853 3.01472 17 5.5 17H15C17.2091 17 19 15.2091 19 13C19 11.4649 18.1353 10.1318 16.8664 9.4612C16.9534 9.15579 17 8.83334 17 8.5C17 6.567 15.433 5 13.5 5C13.1017 5 12.7189 5.06655 12.3621 5.18913C11.5758 3.87771 10.1404 3 8.5 3C6.01472 3 4 5.01472 4 7.5C4 7.75044 4.02046 7.9961 4.05979 8.2354C2.28084 8.83595 1 10.5184 1 12.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/code-bracket-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.code_bracket_square />

      <.code_bracket_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= code_bracket_square() %>

      <%= code_bracket_square(class: "h-6 w-6 text-gray-500") %>
  """
  def code_bracket_square(assigns_or_opts \\ [])

  def code_bracket_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 2C3.00736 2 2 3.00736 2 4.25V15.75C2 16.9926 3.00736 18 4.25 18H15.75C16.9926 18 18 16.9926 18 15.75V4.25C18 3.00736 16.9926 2 15.75 2H4.25ZM8.28033 8.28033C8.57322 7.98744 8.57322 7.51256 8.28033 7.21967C7.98744 6.92678 7.51256 6.92678 7.21967 7.21967L4.96967 9.46967C4.67678 9.76256 4.67678 10.2374 4.96967 10.5303L7.21967 12.7803C7.51256 13.0732 7.98744 13.0732 8.28033 12.7803C8.57322 12.4874 8.57322 12.0126 8.28033 11.7197L6.56066 10L8.28033 8.28033ZM12.7803 7.21967C12.4874 6.92678 12.0126 6.92678 11.7197 7.21967C11.4268 7.51256 11.4268 7.98744 11.7197 8.28033L13.4393 10L11.7197 11.7197C11.4268 12.0126 11.4268 12.4874 11.7197 12.7803C12.0126 13.0732 12.4874 13.0732 12.7803 12.7803L15.0303 10.5303C15.3232 10.2374 15.3232 9.76256 15.0303 9.46967L12.7803 7.21967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def code_bracket_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.25 2C3.00736 2 2 3.00736 2 4.25V15.75C2 16.9926 3.00736 18 4.25 18H15.75C16.9926 18 18 16.9926 18 15.75V4.25C18 3.00736 16.9926 2 15.75 2H4.25ZM8.28033 8.28033C8.57322 7.98744 8.57322 7.51256 8.28033 7.21967C7.98744 6.92678 7.51256 6.92678 7.21967 7.21967L4.96967 9.46967C4.67678 9.76256 4.67678 10.2374 4.96967 10.5303L7.21967 12.7803C7.51256 13.0732 7.98744 13.0732 8.28033 12.7803C8.57322 12.4874 8.57322 12.0126 8.28033 11.7197L6.56066 10L8.28033 8.28033ZM12.7803 7.21967C12.4874 6.92678 12.0126 6.92678 11.7197 7.21967C11.4268 7.51256 11.4268 7.98744 11.7197 8.28033L13.4393 10L11.7197 11.7197C11.4268 12.0126 11.4268 12.4874 11.7197 12.7803C12.0126 13.0732 12.4874 13.0732 12.7803 12.7803L15.0303 10.5303C15.3232 10.2374 15.3232 9.76256 15.0303 9.46967L12.7803 7.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/code-bracket.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.code_bracket />

      <.code_bracket class="h-6 w-6 text-gray-500" />

  or as a function

      <%= code_bracket() %>

      <%= code_bracket(class: "h-6 w-6 text-gray-500") %>
  """
  def code_bracket(assigns_or_opts \\ [])

  def code_bracket(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.28033 5.21979C6.57322 5.51269 6.57322 5.98756 6.28033 6.28045L2.56066 10.0001L6.28033 13.7198C6.57322 14.0127 6.57322 14.4876 6.28033 14.7805C5.98744 15.0733 5.51256 15.0733 5.21967 14.7805L0.96967 10.5305C0.676777 10.2376 0.676777 9.76269 0.96967 9.46979L5.21967 5.21979C5.51256 4.9269 5.98744 4.9269 6.28033 5.21979ZM13.7197 5.21979C14.0126 4.9269 14.4874 4.9269 14.7803 5.21979L19.0303 9.46979C19.3232 9.76269 19.3232 10.2376 19.0303 10.5305L14.7803 14.7805C14.4874 15.0733 14.0126 15.0733 13.7197 14.7805C13.4268 14.4876 13.4268 14.0127 13.7197 13.7198L17.4393 10.0001L13.7197 6.28045C13.4268 5.98756 13.4268 5.51269 13.7197 5.21979Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.3774 2.01103C11.7856 2.0814 12.0595 2.46936 11.9891 2.87755L9.48909 17.3776C9.41872 17.7857 9.03076 18.0596 8.62257 17.9892C8.21438 17.9188 7.94053 17.5309 8.0109 17.1227L10.5109 2.62269C10.5813 2.2145 10.9692 1.94065 11.3774 2.01103Z" fill="#0F172A"/>
    </svg>
    """
  end

  def code_bracket(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.28033 5.21979C6.57322 5.51269 6.57322 5.98756 6.28033 6.28045L2.56066 10.0001L6.28033 13.7198C6.57322 14.0127 6.57322 14.4876 6.28033 14.7805C5.98744 15.0733 5.51256 15.0733 5.21967 14.7805L0.96967 10.5305C0.676777 10.2376 0.676777 9.76269 0.96967 9.46979L5.21967 5.21979C5.51256 4.9269 5.98744 4.9269 6.28033 5.21979ZM13.7197 5.21979C14.0126 4.9269 14.4874 4.9269 14.7803 5.21979L19.0303 9.46979C19.3232 9.76269 19.3232 10.2376 19.0303 10.5305L14.7803 14.7805C14.4874 15.0733 14.0126 15.0733 13.7197 14.7805C13.4268 14.4876 13.4268 14.0127 13.7197 13.7198L17.4393 10.0001L13.7197 6.28045C13.4268 5.98756 13.4268 5.51269 13.7197 5.21979Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.3774 2.01103C11.7856 2.0814 12.0595 2.46936 11.9891 2.87755L9.48909 17.3776C9.41872 17.7857 9.03076 18.0596 8.62257 17.9892C8.21438 17.9188 7.94053 17.5309 8.0109 17.1227L10.5109 2.62269C10.5813 2.2145 10.9692 1.94065 11.3774 2.01103Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cog-6-tooth.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.83922 1.80388C7.9327 1.33646 8.34312 1 8.8198 1H11.1802C11.6569 1 12.0673 1.33646 12.1608 1.80388L12.4913 3.45629C13.1956 3.72458 13.8454 4.10332 14.4196 4.57133L16.0179 4.03065C16.4694 3.8779 16.966 4.06509 17.2043 4.47791L18.3845 6.52207C18.6229 6.93489 18.5367 7.45855 18.1786 7.77322L16.9119 8.88645C16.9699 9.24909 17 9.62103 17 10C17 10.379 16.9699 10.7509 16.9119 11.1135L18.1786 12.2268C18.5367 12.5414 18.6229 13.0651 18.3845 13.4779L17.2043 15.5221C16.966 15.9349 16.4694 16.1221 16.0179 15.9693L14.4196 15.4287C13.8454 15.8967 13.1956 16.2754 12.4913 16.5437L12.1608 18.1961C12.0673 18.6635 11.6569 19 11.1802 19H8.8198C8.34312 19 7.9327 18.6635 7.83922 18.1961L7.50874 16.5437C6.80442 16.2754 6.1546 15.8967 5.58042 15.4287L3.98213 15.9694C3.53059 16.1221 3.034 15.9349 2.79566 15.5221L1.61546 13.4779C1.37712 13.0651 1.4633 12.5415 1.82136 12.2268L3.08808 11.1135C3.03011 10.7509 2.99999 10.379 2.99999 10C2.99999 9.62103 3.03011 9.2491 3.08808 8.88647L1.82136 7.77324C1.4633 7.45857 1.37712 6.93491 1.61546 6.52209L2.79566 4.47793C3.034 4.06511 3.53059 3.87791 3.98213 4.03066L5.58041 4.57134C6.15459 4.10332 6.80442 3.72459 7.50874 3.45629L7.83922 1.80388ZM9.99999 13C11.6568 13 13 11.6569 13 10C13 8.34315 11.6568 7 9.99999 7C8.34314 7 6.99999 8.34315 6.99999 10C6.99999 11.6569 8.34314 13 9.99999 13Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.83922 1.80388C7.9327 1.33646 8.34312 1 8.8198 1H11.1802C11.6569 1 12.0673 1.33646 12.1608 1.80388L12.4913 3.45629C13.1956 3.72458 13.8454 4.10332 14.4196 4.57133L16.0179 4.03065C16.4694 3.8779 16.966 4.06509 17.2043 4.47791L18.3845 6.52207C18.6229 6.93489 18.5367 7.45855 18.1786 7.77322L16.9119 8.88645C16.9699 9.24909 17 9.62103 17 10C17 10.379 16.9699 10.7509 16.9119 11.1135L18.1786 12.2268C18.5367 12.5414 18.6229 13.0651 18.3845 13.4779L17.2043 15.5221C16.966 15.9349 16.4694 16.1221 16.0179 15.9693L14.4196 15.4287C13.8454 15.8967 13.1956 16.2754 12.4913 16.5437L12.1608 18.1961C12.0673 18.6635 11.6569 19 11.1802 19H8.8198C8.34312 19 7.9327 18.6635 7.83922 18.1961L7.50874 16.5437C6.80442 16.2754 6.1546 15.8967 5.58042 15.4287L3.98213 15.9694C3.53059 16.1221 3.034 15.9349 2.79566 15.5221L1.61546 13.4779C1.37712 13.0651 1.4633 12.5415 1.82136 12.2268L3.08808 11.1135C3.03011 10.7509 2.99999 10.379 2.99999 10C2.99999 9.62103 3.03011 9.2491 3.08808 8.88647L1.82136 7.77324C1.4633 7.45857 1.37712 6.93491 1.61546 6.52209L2.79566 4.47793C3.034 4.06511 3.53059 3.87791 3.98213 4.03066L5.58041 4.57134C6.15459 4.10332 6.80442 3.72459 7.50874 3.45629L7.83922 1.80388ZM9.99999 13C11.6568 13 13 11.6569 13 10C13 8.34315 11.6568 7 9.99999 7C8.34314 7 6.99999 8.34315 6.99999 10C6.99999 11.6569 8.34314 13 9.99999 13Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cog-8-tooth.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.33922 1.80388C8.43271 1.33646 8.84312 1 9.3198 1H10.6802C11.1569 1 11.5673 1.33646 11.6608 1.80388L11.9553 3.27675C12.4522 3.42101 12.9263 3.61886 13.3709 3.86363L14.6212 3.03014C15.0178 2.76572 15.5459 2.81802 15.883 3.15508L16.8449 4.11702C17.182 4.45409 17.2343 4.98221 16.9699 5.37883L16.1364 6.62908C16.3811 7.07369 16.579 7.54778 16.7232 8.04465L18.1961 8.33922C18.6635 8.43271 19 8.84312 19 9.3198V10.6802C19 11.1569 18.6635 11.5673 18.1961 11.6608L16.7232 11.9553C16.579 12.4522 16.3812 12.9262 16.1364 13.3708L16.97 14.6212C17.2344 15.0178 17.1821 15.5459 16.845 15.883L15.8831 16.8449C15.546 17.182 15.0179 17.2343 14.6213 16.9699L13.371 16.1363C12.9264 16.3811 12.4522 16.579 11.9554 16.7232L11.6608 18.1961C11.5673 18.6635 11.1569 19 10.6802 19H9.3198C8.84312 19 8.43271 18.6635 8.33922 18.1961L8.04465 16.7232C7.54778 16.579 7.0737 16.3811 6.62908 16.1364L5.37882 16.9699C4.9822 17.2343 4.45408 17.182 4.11701 16.8449L3.15507 15.883C2.81801 15.5459 2.76571 15.0178 3.03013 14.6212L3.86363 13.3709C3.61886 12.9263 3.42101 12.4522 3.27675 11.9554L1.80388 11.6608C1.33646 11.5673 1 11.1569 1 10.6802L1 9.3198C1 8.84312 1.33646 8.43271 1.80388 8.33922L3.27675 8.04465C3.42102 7.54774 3.61889 7.07363 3.86368 6.62898L3.03024 5.37882C2.76582 4.9822 2.81812 4.45408 3.15518 4.11701L4.11712 3.15507C4.45419 2.81801 4.98231 2.76571 5.37893 3.03013L6.62913 3.86359C7.07373 3.61884 7.5478 3.42101 8.04465 3.27675L8.33922 1.80388ZM13 10C13 11.6569 11.6569 13 10 13C8.34315 13 7 11.6569 7 10C7 8.34315 8.34315 7 10 7C11.6569 7 13 8.34315 13 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.33922 1.80388C8.43271 1.33646 8.84312 1 9.3198 1H10.6802C11.1569 1 11.5673 1.33646 11.6608 1.80388L11.9553 3.27675C12.4522 3.42101 12.9263 3.61886 13.3709 3.86363L14.6212 3.03014C15.0178 2.76572 15.5459 2.81802 15.883 3.15508L16.8449 4.11702C17.182 4.45409 17.2343 4.98221 16.9699 5.37883L16.1364 6.62908C16.3811 7.07369 16.579 7.54778 16.7232 8.04465L18.1961 8.33922C18.6635 8.43271 19 8.84312 19 9.3198V10.6802C19 11.1569 18.6635 11.5673 18.1961 11.6608L16.7232 11.9553C16.579 12.4522 16.3812 12.9262 16.1364 13.3708L16.97 14.6212C17.2344 15.0178 17.1821 15.5459 16.845 15.883L15.8831 16.8449C15.546 17.182 15.0179 17.2343 14.6213 16.9699L13.371 16.1363C12.9264 16.3811 12.4522 16.579 11.9554 16.7232L11.6608 18.1961C11.5673 18.6635 11.1569 19 10.6802 19H9.3198C8.84312 19 8.43271 18.6635 8.33922 18.1961L8.04465 16.7232C7.54778 16.579 7.0737 16.3811 6.62908 16.1364L5.37882 16.9699C4.9822 17.2343 4.45408 17.182 4.11701 16.8449L3.15507 15.883C2.81801 15.5459 2.76571 15.0178 3.03013 14.6212L3.86363 13.3709C3.61886 12.9263 3.42101 12.4522 3.27675 11.9554L1.80388 11.6608C1.33646 11.5673 1 11.1569 1 10.6802L1 9.3198C1 8.84312 1.33646 8.43271 1.80388 8.33922L3.27675 8.04465C3.42102 7.54774 3.61889 7.07363 3.86368 6.62898L3.03024 5.37882C2.76582 4.9822 2.81812 4.45408 3.15518 4.11701L4.11712 3.15507C4.45419 2.81801 4.98231 2.76571 5.37893 3.03013L6.62913 3.86359C7.07373 3.61884 7.5478 3.42101 8.04465 3.27675L8.33922 1.80388ZM13 10C13 11.6569 11.6569 13 10 13C8.34315 13 7 11.6569 7 10C7 8.34315 8.34315 7 10 7C11.6569 7 13 8.34315 13 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cog.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M13.0242 9.24999C13.4944 9.24999 13.8513 8.81719 13.6614 8.38695C13.0412 6.9812 11.6352 6 10 6C9.85376 6 9.70936 6.00785 9.56719 6.02314C9.09929 6.07349 8.90249 6.59904 9.13779 7.00659L10.2165 8.87499C10.3505 9.10704 10.5981 9.24999 10.866 9.24999L13.0242 9.24999Z" fill="#0F172A"/>
    <path d="M7.83948 7.75785C7.60411 7.35018 7.05027 7.25778 6.77194 7.63742C6.28661 8.29942 6 9.11624 6 10C6 10.8838 6.28662 11.7006 6.77198 12.3626C7.05031 12.7423 7.60415 12.6499 7.83952 12.2422L8.91751 10.3751C9.05149 10.143 9.05149 9.85711 8.91751 9.62506L7.83948 7.75785Z" fill="#0F172A"/>
    <path d="M9.13785 12.9934C8.90255 13.401 9.09936 13.9265 9.56726 13.9769C9.70941 13.9922 9.85379 14 10 14C11.6352 14 13.0412 13.0188 13.6614 11.613C13.8513 11.1828 13.4944 10.75 13.0242 10.75H10.8661C10.5982 10.75 10.3506 10.8929 10.2166 11.125L9.13785 12.9934Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.1295 4.34724L14.7744 3.23028C14.9815 2.87156 14.8586 2.41286 14.4999 2.20576C14.1412 1.99865 13.6825 2.12156 13.4754 2.48028L12.8311 3.59615C12.1832 3.30927 11.4835 3.11784 10.75 3.03971V1.75C10.75 1.33579 10.4142 1 10 1C9.58579 1 9.25 1.33579 9.25 1.75V3.03971C8.51649 3.11784 7.81683 3.30927 7.16886 3.59616L6.52462 2.4803C6.31752 2.12158 5.85882 1.99867 5.5001 2.20578C5.14139 2.41289 5.01848 2.87158 5.22559 3.2303L5.87046 4.34725C5.28784 4.7736 4.77359 5.28784 4.34725 5.87046L3.23009 5.22547C2.87137 5.01836 2.41267 5.14127 2.20557 5.49999C1.99846 5.85871 2.12137 6.3174 2.48009 6.52451L3.59615 7.16887C3.30927 7.81683 3.11784 8.51649 3.03971 9.25H1.75C1.33579 9.25 1 9.58579 1 10C1 10.4142 1.33579 10.75 1.75 10.75H3.03971C3.11784 11.4835 3.30926 12.1832 3.59614 12.8311L2.48009 13.4755C2.12137 13.6826 1.99846 14.1413 2.20557 14.5C2.41267 14.8587 2.87137 14.9816 3.23009 14.7745L4.34723 14.1295C4.77355 14.7121 5.28775 15.2263 5.87031 15.6526L5.22538 16.7697C5.01827 17.1284 5.14118 17.5871 5.4999 17.7942C5.85861 18.0013 6.31731 17.8784 6.52441 17.5197L7.1687 16.4038C7.81671 16.6907 8.51643 16.8822 9.25 16.9603V18.25C9.25 18.6642 9.58579 19 10 19C10.4142 19 10.75 18.6642 10.75 18.25V16.9603C11.4836 16.8822 12.1833 16.6907 12.8313 16.4038L13.4756 17.5197C13.6827 17.8784 14.1414 18.0013 14.5001 17.7942C14.8588 17.5871 14.9817 17.1284 14.7746 16.7697L14.1297 15.6526C14.7122 15.2263 15.2264 14.7121 15.6527 14.1296L16.7698 14.7745C17.1285 14.9816 17.5872 14.8587 17.7943 14.5C18.0014 14.1413 17.8785 13.6826 17.5198 13.4755L16.4038 12.8312C16.6907 12.1832 16.8822 11.4835 16.9603 10.75H18.25C18.6642 10.75 19 10.4142 19 10C19 9.58579 18.6642 9.25 18.25 9.25H16.9603C16.8822 8.51646 16.6907 7.81678 16.4038 7.16879L17.5198 6.52451C17.8785 6.3174 18.0014 5.85871 17.7943 5.49999C17.5872 5.14127 17.1285 5.01836 16.7698 5.22547L15.6527 5.8704C15.2264 5.2878 14.7121 4.77358 14.1295 4.34724ZM10 4.5C9.0112 4.5 8.08334 4.76094 7.28153 5.2177C7.27126 5.22431 7.26079 5.2307 7.2501 5.23687C7.23978 5.24283 7.22937 5.24852 7.21889 5.25393C6.40668 5.7309 5.72776 6.4104 5.25148 7.22307C5.24674 7.2321 5.2418 7.24107 5.23666 7.24999C5.2313 7.25926 5.22578 7.26837 5.2201 7.27733C4.76185 8.0801 4.5 9.00947 4.5 10C4.5 10.9904 4.76179 11.9197 5.21995 12.7224C5.22569 12.7314 5.23126 12.7406 5.23666 12.75C5.24185 12.759 5.24683 12.768 5.25161 12.7772C5.72819 13.5903 6.40765 14.27 7.2205 14.747C7.23036 14.7521 7.24017 14.7575 7.2499 14.7631C7.26 14.769 7.26992 14.775 7.27965 14.7812C8.08189 15.2387 9.01042 15.5 10 15.5C10.9897 15.5 11.9184 15.2386 12.7207 14.781C12.7303 14.7749 12.7401 14.7689 12.7501 14.7632C12.7597 14.7576 12.7694 14.7523 12.7792 14.7472C13.5913 14.2707 14.2704 13.5918 14.7469 12.7797C14.7521 12.7697 14.7575 12.7598 14.7632 12.75C14.7691 12.7398 14.7751 12.7298 14.7814 12.72C15.2387 11.9179 15.5 10.9894 15.5 10C15.5 9.01046 15.2387 8.08196 14.7813 7.27974C14.7751 7.27001 14.769 7.26009 14.7632 7.24999C14.7576 7.24025 14.7522 7.23044 14.7471 7.22057C14.2708 6.40891 13.5923 5.73024 12.7808 5.25375C12.7704 5.24838 12.7601 5.24275 12.7499 5.23685C12.7393 5.23074 12.7289 5.22441 12.7188 5.21788C11.9169 4.761 10.9889 4.5 10 4.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M13.0242 9.24999C13.4944 9.24999 13.8513 8.81719 13.6614 8.38695C13.0412 6.9812 11.6352 6 10 6C9.85376 6 9.70936 6.00785 9.56719 6.02314C9.09929 6.07349 8.90249 6.59904 9.13779 7.00659L10.2165 8.87499C10.3505 9.10704 10.5981 9.24999 10.866 9.24999L13.0242 9.24999Z\" fill=\"#0F172A\"/>\n<path d=\"M7.83948 7.75785C7.60411 7.35018 7.05027 7.25778 6.77194 7.63742C6.28661 8.29942 6 9.11624 6 10C6 10.8838 6.28662 11.7006 6.77198 12.3626C7.05031 12.7423 7.60415 12.6499 7.83952 12.2422L8.91751 10.3751C9.05149 10.143 9.05149 9.85711 8.91751 9.62506L7.83948 7.75785Z\" fill=\"#0F172A\"/>\n<path d=\"M9.13785 12.9934C8.90255 13.401 9.09936 13.9265 9.56726 13.9769C9.70941 13.9922 9.85379 14 10 14C11.6352 14 13.0412 13.0188 13.6614 11.613C13.8513 11.1828 13.4944 10.75 13.0242 10.75H10.8661C10.5982 10.75 10.3506 10.8929 10.2166 11.125L9.13785 12.9934Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.1295 4.34724L14.7744 3.23028C14.9815 2.87156 14.8586 2.41286 14.4999 2.20576C14.1412 1.99865 13.6825 2.12156 13.4754 2.48028L12.8311 3.59615C12.1832 3.30927 11.4835 3.11784 10.75 3.03971V1.75C10.75 1.33579 10.4142 1 10 1C9.58579 1 9.25 1.33579 9.25 1.75V3.03971C8.51649 3.11784 7.81683 3.30927 7.16886 3.59616L6.52462 2.4803C6.31752 2.12158 5.85882 1.99867 5.5001 2.20578C5.14139 2.41289 5.01848 2.87158 5.22559 3.2303L5.87046 4.34725C5.28784 4.7736 4.77359 5.28784 4.34725 5.87046L3.23009 5.22547C2.87137 5.01836 2.41267 5.14127 2.20557 5.49999C1.99846 5.85871 2.12137 6.3174 2.48009 6.52451L3.59615 7.16887C3.30927 7.81683 3.11784 8.51649 3.03971 9.25H1.75C1.33579 9.25 1 9.58579 1 10C1 10.4142 1.33579 10.75 1.75 10.75H3.03971C3.11784 11.4835 3.30926 12.1832 3.59614 12.8311L2.48009 13.4755C2.12137 13.6826 1.99846 14.1413 2.20557 14.5C2.41267 14.8587 2.87137 14.9816 3.23009 14.7745L4.34723 14.1295C4.77355 14.7121 5.28775 15.2263 5.87031 15.6526L5.22538 16.7697C5.01827 17.1284 5.14118 17.5871 5.4999 17.7942C5.85861 18.0013 6.31731 17.8784 6.52441 17.5197L7.1687 16.4038C7.81671 16.6907 8.51643 16.8822 9.25 16.9603V18.25C9.25 18.6642 9.58579 19 10 19C10.4142 19 10.75 18.6642 10.75 18.25V16.9603C11.4836 16.8822 12.1833 16.6907 12.8313 16.4038L13.4756 17.5197C13.6827 17.8784 14.1414 18.0013 14.5001 17.7942C14.8588 17.5871 14.9817 17.1284 14.7746 16.7697L14.1297 15.6526C14.7122 15.2263 15.2264 14.7121 15.6527 14.1296L16.7698 14.7745C17.1285 14.9816 17.5872 14.8587 17.7943 14.5C18.0014 14.1413 17.8785 13.6826 17.5198 13.4755L16.4038 12.8312C16.6907 12.1832 16.8822 11.4835 16.9603 10.75H18.25C18.6642 10.75 19 10.4142 19 10C19 9.58579 18.6642 9.25 18.25 9.25H16.9603C16.8822 8.51646 16.6907 7.81678 16.4038 7.16879L17.5198 6.52451C17.8785 6.3174 18.0014 5.85871 17.7943 5.49999C17.5872 5.14127 17.1285 5.01836 16.7698 5.22547L15.6527 5.8704C15.2264 5.2878 14.7121 4.77358 14.1295 4.34724ZM10 4.5C9.0112 4.5 8.08334 4.76094 7.28153 5.2177C7.27126 5.22431 7.26079 5.2307 7.2501 5.23687C7.23978 5.24283 7.22937 5.24852 7.21889 5.25393C6.40668 5.7309 5.72776 6.4104 5.25148 7.22307C5.24674 7.2321 5.2418 7.24107 5.23666 7.24999C5.2313 7.25926 5.22578 7.26837 5.2201 7.27733C4.76185 8.0801 4.5 9.00947 4.5 10C4.5 10.9904 4.76179 11.9197 5.21995 12.7224C5.22569 12.7314 5.23126 12.7406 5.23666 12.75C5.24185 12.759 5.24683 12.768 5.25161 12.7772C5.72819 13.5903 6.40765 14.27 7.2205 14.747C7.23036 14.7521 7.24017 14.7575 7.2499 14.7631C7.26 14.769 7.26992 14.775 7.27965 14.7812C8.08189 15.2387 9.01042 15.5 10 15.5C10.9897 15.5 11.9184 15.2386 12.7207 14.781C12.7303 14.7749 12.7401 14.7689 12.7501 14.7632C12.7597 14.7576 12.7694 14.7523 12.7792 14.7472C13.5913 14.2707 14.2704 13.5918 14.7469 12.7797C14.7521 12.7697 14.7575 12.7598 14.7632 12.75C14.7691 12.7398 14.7751 12.7298 14.7814 12.72C15.2387 11.9179 15.5 10.9894 15.5 10C15.5 9.01046 15.2387 8.08196 14.7813 7.27974C14.7751 7.27001 14.769 7.26009 14.7632 7.24999C14.7576 7.24025 14.7522 7.23044 14.7471 7.22057C14.2708 6.40891 13.5923 5.73024 12.7808 5.25375C12.7704 5.24838 12.7601 5.24275 12.7499 5.23685C12.7393 5.23074 12.7289 5.22441 12.7188 5.21788C11.9169 4.761 10.9889 4.5 10 4.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/command-line.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.25 3C2.00736 3 1 4.00736 1 5.25V14.75C1 15.9926 2.00736 17 3.25 17H16.75C17.9926 17 19 15.9926 19 14.75V5.25C19 4.00736 17.9926 3 16.75 3H3.25ZM4.19253 11.7517C3.91544 11.4438 3.94039 10.9696 4.24828 10.6925L6.12886 9L4.24828 7.30747C3.94039 7.03038 3.91543 6.55616 4.19253 6.24828C4.46962 5.94039 4.94384 5.91544 5.25172 6.19253L7.75172 8.44253C7.90976 8.58476 8 8.78738 8 9C8 9.21261 7.90976 9.41524 7.75172 9.55747L5.25172 11.8075C4.94384 12.0846 4.46962 12.0596 4.19253 11.7517ZM9.75 10.25C9.33579 10.25 9 10.5858 9 11C9 11.4142 9.33579 11.75 9.75 11.75H12.25C12.6642 11.75 13 11.4142 13 11C13 10.5858 12.6642 10.25 12.25 10.25H9.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.25 3C2.00736 3 1 4.00736 1 5.25V14.75C1 15.9926 2.00736 17 3.25 17H16.75C17.9926 17 19 15.9926 19 14.75V5.25C19 4.00736 17.9926 3 16.75 3H3.25ZM4.19253 11.7517C3.91544 11.4438 3.94039 10.9696 4.24828 10.6925L6.12886 9L4.24828 7.30747C3.94039 7.03038 3.91543 6.55616 4.19253 6.24828C4.46962 5.94039 4.94384 5.91544 5.25172 6.19253L7.75172 8.44253C7.90976 8.58476 8 8.78738 8 9C8 9.21261 7.90976 9.41524 7.75172 9.55747L5.25172 11.8075C4.94384 12.0846 4.46962 12.0596 4.19253 11.7517ZM9.75 10.25C9.33579 10.25 9 10.5858 9 11C9 11.4142 9.33579 11.75 9.75 11.75H12.25C12.6642 11.75 13 11.4142 13 11C13 10.5858 12.6642 10.25 12.25 10.25H9.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/computer-desktop.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 4.25C2 3.00736 3.00736 2 4.25 2H15.75C16.9926 2 18 3.00736 18 4.25V12.75C18 13.9926 16.9926 15 15.75 15H12.6448C12.8417 15.6619 13.2292 16.2418 13.7449 16.6767C13.9856 16.8798 14.0738 17.2116 13.9657 17.5074C13.8576 17.8032 13.5762 18 13.2613 18H6.73881C6.42387 18 6.14248 17.8032 6.03437 17.5074C5.92627 17.2116 6.01449 16.8798 6.25522 16.6767C6.77086 16.2418 7.15838 15.6619 7.35525 15H4.25C3.00736 15 2 13.9926 2 12.75V4.25ZM3.5 4.25C3.5 3.83579 3.83579 3.5 4.25 3.5H15.75C16.1642 3.5 16.5 3.83579 16.5 4.25V11.75C16.5 12.1642 16.1642 12.5 15.75 12.5H4.25C3.83579 12.5 3.5 12.1642 3.5 11.75V4.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 4.25C2 3.00736 3.00736 2 4.25 2H15.75C16.9926 2 18 3.00736 18 4.25V12.75C18 13.9926 16.9926 15 15.75 15H12.6448C12.8417 15.6619 13.2292 16.2418 13.7449 16.6767C13.9856 16.8798 14.0738 17.2116 13.9657 17.5074C13.8576 17.8032 13.5762 18 13.2613 18H6.73881C6.42387 18 6.14248 17.8032 6.03437 17.5074C5.92627 17.2116 6.01449 16.8798 6.25522 16.6767C6.77086 16.2418 7.15838 15.6619 7.35525 15H4.25C3.00736 15 2 13.9926 2 12.75V4.25ZM3.5 4.25C3.5 3.83579 3.83579 3.5 4.25 3.5H15.75C16.1642 3.5 16.5 3.83579 16.5 4.25V11.75C16.5 12.1642 16.1642 12.5 15.75 12.5H4.25C3.83579 12.5 3.5 12.1642 3.5 11.75V4.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cpu-chip.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M14 6H6V14H14V6Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.25 3V1.75C9.25 1.33579 9.58579 1 10 1C10.4142 1 10.75 1.33579 10.75 1.75V3H12.25V1.75C12.25 1.33579 12.5858 1 13 1C13.4142 1 13.75 1.33579 13.75 1.75V3H14.25C15.7688 3 17 4.23122 17 5.75V6.25H18.25C18.6642 6.25 19 6.58579 19 7C19 7.41421 18.6642 7.75 18.25 7.75H17V9.25H18.25C18.6642 9.25 19 9.58579 19 10C19 10.4142 18.6642 10.75 18.25 10.75H17V12.25H18.25C18.6642 12.25 19 12.5858 19 13C19 13.4142 18.6642 13.75 18.25 13.75H17V14.25C17 15.7688 15.7688 17 14.25 17H13.75V18.25C13.75 18.6642 13.4142 19 13 19C12.5858 19 12.25 18.6642 12.25 18.25V17H10.75V18.25C10.75 18.6642 10.4142 19 10 19C9.58579 19 9.25 18.6642 9.25 18.25V17H7.75V18.25C7.75 18.6642 7.41421 19 7 19C6.58579 19 6.25 18.6642 6.25 18.25V17H5.75C4.23122 17 3 15.7688 3 14.25V13.75H1.75C1.33579 13.75 1 13.4142 1 13C1 12.5858 1.33579 12.25 1.75 12.25H3V10.75H1.75C1.33579 10.75 1 10.4142 1 10C1 9.58579 1.33579 9.25 1.75 9.25H3V7.75H1.75C1.33579 7.75 1 7.41421 1 7C1 6.58579 1.33579 6.25 1.75 6.25H3V5.75C3 4.23122 4.23122 3 5.75 3H6.25V1.75C6.25 1.33579 6.58579 1 7 1C7.41421 1 7.75 1.33579 7.75 1.75V3H9.25ZM4.5 5.75C4.5 5.05964 5.05964 4.5 5.75 4.5H14.25C14.9404 4.5 15.5 5.05964 15.5 5.75V14.25C15.5 14.9404 14.9404 15.5 14.25 15.5H5.75C5.05964 15.5 4.5 14.9404 4.5 14.25V5.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M14 6H6V14H14V6Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.25 3V1.75C9.25 1.33579 9.58579 1 10 1C10.4142 1 10.75 1.33579 10.75 1.75V3H12.25V1.75C12.25 1.33579 12.5858 1 13 1C13.4142 1 13.75 1.33579 13.75 1.75V3H14.25C15.7688 3 17 4.23122 17 5.75V6.25H18.25C18.6642 6.25 19 6.58579 19 7C19 7.41421 18.6642 7.75 18.25 7.75H17V9.25H18.25C18.6642 9.25 19 9.58579 19 10C19 10.4142 18.6642 10.75 18.25 10.75H17V12.25H18.25C18.6642 12.25 19 12.5858 19 13C19 13.4142 18.6642 13.75 18.25 13.75H17V14.25C17 15.7688 15.7688 17 14.25 17H13.75V18.25C13.75 18.6642 13.4142 19 13 19C12.5858 19 12.25 18.6642 12.25 18.25V17H10.75V18.25C10.75 18.6642 10.4142 19 10 19C9.58579 19 9.25 18.6642 9.25 18.25V17H7.75V18.25C7.75 18.6642 7.41421 19 7 19C6.58579 19 6.25 18.6642 6.25 18.25V17H5.75C4.23122 17 3 15.7688 3 14.25V13.75H1.75C1.33579 13.75 1 13.4142 1 13C1 12.5858 1.33579 12.25 1.75 12.25H3V10.75H1.75C1.33579 10.75 1 10.4142 1 10C1 9.58579 1.33579 9.25 1.75 9.25H3V7.75H1.75C1.33579 7.75 1 7.41421 1 7C1 6.58579 1.33579 6.25 1.75 6.25H3V5.75C3 4.23122 4.23122 3 5.75 3H6.25V1.75C6.25 1.33579 6.58579 1 7 1C7.41421 1 7.75 1.33579 7.75 1.75V3H9.25ZM4.5 5.75C4.5 5.05964 5.05964 4.5 5.75 4.5H14.25C14.9404 4.5 15.5 5.05964 15.5 5.75V14.25C15.5 14.9404 14.9404 15.5 14.25 15.5H5.75C5.05964 15.5 4.5 14.9404 4.5 14.25V5.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/credit-card.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.5 4C1.67157 4 1 4.67157 1 5.5V6H19V5.5C19 4.67157 18.3284 4 17.5 4H2.5ZM19 8.5H1V14.5C1 15.3284 1.67157 16 2.5 16H17.5C18.3284 16 19 15.3284 19 14.5V8.5ZM3 13.25C3 12.8358 3.33579 12.5 3.75 12.5H5.25C5.66421 12.5 6 12.8358 6 13.25C6 13.6642 5.66421 14 5.25 14H3.75C3.33579 14 3 13.6642 3 13.25ZM7.75 12.5C7.33579 12.5 7 12.8358 7 13.25C7 13.6642 7.33579 14 7.75 14H11.25C11.6642 14 12 13.6642 12 13.25C12 12.8358 11.6642 12.5 11.25 12.5H7.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.5 4C1.67157 4 1 4.67157 1 5.5V6H19V5.5C19 4.67157 18.3284 4 17.5 4H2.5ZM19 8.5H1V14.5C1 15.3284 1.67157 16 2.5 16H17.5C18.3284 16 19 15.3284 19 14.5V8.5ZM3 13.25C3 12.8358 3.33579 12.5 3.75 12.5H5.25C5.66421 12.5 6 12.8358 6 13.25C6 13.6642 5.66421 14 5.25 14H3.75C3.33579 14 3 13.6642 3 13.25ZM7.75 12.5C7.33579 12.5 7 12.8358 7 13.25C7 13.6642 7.33579 14 7.75 14H11.25C11.6642 14 12 13.6642 12 13.25C12 12.8358 11.6642 12.5 11.25 12.5H7.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cube.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.3623 1.09332C10.1368 0.968894 9.86321 0.968894 9.63769 1.09332L2.52344 5.01842L10 9.14342L17.4766 5.01842L10.3623 1.09332ZM18 6.44278L10.75 10.4428V18.6928L17.6123 14.9067C17.8515 14.7747 18 14.5232 18 14.25V6.44278ZM9.25 18.6928V10.4428L2 6.44278V14.25C2 14.5232 2.14852 14.7747 2.38769 14.9067L9.25 18.6928Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.3623 1.09332C10.1368 0.968894 9.86321 0.968894 9.63769 1.09332L2.52344 5.01842L10 9.14342L17.4766 5.01842L10.3623 1.09332ZM18 6.44278L10.75 10.4428V18.6928L17.6123 14.9067C17.8515 14.7747 18 14.5232 18 14.25V6.44278ZM9.25 18.6928V10.4428L2 6.44278V14.25C2 14.5232 2.14852 14.7747 2.38769 14.9067L9.25 18.6928Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/currency-dollar.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.7499 10.8176V13.4324C11.1816 13.3527 11.5745 13.2046 11.8876 12.9999C12.3698 12.6846 12.4999 12.352 12.4999 12.125C12.4999 11.898 12.3698 11.5654 11.8876 11.2501C11.5745 11.0454 11.1816 10.8973 10.7499 10.8176Z" fill="#0F172A"/>
    <path d="M8.32961 8.61947C8.38337 8.67543 8.44464 8.73053 8.51404 8.78416C8.72197 8.94484 8.97355 9.06777 9.25 9.1469V6.60315C9.17545 6.62449 9.10271 6.64901 9.03215 6.6766C8.98721 6.69417 8.94315 6.71299 8.90007 6.73302C8.75996 6.79816 8.63019 6.87614 8.51404 6.96589C8.13658 7.25757 8 7.59253 8 7.87503C8 8.05887 8.05784 8.26493 8.20228 8.46683C8.23898 8.51812 8.28126 8.56915 8.32961 8.61947Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM9.99994 4C10.4142 4 10.7499 4.33579 10.7499 4.75V5.06584C11.3423 5.17106 11.9182 5.40427 12.4031 5.77893C12.8293 6.10829 13.1467 6.51836 13.3282 6.97896C13.4801 7.36432 13.2908 7.79985 12.9055 7.95174C12.5201 8.10363 12.0846 7.91437 11.9327 7.52901C11.8599 7.34437 11.72 7.14675 11.4859 6.96586C11.278 6.80519 11.0264 6.68225 10.7499 6.60312V9.29944C11.448 9.39233 12.1327 9.61819 12.7085 9.99467C13.4955 10.5093 13.9999 11.2644 13.9999 12.125C13.9999 12.9856 13.4955 13.7407 12.7085 14.2553C12.1327 14.6318 11.448 14.8577 10.7499 14.9506V15.25C10.7499 15.6642 10.4142 16 9.99994 16C9.58573 16 9.24994 15.6642 9.24994 15.25V14.9506C8.55186 14.8577 7.8672 14.6318 7.29141 14.2553C6.80887 13.9398 6.4337 13.5376 6.21337 13.0672C6.0377 12.692 6.19937 12.2455 6.57449 12.0699C6.9496 11.8942 7.39611 12.0559 7.57178 12.431C7.65258 12.6035 7.81692 12.8067 8.11229 12.9999C8.42537 13.2046 8.8183 13.3526 9.24994 13.4324V10.6842C8.65762 10.5789 8.08167 10.3457 7.59681 9.97107C6.90033 9.43288 6.49994 8.68017 6.49994 7.875C6.49994 7.06983 6.90034 6.31712 7.59681 5.77893C8.08167 5.40427 8.65762 5.17106 9.24994 5.06584V4.75C9.24994 4.33579 9.58573 4 9.99994 4Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10.7499 10.8176V13.4324C11.1816 13.3527 11.5745 13.2046 11.8876 12.9999C12.3698 12.6846 12.4999 12.352 12.4999 12.125C12.4999 11.898 12.3698 11.5654 11.8876 11.2501C11.5745 11.0454 11.1816 10.8973 10.7499 10.8176Z\" fill=\"#0F172A\"/>\n<path d=\"M8.32961 8.61947C8.38337 8.67543 8.44464 8.73053 8.51404 8.78416C8.72197 8.94484 8.97355 9.06777 9.25 9.1469V6.60315C9.17545 6.62449 9.10271 6.64901 9.03215 6.6766C8.98721 6.69417 8.94315 6.71299 8.90007 6.73302C8.75996 6.79816 8.63019 6.87614 8.51404 6.96589C8.13658 7.25757 8 7.59253 8 7.87503C8 8.05887 8.05784 8.26493 8.20228 8.46683C8.23898 8.51812 8.28126 8.56915 8.32961 8.61947Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM9.99994 4C10.4142 4 10.7499 4.33579 10.7499 4.75V5.06584C11.3423 5.17106 11.9182 5.40427 12.4031 5.77893C12.8293 6.10829 13.1467 6.51836 13.3282 6.97896C13.4801 7.36432 13.2908 7.79985 12.9055 7.95174C12.5201 8.10363 12.0846 7.91437 11.9327 7.52901C11.8599 7.34437 11.72 7.14675 11.4859 6.96586C11.278 6.80519 11.0264 6.68225 10.7499 6.60312V9.29944C11.448 9.39233 12.1327 9.61819 12.7085 9.99467C13.4955 10.5093 13.9999 11.2644 13.9999 12.125C13.9999 12.9856 13.4955 13.7407 12.7085 14.2553C12.1327 14.6318 11.448 14.8577 10.7499 14.9506V15.25C10.7499 15.6642 10.4142 16 9.99994 16C9.58573 16 9.24994 15.6642 9.24994 15.25V14.9506C8.55186 14.8577 7.8672 14.6318 7.29141 14.2553C6.80887 13.9398 6.4337 13.5376 6.21337 13.0672C6.0377 12.692 6.19937 12.2455 6.57449 12.0699C6.9496 11.8942 7.39611 12.0559 7.57178 12.431C7.65258 12.6035 7.81692 12.8067 8.11229 12.9999C8.42537 13.2046 8.8183 13.3526 9.24994 13.4324V10.6842C8.65762 10.5789 8.08167 10.3457 7.59681 9.97107C6.90033 9.43288 6.49994 8.68017 6.49994 7.875C6.49994 7.06983 6.90034 6.31712 7.59681 5.77893C8.08167 5.40427 8.65762 5.17106 9.24994 5.06584V4.75C9.24994 4.33579 9.58573 4 9.99994 4Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/currency-euro.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM8.79767 7.45038C9.31032 6.78 9.93284 6.5 10.5 6.5C11.0672 6.5 11.6897 6.78 12.2023 7.45038C12.4539 7.77942 12.9247 7.84218 13.2537 7.59056C13.5827 7.33895 13.6455 6.86824 13.3939 6.53921C12.6373 5.54986 11.5963 5 10.5 5C9.40366 5 8.36269 5.54986 7.60613 6.53921C7.27168 6.97657 7.01308 7.47233 6.83031 8H5.75C5.33579 8 5 8.33579 5 8.75C5 9.16421 5.33579 9.5 5.75 9.5H6.51977C6.49341 9.83243 6.49341 10.1676 6.51977 10.5H5.75C5.33579 10.5 5 10.8358 5 11.25C5 11.6642 5.33579 12 5.75 12H6.83031C7.01308 12.5277 7.27168 13.0234 7.60613 13.4608C8.36269 14.4501 9.40366 15 10.5 15C11.5963 15 12.6373 14.4501 13.3939 13.4608C13.6455 13.1318 13.5827 12.661 13.2537 12.4094C12.9247 12.1578 12.4539 12.2206 12.2023 12.5496C11.6897 13.22 11.0672 13.5 10.5 13.5C9.93284 13.5 9.31032 13.22 8.79767 12.5496C8.66735 12.3792 8.55299 12.1948 8.4546 12H10.25C10.6642 12 11 11.6642 11 11.25C11 10.8358 10.6642 10.5 10.25 10.5H8.02592C7.99136 10.1685 7.99136 9.83152 8.02592 9.5H10.25C10.6642 9.5 11 9.16421 11 8.75C11 8.33579 10.6642 8 10.25 8H8.4546C8.55299 7.80515 8.66735 7.62081 8.79767 7.45038Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM8.79767 7.45038C9.31032 6.78 9.93284 6.5 10.5 6.5C11.0672 6.5 11.6897 6.78 12.2023 7.45038C12.4539 7.77942 12.9247 7.84218 13.2537 7.59056C13.5827 7.33895 13.6455 6.86824 13.3939 6.53921C12.6373 5.54986 11.5963 5 10.5 5C9.40366 5 8.36269 5.54986 7.60613 6.53921C7.27168 6.97657 7.01308 7.47233 6.83031 8H5.75C5.33579 8 5 8.33579 5 8.75C5 9.16421 5.33579 9.5 5.75 9.5H6.51977C6.49341 9.83243 6.49341 10.1676 6.51977 10.5H5.75C5.33579 10.5 5 10.8358 5 11.25C5 11.6642 5.33579 12 5.75 12H6.83031C7.01308 12.5277 7.27168 13.0234 7.60613 13.4608C8.36269 14.4501 9.40366 15 10.5 15C11.5963 15 12.6373 14.4501 13.3939 13.4608C13.6455 13.1318 13.5827 12.661 13.2537 12.4094C12.9247 12.1578 12.4539 12.2206 12.2023 12.5496C11.6897 13.22 11.0672 13.5 10.5 13.5C9.93284 13.5 9.31032 13.22 8.79767 12.5496C8.66735 12.3792 8.55299 12.1948 8.4546 12H10.25C10.6642 12 11 11.6642 11 11.25C11 10.8358 10.6642 10.5 10.25 10.5H8.02592C7.99136 10.1685 7.99136 9.83152 8.02592 9.5H10.25C10.6642 9.5 11 9.16421 11 8.75C11 8.33579 10.6642 8 10.25 8H8.4546C8.55299 7.80515 8.66735 7.62081 8.79767 7.45038Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/currency-pound.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM8.73223 6.23223C9.70854 5.25592 11.2915 5.25592 12.2678 6.23223C12.5607 6.52513 13.0355 6.52513 13.3284 6.23223C13.6213 5.93934 13.6213 5.46447 13.3284 5.17157C11.7663 3.60948 9.23367 3.60948 7.67157 5.17157C6.89067 5.95247 6.5 6.97747 6.5 8V8.16481C6.5 8.52945 6.53382 8.89272 6.60072 9.25H6.25C5.83579 9.25 5.5 9.58579 5.5 10C5.5 10.4142 5.83579 10.75 6.25 10.75H6.98724C7.175 11.782 7.05016 12.853 6.61952 13.8219L6.56464 13.9454C6.44963 14.2042 6.49018 14.5057 6.66948 14.7249C6.84878 14.9441 7.13625 15.0436 7.4127 14.9821L8.68531 14.6993C9.21441 14.5818 9.76361 14.589 10.2894 14.7204C11.0842 14.9191 11.9158 14.9191 12.7106 14.7204L13.6819 14.4776C14.0837 14.3771 14.3281 13.9699 14.2276 13.5681C14.1271 13.1663 13.7199 12.9219 13.3181 13.0224L12.3468 13.2652C11.7908 13.4042 11.2092 13.4042 10.6532 13.2652C9.91296 13.0802 9.14026 13.0673 8.39452 13.2275C8.58441 12.4159 8.62237 11.5757 8.5063 10.75H9.75C10.1642 10.75 10.5 10.4142 10.5 10C10.5 9.58579 10.1642 9.25 9.75 9.25H8.13603C8.0458 8.89574 8 8.53121 8 8.16481V8C8 7.35903 8.24393 6.72054 8.73223 6.23223Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM8.73223 6.23223C9.70854 5.25592 11.2915 5.25592 12.2678 6.23223C12.5607 6.52513 13.0355 6.52513 13.3284 6.23223C13.6213 5.93934 13.6213 5.46447 13.3284 5.17157C11.7663 3.60948 9.23367 3.60948 7.67157 5.17157C6.89067 5.95247 6.5 6.97747 6.5 8V8.16481C6.5 8.52945 6.53382 8.89272 6.60072 9.25H6.25C5.83579 9.25 5.5 9.58579 5.5 10C5.5 10.4142 5.83579 10.75 6.25 10.75H6.98724C7.175 11.782 7.05016 12.853 6.61952 13.8219L6.56464 13.9454C6.44963 14.2042 6.49018 14.5057 6.66948 14.7249C6.84878 14.9441 7.13625 15.0436 7.4127 14.9821L8.68531 14.6993C9.21441 14.5818 9.76361 14.589 10.2894 14.7204C11.0842 14.9191 11.9158 14.9191 12.7106 14.7204L13.6819 14.4776C14.0837 14.3771 14.3281 13.9699 14.2276 13.5681C14.1271 13.1663 13.7199 12.9219 13.3181 13.0224L12.3468 13.2652C11.7908 13.4042 11.2092 13.4042 10.6532 13.2652C9.91296 13.0802 9.14026 13.0673 8.39452 13.2275C8.58441 12.4159 8.62237 11.5757 8.5063 10.75H9.75C10.1642 10.75 10.5 10.4142 10.5 10C10.5 9.58579 10.1642 9.25 9.75 9.25H8.13603C8.0458 8.89574 8 8.53121 8 8.16481V8C8 7.35903 8.24393 6.72054 8.73223 6.23223Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/currency-rupee.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM6.00002 5.75C6.00002 5.33579 6.33581 5 6.75002 5H13.25C13.6642 5 14 5.33579 14 5.75C14 6.16421 13.6642 6.5 13.25 6.5H11.1227C11.5229 6.99922 11.8059 7.59647 11.9298 8.25H13.25C13.6642 8.25 14 8.58579 14 9C14 9.41421 13.6642 9.75 13.25 9.75H11.9298C11.6108 11.4316 10.2393 12.7405 8.52636 12.9657L10.2804 14.7197C10.5732 15.0126 10.5732 15.4874 10.2804 15.7803C9.98746 16.0732 9.51259 16.0732 9.21969 15.7803L6.21969 12.7803C6.00519 12.5658 5.94103 12.2432 6.05711 11.963C6.1732 11.6827 6.44668 11.5 6.75002 11.5H8.00002C9.11943 11.5 10.067 10.7643 10.3856 9.75H6.75C6.33579 9.75 6 9.41421 6 9C6 8.58579 6.33579 8.25 6.75 8.25H10.3856C10.067 7.23572 9.11943 6.5 8.00002 6.5H6.75002C6.33581 6.5 6.00002 6.16421 6.00002 5.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM6.00002 5.75C6.00002 5.33579 6.33581 5 6.75002 5H13.25C13.6642 5 14 5.33579 14 5.75C14 6.16421 13.6642 6.5 13.25 6.5H11.1227C11.5229 6.99922 11.8059 7.59647 11.9298 8.25H13.25C13.6642 8.25 14 8.58579 14 9C14 9.41421 13.6642 9.75 13.25 9.75H11.9298C11.6108 11.4316 10.2393 12.7405 8.52636 12.9657L10.2804 14.7197C10.5732 15.0126 10.5732 15.4874 10.2804 15.7803C9.98746 16.0732 9.51259 16.0732 9.21969 15.7803L6.21969 12.7803C6.00519 12.5658 5.94103 12.2432 6.05711 11.963C6.1732 11.6827 6.44668 11.5 6.75002 11.5H8.00002C9.11943 11.5 10.067 10.7643 10.3856 9.75H6.75C6.33579 9.75 6 9.41421 6 9C6 8.58579 6.33579 8.25 6.75 8.25H10.3856C10.067 7.23572 9.11943 6.5 8.00002 6.5H6.75002C6.33581 6.5 6.00002 6.16421 6.00002 5.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/currency-yen.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM7.34581 5.29439C7.09419 4.96536 6.62349 4.9026 6.29445 5.15421C5.96542 5.40582 5.90266 5.87653 6.15427 6.20557L9.05588 9.99998H6.75004C6.33583 9.99998 6.00004 10.3358 6.00004 10.75C6.00004 11.1642 6.33583 11.5 6.75004 11.5H9.25004V12.5H6.75004C6.33583 12.5 6.00004 12.8358 6.00004 13.25C6.00004 13.6642 6.33583 14 6.75004 14H9.25004V15.25C9.25004 15.6642 9.58583 16 10 16C10.4143 16 10.75 15.6642 10.75 15.25V14H13.25C13.6643 14 14 13.6642 14 13.25C14 12.8358 13.6643 12.5 13.25 12.5H10.75V11.5H13.25C13.6643 11.5 14 11.1642 14 10.75C14 10.3358 13.6643 9.99998 13.25 9.99998H10.9442L13.8458 6.20557C14.0974 5.87653 14.0347 5.40582 13.7056 5.15421C13.3766 4.9026 12.9059 4.96536 12.6543 5.29439L10 8.76531L7.34581 5.29439Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM7.34581 5.29439C7.09419 4.96536 6.62349 4.9026 6.29445 5.15421C5.96542 5.40582 5.90266 5.87653 6.15427 6.20557L9.05588 9.99998H6.75004C6.33583 9.99998 6.00004 10.3358 6.00004 10.75C6.00004 11.1642 6.33583 11.5 6.75004 11.5H9.25004V12.5H6.75004C6.33583 12.5 6.00004 12.8358 6.00004 13.25C6.00004 13.6642 6.33583 14 6.75004 14H9.25004V15.25C9.25004 15.6642 9.58583 16 10 16C10.4143 16 10.75 15.6642 10.75 15.25V14H13.25C13.6643 14 14 13.6642 14 13.25C14 12.8358 13.6643 12.5 13.25 12.5H10.75V11.5H13.25C13.6643 11.5 14 11.1642 14 10.75C14 10.3358 13.6643 9.99998 13.25 9.99998H10.9442L13.8458 6.20557C14.0974 5.87653 14.0347 5.40582 13.7056 5.15421C13.3766 4.9026 12.9059 4.96536 12.6543 5.29439L10 8.76531L7.34581 5.29439Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cursor-arrow-rays.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 1C10.4142 1 10.75 1.33579 10.75 1.75V3.25C10.75 3.66421 10.4142 4 10 4C9.58579 4 9.25 3.66421 9.25 3.25V1.75C9.25 1.33579 9.58579 1 10 1ZM5.05025 3.05025C5.34315 2.75736 5.81802 2.75736 6.11091 3.05025L7.17157 4.11091C7.46447 4.40381 7.46447 4.87868 7.17157 5.17157C6.87868 5.46447 6.40381 5.46447 6.11091 5.17157L5.05025 4.11091C4.75736 3.81802 4.75736 3.34315 5.05025 3.05025ZM14.9497 3.05025C15.2426 3.34315 15.2426 3.81802 14.9497 4.11091L13.8891 5.17157C13.5962 5.46447 13.1213 5.46447 12.8284 5.17157C12.5355 4.87868 12.5355 4.40381 12.8284 4.11091L13.8891 3.05025C14.182 2.75736 14.6569 2.75736 14.9497 3.05025ZM3 8C3 7.58579 3.33579 7.25 3.75 7.25H5.25C5.66421 7.25 6 7.58579 6 8C6 8.41421 5.66421 8.75 5.25 8.75H3.75C3.33579 8.75 3 8.41421 3 8ZM14 8C14 7.58579 14.3358 7.25 14.75 7.25H16.25C16.6642 7.25 17 7.58579 17 8C17 8.41421 16.6642 8.75 16.25 8.75H14.75C14.3358 8.75 14 8.41421 14 8ZM7.17157 10.8284C7.46447 11.1213 7.46447 11.5962 7.17157 11.8891L6.11091 12.9497C5.81802 13.2426 5.34315 13.2426 5.05025 12.9497C4.75736 12.6569 4.75736 12.182 5.05025 11.8891L6.11091 10.8284C6.40381 10.5355 6.87868 10.5355 7.17157 10.8284ZM10.7657 7.51062C10.5871 7.24492 10.2596 7.12184 9.95029 7.20417C9.64094 7.2865 9.41795 7.5561 9.3951 7.8754L8.90409 14.7363C8.88303 15.0306 9.0365 15.3099 9.29622 15.4499C9.55594 15.59 9.87365 15.5647 10.108 15.3854L11.1508 14.5873L12.1363 18.2653C12.2435 18.6654 12.6548 18.9028 13.0549 18.7956C13.455 18.6884 13.6924 18.2771 13.5852 17.877L12.6083 14.2312L13.9005 14.4349C14.1951 14.4814 14.4893 14.3489 14.6497 14.0974C14.81 13.846 14.8062 13.5233 14.6398 13.2758L10.7657 7.51062Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 1C10.4142 1 10.75 1.33579 10.75 1.75V3.25C10.75 3.66421 10.4142 4 10 4C9.58579 4 9.25 3.66421 9.25 3.25V1.75C9.25 1.33579 9.58579 1 10 1ZM5.05025 3.05025C5.34315 2.75736 5.81802 2.75736 6.11091 3.05025L7.17157 4.11091C7.46447 4.40381 7.46447 4.87868 7.17157 5.17157C6.87868 5.46447 6.40381 5.46447 6.11091 5.17157L5.05025 4.11091C4.75736 3.81802 4.75736 3.34315 5.05025 3.05025ZM14.9497 3.05025C15.2426 3.34315 15.2426 3.81802 14.9497 4.11091L13.8891 5.17157C13.5962 5.46447 13.1213 5.46447 12.8284 5.17157C12.5355 4.87868 12.5355 4.40381 12.8284 4.11091L13.8891 3.05025C14.182 2.75736 14.6569 2.75736 14.9497 3.05025ZM3 8C3 7.58579 3.33579 7.25 3.75 7.25H5.25C5.66421 7.25 6 7.58579 6 8C6 8.41421 5.66421 8.75 5.25 8.75H3.75C3.33579 8.75 3 8.41421 3 8ZM14 8C14 7.58579 14.3358 7.25 14.75 7.25H16.25C16.6642 7.25 17 7.58579 17 8C17 8.41421 16.6642 8.75 16.25 8.75H14.75C14.3358 8.75 14 8.41421 14 8ZM7.17157 10.8284C7.46447 11.1213 7.46447 11.5962 7.17157 11.8891L6.11091 12.9497C5.81802 13.2426 5.34315 13.2426 5.05025 12.9497C4.75736 12.6569 4.75736 12.182 5.05025 11.8891L6.11091 10.8284C6.40381 10.5355 6.87868 10.5355 7.17157 10.8284ZM10.7657 7.51062C10.5871 7.24492 10.2596 7.12184 9.95029 7.20417C9.64094 7.2865 9.41795 7.5561 9.3951 7.8754L8.90409 14.7363C8.88303 15.0306 9.0365 15.3099 9.29622 15.4499C9.55594 15.59 9.87365 15.5647 10.108 15.3854L11.1508 14.5873L12.1363 18.2653C12.2435 18.6654 12.6548 18.9028 13.0549 18.7956C13.455 18.6884 13.6924 18.2771 13.5852 17.877L12.6083 14.2312L13.9005 14.4349C14.1951 14.4814 14.4893 14.3489 14.6497 14.0974C14.81 13.846 14.8062 13.5233 14.6398 13.2758L10.7657 7.51062Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/cursor-arrow-ripple.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.11097 11.8891C3.96309 9.7412 3.96309 6.2588 6.11097 4.11091C8.25886 1.96303 11.7413 1.96303 13.8891 4.11091C14.9632 5.185 15.5001 6.59127 15.5001 8C15.5001 8.41421 15.8358 8.75 16.2501 8.75C16.6643 8.75 17.0001 8.41421 17.0001 8C17.0001 6.2097 16.3165 4.41694 14.9498 3.05025C12.2161 0.316583 7.78398 0.316582 5.05031 3.05025C2.31664 5.78392 2.31664 10.2161 5.05031 12.9497C5.34321 13.2426 5.81808 13.2426 6.11097 12.9497C6.40387 12.6569 6.40387 12.182 6.11097 11.8891ZM8.23233 6.23223C7.25602 7.20854 7.25602 8.79146 8.23233 9.76777C8.52522 10.0607 8.52522 10.5355 8.23233 10.8284C7.93944 11.1213 7.46456 11.1213 7.17167 10.8284C5.60957 9.26633 5.60957 6.73367 7.17167 5.17157C8.73377 3.60948 11.2664 3.60948 12.8285 5.17157C13.6094 5.95247 14.0001 6.97747 14.0001 8C14.0001 8.41421 13.6643 8.75 13.2501 8.75C12.8359 8.75 12.5001 8.41421 12.5001 8C12.5001 7.35903 12.2562 6.72054 11.7679 6.23223C10.7916 5.25592 9.20864 5.25592 8.23233 6.23223ZM10.7657 7.51062C10.5871 7.24492 10.2596 7.12184 9.95027 7.20417C9.64092 7.2865 9.41793 7.5561 9.39508 7.8754L8.90407 14.7363C8.88301 15.0306 9.03648 15.3099 9.2962 15.4499C9.55592 15.59 9.87363 15.5647 10.108 15.3854L11.1508 14.5873L12.1363 18.2653C12.2435 18.6654 12.6548 18.9028 13.0549 18.7956C13.455 18.6884 13.6924 18.2771 13.5852 17.877L12.6083 14.2312L13.9005 14.4349C14.1951 14.4814 14.4892 14.3489 14.6496 14.0974C14.81 13.846 14.8062 13.5233 14.6398 13.2758L10.7657 7.51062Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.11097 11.8891C3.96309 9.7412 3.96309 6.2588 6.11097 4.11091C8.25886 1.96303 11.7413 1.96303 13.8891 4.11091C14.9632 5.185 15.5001 6.59127 15.5001 8C15.5001 8.41421 15.8358 8.75 16.2501 8.75C16.6643 8.75 17.0001 8.41421 17.0001 8C17.0001 6.2097 16.3165 4.41694 14.9498 3.05025C12.2161 0.316583 7.78398 0.316582 5.05031 3.05025C2.31664 5.78392 2.31664 10.2161 5.05031 12.9497C5.34321 13.2426 5.81808 13.2426 6.11097 12.9497C6.40387 12.6569 6.40387 12.182 6.11097 11.8891ZM8.23233 6.23223C7.25602 7.20854 7.25602 8.79146 8.23233 9.76777C8.52522 10.0607 8.52522 10.5355 8.23233 10.8284C7.93944 11.1213 7.46456 11.1213 7.17167 10.8284C5.60957 9.26633 5.60957 6.73367 7.17167 5.17157C8.73377 3.60948 11.2664 3.60948 12.8285 5.17157C13.6094 5.95247 14.0001 6.97747 14.0001 8C14.0001 8.41421 13.6643 8.75 13.2501 8.75C12.8359 8.75 12.5001 8.41421 12.5001 8C12.5001 7.35903 12.2562 6.72054 11.7679 6.23223C10.7916 5.25592 9.20864 5.25592 8.23233 6.23223ZM10.7657 7.51062C10.5871 7.24492 10.2596 7.12184 9.95027 7.20417C9.64092 7.2865 9.41793 7.5561 9.39508 7.8754L8.90407 14.7363C8.88301 15.0306 9.03648 15.3099 9.2962 15.4499C9.55592 15.59 9.87363 15.5647 10.108 15.3854L11.1508 14.5873L12.1363 18.2653C12.2435 18.6654 12.6548 18.9028 13.0549 18.7956C13.455 18.6884 13.6924 18.2771 13.5852 17.877L12.6083 14.2312L13.9005 14.4349C14.1951 14.4814 14.4892 14.3489 14.6496 14.0974C14.81 13.846 14.8062 13.5233 14.6398 13.2758L10.7657 7.51062Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/device-phone-mobile.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M8 16.25C8 15.8358 8.33579 15.5 8.75 15.5H11.25C11.6642 15.5 12 15.8358 12 16.25C12 16.6642 11.6642 17 11.25 17H8.75C8.33579 17 8 16.6642 8 16.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4 4C4 2.34315 5.34315 1 7 1H13C14.6569 1 16 2.34315 16 4V16C16 17.6569 14.6569 19 13 19H7C5.34315 19 4 17.6569 4 16V4ZM8 2.5V3.25C8 3.66421 8.33579 4 8.75 4H11.25C11.6642 4 12 3.66421 12 3.25V2.5H13C13.8284 2.5 14.5 3.17157 14.5 4V16C14.5 16.8284 13.8284 17.5 13 17.5H7C6.17157 17.5 5.5 16.8284 5.5 16V4C5.5 3.17157 6.17157 2.5 7 2.5H8Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M8 16.25C8 15.8358 8.33579 15.5 8.75 15.5H11.25C11.6642 15.5 12 15.8358 12 16.25C12 16.6642 11.6642 17 11.25 17H8.75C8.33579 17 8 16.6642 8 16.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4 4C4 2.34315 5.34315 1 7 1H13C14.6569 1 16 2.34315 16 4V16C16 17.6569 14.6569 19 13 19H7C5.34315 19 4 17.6569 4 16V4ZM8 2.5V3.25C8 3.66421 8.33579 4 8.75 4H11.25C11.6642 4 12 3.66421 12 3.25V2.5H13C13.8284 2.5 14.5 3.17157 14.5 4V16C14.5 16.8284 13.8284 17.5 13 17.5H7C6.17157 17.5 5.5 16.8284 5.5 16V4C5.5 3.17157 6.17157 2.5 7 2.5H8Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/device-tablet.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5 1C3.34315 1 2 2.34315 2 4V16C2 17.6569 3.34315 19 5 19H15C16.6569 19 18 17.6569 18 16V4C18 2.34315 16.6569 1 15 1H5ZM3.5 4C3.5 3.17157 4.17157 2.5 5 2.5H15C15.8284 2.5 16.5 3.17157 16.5 4V16C16.5 16.8284 15.8284 17.5 15 17.5H5C4.17157 17.5 3.5 16.8284 3.5 16V4ZM8.75 15.5C8.33579 15.5 8 15.8358 8 16.25C8 16.6642 8.33579 17 8.75 17H11.25C11.6642 17 12 16.6642 12 16.25C12 15.8358 11.6642 15.5 11.25 15.5H8.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5 1C3.34315 1 2 2.34315 2 4V16C2 17.6569 3.34315 19 5 19H15C16.6569 19 18 17.6569 18 16V4C18 2.34315 16.6569 1 15 1H5ZM3.5 4C3.5 3.17157 4.17157 2.5 5 2.5H15C15.8284 2.5 16.5 3.17157 16.5 4V16C16.5 16.8284 15.8284 17.5 15 17.5H5C4.17157 17.5 3.5 16.8284 3.5 16V4ZM8.75 15.5C8.33579 15.5 8 15.8358 8 16.25C8 16.6642 8.33579 17 8.75 17H11.25C11.6642 17 12 16.6642 12 16.25C12 15.8358 11.6642 15.5 11.25 15.5H8.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document-arrow-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM9.25 8.75C9.25 8.33579 9.58579 8 10 8C10.4142 8 10.75 8.33579 10.75 8.75V11.2955L11.6925 10.2483C11.9696 9.94039 12.4438 9.91543 12.7517 10.1925C13.0596 10.4696 13.0846 10.9438 12.8075 11.2517L10.5575 13.7517C10.4152 13.9098 10.2126 14 10 14C9.78739 14 9.58476 13.9098 9.44253 13.7517L7.19253 11.2517C6.91544 10.9438 6.94039 10.4696 7.24828 10.1925C7.55616 9.91544 8.03038 9.94039 8.30747 10.2483L9.25 11.2955V8.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM9.25 8.75C9.25 8.33579 9.58579 8 10 8C10.4142 8 10.75 8.33579 10.75 8.75V11.2955L11.6925 10.2483C11.9696 9.94039 12.4438 9.91543 12.7517 10.1925C13.0596 10.4696 13.0846 10.9438 12.8075 11.2517L10.5575 13.7517C10.4152 13.9098 10.2126 14 10 14C9.78739 14 9.58476 13.9098 9.44253 13.7517L7.19253 11.2517C6.91544 10.9438 6.94039 10.4696 7.24828 10.1925C7.55616 9.91544 8.03038 9.94039 8.30747 10.2483L9.25 11.2955V8.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document-arrow-up.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM9.25 13.25C9.25 13.6642 9.58579 14 10 14C10.4142 14 10.75 13.6642 10.75 13.25V10.7045L11.6925 11.7517C11.9696 12.0596 12.4438 12.0846 12.7517 11.8075C13.0596 11.5304 13.0846 11.0562 12.8075 10.7483L10.5575 8.24828C10.4152 8.09024 10.2126 8 10 8C9.78739 8 9.58476 8.09024 9.44253 8.24828L7.19253 10.7483C6.91544 11.0562 6.94039 11.5304 7.24828 11.8075C7.55616 12.0846 8.03038 12.0596 8.30747 11.7517L9.25 10.7045V13.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM9.25 13.25C9.25 13.6642 9.58579 14 10 14C10.4142 14 10.75 13.6642 10.75 13.25V10.7045L11.6925 11.7517C11.9696 12.0596 12.4438 12.0846 12.7517 11.8075C13.0596 11.5304 13.0846 11.0562 12.8075 10.7483L10.5575 8.24828C10.4152 8.09024 10.2126 8 10 8C9.78739 8 9.58476 8.09024 9.44253 8.24828L7.19253 10.7483C6.91544 11.0562 6.94039 11.5304 7.24828 11.8075C7.55616 12.0846 8.03038 12.0596 8.30747 11.7517L9.25 10.7045V13.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document-chart-bar.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 3.5C3 2.67157 3.67157 2 4.5 2H11.3787C11.7765 2 12.158 2.15804 12.4393 2.43934L16.5607 6.56066C16.842 6.84197 17 7.2235 17 7.62132V16.5C17 17.3284 16.3284 18 15.5 18H4.5C3.67157 18 3 17.3284 3 16.5V3.5ZM13.25 9C13.6642 9 14 9.33579 14 9.75V14.25C14 14.6642 13.6642 15 13.25 15C12.8358 15 12.5 14.6642 12.5 14.25V9.75C12.5 9.33579 12.8358 9 13.25 9ZM6.75 13C7.16421 13 7.5 13.3358 7.5 13.75V14.25C7.5 14.6642 7.16421 15 6.75 15C6.33579 15 6 14.6642 6 14.25V13.75C6 13.3358 6.33579 13 6.75 13ZM10.75 11.75C10.75 11.3358 10.4142 11 10 11C9.58579 11 9.25 11.3358 9.25 11.75V14.25C9.25 14.6642 9.58579 15 10 15C10.4142 15 10.75 14.6642 10.75 14.25V11.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 3.5C3 2.67157 3.67157 2 4.5 2H11.3787C11.7765 2 12.158 2.15804 12.4393 2.43934L16.5607 6.56066C16.842 6.84197 17 7.2235 17 7.62132V16.5C17 17.3284 16.3284 18 15.5 18H4.5C3.67157 18 3 17.3284 3 16.5V3.5ZM13.25 9C13.6642 9 14 9.33579 14 9.75V14.25C14 14.6642 13.6642 15 13.25 15C12.8358 15 12.5 14.6642 12.5 14.25V9.75C12.5 9.33579 12.8358 9 13.25 9ZM6.75 13C7.16421 13 7.5 13.3358 7.5 13.75V14.25C7.5 14.6642 7.16421 15 6.75 15C6.33579 15 6 14.6642 6 14.25V13.75C6 13.3358 6.33579 13 6.75 13ZM10.75 11.75C10.75 11.3358 10.4142 11 10 11C9.58579 11 9.25 11.3358 9.25 11.75V14.25C9.25 14.6642 9.58579 15 10 15C10.4142 15 10.75 14.6642 10.75 14.25V11.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document-check.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 3.5C3 2.67157 3.67157 2 4.5 2H11.3787C11.7765 2 12.158 2.15804 12.4393 2.43934L16.5607 6.56066C16.842 6.84197 17 7.2235 17 7.62132V16.5C17 17.3284 16.3284 18 15.5 18H4.5C3.67157 18 3 17.3284 3 16.5V3.5ZM13.8566 9.19113C14.1002 8.85614 14.0261 8.38708 13.6911 8.14345C13.3561 7.89982 12.8871 7.97388 12.6434 8.30887L9.15969 13.099L7.28033 11.2197C6.98744 10.9268 6.51256 10.9268 6.21967 11.2197C5.92678 11.5126 5.92678 11.9874 6.21967 12.2803L8.71967 14.7803C8.87477 14.9354 9.08999 15.0149 9.30867 14.9977C9.52734 14.9805 9.72754 14.8685 9.85655 14.6911L13.8566 9.19113Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 3.5C3 2.67157 3.67157 2 4.5 2H11.3787C11.7765 2 12.158 2.15804 12.4393 2.43934L16.5607 6.56066C16.842 6.84197 17 7.2235 17 7.62132V16.5C17 17.3284 16.3284 18 15.5 18H4.5C3.67157 18 3 17.3284 3 16.5V3.5ZM13.8566 9.19113C14.1002 8.85614 14.0261 8.38708 13.6911 8.14345C13.3561 7.89982 12.8871 7.97388 12.6434 8.30887L9.15969 13.099L7.28033 11.2197C6.98744 10.9268 6.51256 10.9268 6.21967 11.2197C5.92678 11.5126 5.92678 11.9874 6.21967 12.2803L8.71967 14.7803C8.87477 14.9354 9.08999 15.0149 9.30867 14.9977C9.52734 14.9805 9.72754 14.8685 9.85655 14.6911L13.8566 9.19113Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document-duplicate.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M7 3.5C7 2.67157 7.67157 2 8.5 2H12.3787C12.7765 2 13.158 2.15804 13.4393 2.43934L16.5607 5.56066C16.842 5.84197 17 6.2235 17 6.62132V12.5C17 13.3284 16.3284 14 15.5 14H14.5V10.6213C14.5 9.82567 14.1839 9.06261 13.6213 8.5L10.5 5.37868C9.93739 4.81607 9.17433 4.5 8.37868 4.5H7V3.5Z" fill="#0F172A"/>
    <path d="M4.5 6C3.67157 6 3 6.67157 3 7.5V16.5C3 17.3284 3.67157 18 4.5 18H11.5C12.3284 18 13 17.3284 13 16.5V10.6213C13 10.2235 12.842 9.84197 12.5607 9.56066L9.43934 6.43934C9.15804 6.15804 8.7765 6 8.37868 6H4.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M7 3.5C7 2.67157 7.67157 2 8.5 2H12.3787C12.7765 2 13.158 2.15804 13.4393 2.43934L16.5607 5.56066C16.842 5.84197 17 6.2235 17 6.62132V12.5C17 13.3284 16.3284 14 15.5 14H14.5V10.6213C14.5 9.82567 14.1839 9.06261 13.6213 8.5L10.5 5.37868C9.93739 4.81607 9.17433 4.5 8.37868 4.5H7V3.5Z\" fill=\"#0F172A\"/>\n<path d=\"M4.5 6C3.67157 6 3 6.67157 3 7.5V16.5C3 17.3284 3.67157 18 4.5 18H11.5C12.3284 18 13 17.3284 13 16.5V10.6213C13 10.2235 12.842 9.84197 12.5607 9.56066L9.43934 6.43934C9.15804 6.15804 8.7765 6 8.37868 6H4.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document-magnifying-glass.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M8 10C8 9.17157 8.67157 8.5 9.5 8.5C10.3284 8.5 11 9.17157 11 10C11 10.4144 10.8329 10.7884 10.5607 11.0607C10.2884 11.3329 9.91442 11.5 9.5 11.5C8.67157 11.5 8 10.8284 8 10Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM9.5 7C7.84315 7 6.5 8.34315 6.5 10C6.5 11.6569 7.84315 13 9.5 13C10.056 13 10.5773 12.8483 11.0239 12.5845L12.2197 13.7803C12.5126 14.0732 12.9874 14.0732 13.2803 13.7803C13.5732 13.4874 13.5732 13.0126 13.2803 12.7197L12.0845 11.5239C12.3483 11.0773 12.5 10.556 12.5 10C12.5 8.34315 11.1569 7 9.5 7Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M8 10C8 9.17157 8.67157 8.5 9.5 8.5C10.3284 8.5 11 9.17157 11 10C11 10.4144 10.8329 10.7884 10.5607 11.0607C10.2884 11.3329 9.91442 11.5 9.5 11.5C8.67157 11.5 8 10.8284 8 10Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM9.5 7C7.84315 7 6.5 8.34315 6.5 10C6.5 11.6569 7.84315 13 9.5 13C10.056 13 10.5773 12.8483 11.0239 12.5845L12.2197 13.7803C12.5126 14.0732 12.9874 14.0732 13.2803 13.7803C13.5732 13.4874 13.5732 13.0126 13.2803 12.7197L12.0845 11.5239C12.3483 11.0773 12.5 10.556 12.5 10C12.5 8.34315 11.1569 7 9.5 7Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document-minus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM12.25 11.75C12.6642 11.75 13 11.4142 13 11C13 10.5858 12.6642 10.25 12.25 10.25H7.75C7.33579 10.25 7 10.5858 7 11C7 11.4142 7.33579 11.75 7.75 11.75H12.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM12.25 11.75C12.6642 11.75 13 11.4142 13 11C13 10.5858 12.6642 10.25 12.25 10.25H7.75C7.33579 10.25 7 10.5858 7 11C7 11.4142 7.33579 11.75 7.75 11.75H12.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document-plus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM10 8C10.4142 8 10.75 8.33579 10.75 8.75V10.25H12.25C12.6642 10.25 13 10.5858 13 11C13 11.4142 12.6642 11.75 12.25 11.75H10.75V13.25C10.75 13.6642 10.4142 14 10 14C9.58579 14 9.25 13.6642 9.25 13.25V11.75H7.75C7.33579 11.75 7 11.4142 7 11C7 10.5858 7.33579 10.25 7.75 10.25H9.25V8.75C9.25 8.33579 9.58579 8 10 8Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM10 8C10.4142 8 10.75 8.33579 10.75 8.75V10.25H12.25C12.6642 10.25 13 10.5858 13 11C13 11.4142 12.6642 11.75 12.25 11.75H10.75V13.25C10.75 13.6642 10.4142 14 10 14C9.58579 14 9.25 13.6642 9.25 13.25V11.75H7.75C7.33579 11.75 7 11.4142 7 11C7 10.5858 7.33579 10.25 7.75 10.25H9.25V8.75C9.25 8.33579 9.58579 8 10 8Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document-text.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM6.75 10.5C6.33579 10.5 6 10.8358 6 11.25C6 11.6642 6.33579 12 6.75 12H13.25C13.6642 12 14 11.6642 14 11.25C14 10.8358 13.6642 10.5 13.25 10.5H6.75ZM6.75 13.5C6.33579 13.5 6 13.8358 6 14.25C6 14.6642 6.33579 15 6.75 15H13.25C13.6642 15 14 14.6642 14 14.25C14 13.8358 13.6642 13.5 13.25 13.5H6.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 2C3.67157 2 3 2.67157 3 3.5V16.5C3 17.3284 3.67157 18 4.5 18H15.5C16.3284 18 17 17.3284 17 16.5V7.62132C17 7.2235 16.842 6.84197 16.5607 6.56066L12.4393 2.43934C12.158 2.15804 11.7765 2 11.3787 2H4.5ZM6.75 10.5C6.33579 10.5 6 10.8358 6 11.25C6 11.6642 6.33579 12 6.75 12H13.25C13.6642 12 14 11.6642 14 11.25C14 10.8358 13.6642 10.5 13.25 10.5H6.75ZM6.75 13.5C6.33579 13.5 6 13.8358 6 14.25C6 14.6642 6.33579 15 6.75 15H13.25C13.6642 15 14 14.6642 14 14.25C14 13.8358 13.6642 13.5 13.25 13.5H6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/document.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3 3.5C3 2.67157 3.67157 2 4.5 2H11.3787C11.7765 2 12.158 2.15804 12.4393 2.43934L16.5607 6.56066C16.842 6.84197 17 7.2235 17 7.62132V16.5C17 17.3284 16.3284 18 15.5 18H4.5C3.67157 18 3 17.3284 3 16.5V3.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3 3.5C3 2.67157 3.67157 2 4.5 2H11.3787C11.7765 2 12.158 2.15804 12.4393 2.43934L16.5607 6.56066C16.842 6.84197 17 7.2235 17 7.62132V16.5C17 17.3284 16.3284 18 15.5 18H4.5C3.67157 18 3 17.3284 3 16.5V3.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/ellipsis-horizontal-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10ZM10 11C10.5523 11 11 10.5523 11 10C11 9.44772 10.5523 9 10 9C9.44772 9 9 9.44772 9 10C9 10.5523 9.44772 11 10 11ZM7 10C7 10.5523 6.55228 11 6 11C5.44772 11 5 10.5523 5 10C5 9.44772 5.44772 9 6 9C6.55228 9 7 9.44772 7 10ZM14 11C14.5523 11 15 10.5523 15 10C15 9.44772 14.5523 9 14 9C13.4477 9 13 9.44772 13 10C13 10.5523 13.4477 11 14 11Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10ZM10 11C10.5523 11 11 10.5523 11 10C11 9.44772 10.5523 9 10 9C9.44772 9 9 9.44772 9 10C9 10.5523 9.44772 11 10 11ZM7 10C7 10.5523 6.55228 11 6 11C5.44772 11 5 10.5523 5 10C5 9.44772 5.44772 9 6 9C6.55228 9 7 9.44772 7 10ZM14 11C14.5523 11 15 10.5523 15 10C15 9.44772 14.5523 9 14 9C13.4477 9 13 9.44772 13 10C13 10.5523 13.4477 11 14 11Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/ellipsis-horizontal.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3 10C3 9.17157 3.67157 8.5 4.5 8.5C5.32843 8.5 6 9.17157 6 10C6 10.8284 5.32843 11.5 4.5 11.5C3.67157 11.5 3 10.8284 3 10Z" fill="#0F172A"/>
    <path d="M8.5 10C8.5 9.17157 9.17157 8.5 10 8.5C10.8284 8.5 11.5 9.17157 11.5 10C11.5 10.8284 10.8284 11.5 10 11.5C9.17157 11.5 8.5 10.8284 8.5 10Z" fill="#0F172A"/>
    <path d="M15.5 8.5C14.6716 8.5 14 9.17157 14 10C14 10.8284 14.6716 11.5 15.5 11.5C16.3284 11.5 17 10.8284 17 10C17 9.17157 16.3284 8.5 15.5 8.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3 10C3 9.17157 3.67157 8.5 4.5 8.5C5.32843 8.5 6 9.17157 6 10C6 10.8284 5.32843 11.5 4.5 11.5C3.67157 11.5 3 10.8284 3 10Z\" fill=\"#0F172A\"/>\n<path d=\"M8.5 10C8.5 9.17157 9.17157 8.5 10 8.5C10.8284 8.5 11.5 9.17157 11.5 10C11.5 10.8284 10.8284 11.5 10 11.5C9.17157 11.5 8.5 10.8284 8.5 10Z\" fill=\"#0F172A\"/>\n<path d=\"M15.5 8.5C14.6716 8.5 14 9.17157 14 10C14 10.8284 14.6716 11.5 15.5 11.5C16.3284 11.5 17 10.8284 17 10C17 9.17157 16.3284 8.5 15.5 8.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/ellipsis-vertical.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 3C10.8284 3 11.5 3.67157 11.5 4.5C11.5 5.32843 10.8284 6 10 6C9.17157 6 8.5 5.32843 8.5 4.5C8.5 3.67157 9.17157 3 10 3Z" fill="#0F172A"/>
    <path d="M10 8.5C10.8284 8.5 11.5 9.17157 11.5 10C11.5 10.8284 10.8284 11.5 10 11.5C9.17157 11.5 8.5 10.8284 8.5 10C8.5 9.17157 9.17157 8.5 10 8.5Z" fill="#0F172A"/>
    <path d="M11.5 15.5C11.5 14.6716 10.8284 14 10 14C9.17157 14 8.5 14.6716 8.5 15.5C8.5 16.3284 9.17157 17 10 17C10.8284 17 11.5 16.3284 11.5 15.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10 3C10.8284 3 11.5 3.67157 11.5 4.5C11.5 5.32843 10.8284 6 10 6C9.17157 6 8.5 5.32843 8.5 4.5C8.5 3.67157 9.17157 3 10 3Z\" fill=\"#0F172A\"/>\n<path d=\"M10 8.5C10.8284 8.5 11.5 9.17157 11.5 10C11.5 10.8284 10.8284 11.5 10 11.5C9.17157 11.5 8.5 10.8284 8.5 10C8.5 9.17157 9.17157 8.5 10 8.5Z\" fill=\"#0F172A\"/>\n<path d=\"M11.5 15.5C11.5 14.6716 10.8284 14 10 14C9.17157 14 8.5 14.6716 8.5 15.5C8.5 16.3284 9.17157 17 10 17C10.8284 17 11.5 16.3284 11.5 15.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/envelope-open.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.10557 6.44747C1.428 6.78626 1 7.47878 1 8.23633V16.0003C1 17.1048 1.89543 18.0003 3 18.0003H17C18.1046 18.0003 19 17.1048 19 16.0003V8.23633C19 7.47878 18.572 6.78626 17.8944 6.44747L10.8944 2.94747C10.3314 2.66595 9.66863 2.66595 9.10557 2.94747L2.10557 6.44747ZM3.58541 10.4544C3.21493 10.2692 2.76442 10.4194 2.57918 10.7899C2.39394 11.1603 2.54411 11.6108 2.91459 11.7961L8.77016 14.7239C9.54436 15.111 10.4556 15.111 11.2298 14.7239L17.0823 11.7976C17.4528 11.6124 17.6029 11.1619 17.4177 10.7914C17.2325 10.4209 16.7819 10.2708 16.4115 10.456L10.559 13.3822C10.2071 13.5582 9.79289 13.5582 9.44098 13.3822L3.58541 10.4544Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.10557 6.44747C1.428 6.78626 1 7.47878 1 8.23633V16.0003C1 17.1048 1.89543 18.0003 3 18.0003H17C18.1046 18.0003 19 17.1048 19 16.0003V8.23633C19 7.47878 18.572 6.78626 17.8944 6.44747L10.8944 2.94747C10.3314 2.66595 9.66863 2.66595 9.10557 2.94747L2.10557 6.44747ZM3.58541 10.4544C3.21493 10.2692 2.76442 10.4194 2.57918 10.7899C2.39394 11.1603 2.54411 11.6108 2.91459 11.7961L8.77016 14.7239C9.54436 15.111 10.4556 15.111 11.2298 14.7239L17.0823 11.7976C17.4528 11.6124 17.6029 11.1619 17.4177 10.7914C17.2325 10.4209 16.7819 10.2708 16.4115 10.456L10.559 13.3822C10.2071 13.5582 9.79289 13.5582 9.44098 13.3822L3.58541 10.4544Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/envelope.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3 4C1.89543 4 1 4.89543 1 6V7.16147L9.44098 11.382C9.79289 11.5579 10.2071 11.5579 10.559 11.382L19 7.16147V6C19 4.89543 18.1046 4 17 4H3Z" fill="#0F172A"/>
    <path d="M19 8.83853L11.2298 12.7236C10.4556 13.1107 9.54436 13.1107 8.77016 12.7236L1 8.83853V14C1 15.1046 1.89543 16 3 16H17C18.1046 16 19 15.1046 19 14V8.83853Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3 4C1.89543 4 1 4.89543 1 6V7.16147L9.44098 11.382C9.79289 11.5579 10.2071 11.5579 10.559 11.382L19 7.16147V6C19 4.89543 18.1046 4 17 4H3Z\" fill=\"#0F172A\"/>\n<path d=\"M19 8.83853L11.2298 12.7236C10.4556 13.1107 9.54436 13.1107 8.77016 12.7236L1 8.83853V14C1 15.1046 1.89543 16 3 16H17C18.1046 16 19 15.1046 19 14V8.83853Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/exclamation-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.exclamation_circle />

      <.exclamation_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= exclamation_circle() %>

      <%= exclamation_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def exclamation_circle(assigns_or_opts \\ [])

  def exclamation_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM10 5C10.4142 5 10.75 5.33579 10.75 5.75V10.25C10.75 10.6642 10.4142 11 10 11C9.58579 11 9.25 10.6642 9.25 10.25V5.75C9.25 5.33579 9.58579 5 10 5ZM10 15C10.5523 15 11 14.5523 11 14C11 13.4477 10.5523 13 10 13C9.44771 13 9 13.4477 9 14C9 14.5523 9.44771 15 10 15Z" fill="#0F172A"/>
    </svg>
    """
  end

  def exclamation_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM10 5C10.4142 5 10.75 5.33579 10.75 5.75V10.25C10.75 10.6642 10.4142 11 10 11C9.58579 11 9.25 10.6642 9.25 10.25V5.75C9.25 5.33579 9.58579 5 10 5ZM10 15C10.5523 15 11 14.5523 11 14C11 13.4477 10.5523 13 10 13C9.44771 13 9 13.4477 9 14C9 14.5523 9.44771 15 10 15Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/exclamation-triangle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.exclamation_triangle />

      <.exclamation_triangle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= exclamation_triangle() %>

      <%= exclamation_triangle(class: "h-6 w-6 text-gray-500") %>
  """
  def exclamation_triangle(assigns_or_opts \\ [])

  def exclamation_triangle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.4845 3.49512C9.15808 2.32845 10.842 2.32845 11.5156 3.49512L17.7943 14.3701C18.4678 15.5368 17.6259 16.9951 16.2787 16.9951H3.72136C2.37421 16.9951 1.53224 15.5368 2.20582 14.3701L8.4845 3.49512ZM10 6.00012C10.4142 6.00012 10.75 6.33591 10.75 6.75012V10.2501C10.75 10.6643 10.4142 11.0001 10 11.0001C9.58579 11.0001 9.25 10.6643 9.25 10.2501L9.25 6.75012C9.25 6.33591 9.58579 6.00012 10 6.00012ZM10 15.0001C10.5523 15.0001 11 14.5524 11 14.0001C11 13.4478 10.5523 13.0001 10 13.0001C9.44772 13.0001 9 13.4478 9 14.0001C9 14.5524 9.44772 15.0001 10 15.0001Z" fill="#0F172A"/>
    </svg>
    """
  end

  def exclamation_triangle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.4845 3.49512C9.15808 2.32845 10.842 2.32845 11.5156 3.49512L17.7943 14.3701C18.4678 15.5368 17.6259 16.9951 16.2787 16.9951H3.72136C2.37421 16.9951 1.53224 15.5368 2.20582 14.3701L8.4845 3.49512ZM10 6.00012C10.4142 6.00012 10.75 6.33591 10.75 6.75012V10.2501C10.75 10.6643 10.4142 11.0001 10 11.0001C9.58579 11.0001 9.25 10.6643 9.25 10.2501L9.25 6.75012C9.25 6.33591 9.58579 6.00012 10 6.00012ZM10 15.0001C10.5523 15.0001 11 14.5524 11 14.0001C11 13.4478 10.5523 13.0001 10 13.0001C9.44772 13.0001 9 13.4478 9 14.0001C9 14.5524 9.44772 15.0001 10 15.0001Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/eye-slash.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.28033 2.21967C2.98744 1.92678 2.51256 1.92678 2.21967 2.21967C1.92678 2.51256 1.92678 2.98744 2.21967 3.28033L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L16.0352 14.9745C17.5064 13.8594 18.6595 12.3465 19.3344 10.5959C19.4814 10.2144 19.4816 9.79127 19.3347 9.40962C17.892 5.66051 14.256 3 9.99859 3C8.28207 3 6.66657 3.43249 5.2551 4.19444L3.28033 2.21967ZM7.75194 6.69128L8.84367 7.78301C9.18951 7.60223 9.58291 7.5 10.0002 7.5C11.3809 7.5 12.5002 8.61929 12.5002 10C12.5002 10.4173 12.398 10.8107 12.2172 11.1565L13.3091 12.2484C13.7454 11.6077 14.0004 10.8336 14.0004 10C14.0004 7.79086 12.2095 6 10.0004 6C9.16675 6 8.39268 6.25501 7.75194 6.69128Z" fill="#0F172A"/>
    <path d="M10.7484 13.9302L13.2711 16.4529C12.2462 16.8074 11.1458 17 10.0004 17C5.74298 17 2.10698 14.3395 0.664255 10.5904C0.517392 10.2087 0.517518 9.78563 0.66461 9.40408C1.15603 8.12932 1.90108 6.98057 2.83791 6.01969L6.0702 9.25198C6.02436 9.4943 6.00037 9.74435 6.00037 10C6.00037 12.2091 7.79123 14 10.0004 14C10.256 14 10.5061 13.976 10.7484 13.9302Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.28033 2.21967C2.98744 1.92678 2.51256 1.92678 2.21967 2.21967C1.92678 2.51256 1.92678 2.98744 2.21967 3.28033L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L16.0352 14.9745C17.5064 13.8594 18.6595 12.3465 19.3344 10.5959C19.4814 10.2144 19.4816 9.79127 19.3347 9.40962C17.892 5.66051 14.256 3 9.99859 3C8.28207 3 6.66657 3.43249 5.2551 4.19444L3.28033 2.21967ZM7.75194 6.69128L8.84367 7.78301C9.18951 7.60223 9.58291 7.5 10.0002 7.5C11.3809 7.5 12.5002 8.61929 12.5002 10C12.5002 10.4173 12.398 10.8107 12.2172 11.1565L13.3091 12.2484C13.7454 11.6077 14.0004 10.8336 14.0004 10C14.0004 7.79086 12.2095 6 10.0004 6C9.16675 6 8.39268 6.25501 7.75194 6.69128Z\" fill=\"#0F172A\"/>\n<path d=\"M10.7484 13.9302L13.2711 16.4529C12.2462 16.8074 11.1458 17 10.0004 17C5.74298 17 2.10698 14.3395 0.664255 10.5904C0.517392 10.2087 0.517518 9.78563 0.66461 9.40408C1.15603 8.12932 1.90108 6.98057 2.83791 6.01969L6.0702 9.25198C6.02436 9.4943 6.00037 9.74435 6.00037 10C6.00037 12.2091 7.79123 14 10.0004 14C10.256 14 10.5061 13.976 10.7484 13.9302Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/eye.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 12.5C11.3807 12.5 12.5 11.3807 12.5 10C12.5 8.61929 11.3807 7.5 10 7.5C8.61929 7.5 7.5 8.61929 7.5 10C7.5 11.3807 8.61929 12.5 10 12.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M0.664255 10.5904C0.517392 10.2087 0.517518 9.78563 0.66461 9.40408C2.10878 5.65788 5.7433 3 9.99859 3C14.256 3 17.892 5.66051 19.3347 9.40962C19.4816 9.79127 19.4814 10.2144 19.3344 10.5959C17.8902 14.3421 14.2557 17 10.0004 17C5.74298 17 2.10698 14.3395 0.664255 10.5904ZM14.0004 10C14.0004 12.2091 12.2095 14 10.0004 14C7.79123 14 6.00037 12.2091 6.00037 10C6.00037 7.79086 7.79123 6 10.0004 6C12.2095 6 14.0004 7.79086 14.0004 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10 12.5C11.3807 12.5 12.5 11.3807 12.5 10C12.5 8.61929 11.3807 7.5 10 7.5C8.61929 7.5 7.5 8.61929 7.5 10C7.5 11.3807 8.61929 12.5 10 12.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M0.664255 10.5904C0.517392 10.2087 0.517518 9.78563 0.66461 9.40408C2.10878 5.65788 5.7433 3 9.99859 3C14.256 3 17.892 5.66051 19.3347 9.40962C19.4816 9.79127 19.4814 10.2144 19.3344 10.5959C17.8902 14.3421 14.2557 17 10.0004 17C5.74298 17 2.10698 14.3395 0.664255 10.5904ZM14.0004 10C14.0004 12.2091 12.2095 14 10.0004 14C7.79123 14 6.00037 12.2091 6.00037 10C6.00037 7.79086 7.79123 6 10.0004 6C12.2095 6 14.0004 7.79086 14.0004 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/face-frown.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM6.46447 14.5251C6.75736 14.818 7.23223 14.818 7.52513 14.5251C8.89196 13.1583 11.108 13.1583 12.4749 14.5251C12.7678 14.818 13.2426 14.818 13.5355 14.5251C13.8284 14.2323 13.8284 13.7574 13.5355 13.4645C11.5829 11.5119 8.41709 11.5119 6.46447 13.4645C6.17157 13.7574 6.17157 14.2323 6.46447 14.5251ZM9 8.5C9 9.32843 8.55228 10 8 10C7.44772 10 7 9.32843 7 8.5C7 7.67157 7.44772 7 8 7C8.55228 7 9 7.67157 9 8.5ZM12 10C12.5523 10 13 9.32843 13 8.5C13 7.67157 12.5523 7 12 7C11.4477 7 11 7.67157 11 8.5C11 9.32843 11.4477 10 12 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM6.46447 14.5251C6.75736 14.818 7.23223 14.818 7.52513 14.5251C8.89196 13.1583 11.108 13.1583 12.4749 14.5251C12.7678 14.818 13.2426 14.818 13.5355 14.5251C13.8284 14.2323 13.8284 13.7574 13.5355 13.4645C11.5829 11.5119 8.41709 11.5119 6.46447 13.4645C6.17157 13.7574 6.17157 14.2323 6.46447 14.5251ZM9 8.5C9 9.32843 8.55228 10 8 10C7.44772 10 7 9.32843 7 8.5C7 7.67157 7.44772 7 8 7C8.55228 7 9 7.67157 9 8.5ZM12 10C12.5523 10 13 9.32843 13 8.5C13 7.67157 12.5523 7 12 7C11.4477 7 11 7.67157 11 8.5C11 9.32843 11.4477 10 12 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/face-smile.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM13.5355 13.5355C13.8284 13.2426 13.8284 12.7678 13.5355 12.4749C13.2426 12.182 12.7678 12.182 12.4749 12.4749C11.108 13.8417 8.89196 13.8417 7.52513 12.4749C7.23223 12.182 6.75736 12.182 6.46447 12.4749C6.17157 12.7678 6.17157 13.2426 6.46447 13.5355C8.41709 15.4881 11.5829 15.4881 13.5355 13.5355ZM9 8.5C9 9.32843 8.55228 10 8 10C7.44772 10 7 9.32843 7 8.5C7 7.67157 7.44772 7 8 7C8.55228 7 9 7.67157 9 8.5ZM12 10C12.5523 10 13 9.32843 13 8.5C13 7.67157 12.5523 7 12 7C11.4477 7 11 7.67157 11 8.5C11 9.32843 11.4477 10 12 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM13.5355 13.5355C13.8284 13.2426 13.8284 12.7678 13.5355 12.4749C13.2426 12.182 12.7678 12.182 12.4749 12.4749C11.108 13.8417 8.89196 13.8417 7.52513 12.4749C7.23223 12.182 6.75736 12.182 6.46447 12.4749C6.17157 12.7678 6.17157 13.2426 6.46447 13.5355C8.41709 15.4881 11.5829 15.4881 13.5355 13.5355ZM9 8.5C9 9.32843 8.55228 10 8 10C7.44772 10 7 9.32843 7 8.5C7 7.67157 7.44772 7 8 7C8.55228 7 9 7.67157 9 8.5ZM12 10C12.5523 10 13 9.32843 13 8.5C13 7.67157 12.5523 7 12 7C11.4477 7 11 7.67157 11 8.5C11 9.32843 11.4477 10 12 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/film.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 4.75C1 3.7835 1.7835 3 2.75 3H17.25C18.2165 3 19 3.7835 19 4.75V15.265C19 16.2315 18.2165 17.015 17.25 17.015H15.75C15.6719 17.015 15.5951 17.0099 15.5197 17H4.48027C4.40492 17.0099 4.32806 17.015 4.25 17.015H2.75C1.7835 17.015 1 16.2315 1 15.265V4.75ZM17.5 12.135V11.01C17.5 10.8719 17.3881 10.76 17.25 10.76H15.75C15.6119 10.76 15.5 10.8719 15.5 11.01V12.135C15.5 12.2731 15.6119 12.385 15.75 12.385H17.25C17.3881 12.385 17.5 12.2731 17.5 12.135ZM17.5 14.14C17.5 14.0019 17.3881 13.89 17.25 13.89H15.75C15.6119 13.89 15.5 14.0019 15.5 14.14V15.265C15.5 15.373 15.5685 15.4651 15.6645 15.5H17.25C17.3881 15.5 17.5 15.3881 17.5 15.25V14.14ZM2.5 15.25V14.14C2.5 14.0019 2.61193 13.89 2.75 13.89H4.25C4.38807 13.89 4.5 14.0019 4.5 14.14V15.265C4.5 15.373 4.43148 15.4651 4.33553 15.5H2.75C2.61193 15.5 2.5 15.3881 2.5 15.25ZM4.5 11.01V12.135C4.5 12.2731 4.38807 12.385 4.25 12.385H2.75C2.61193 12.385 2.5 12.2731 2.5 12.135V11.01C2.5 10.8719 2.61193 10.76 2.75 10.76H4.25C4.38807 10.76 4.5 10.8719 4.5 11.01ZM17.5 9.005V7.88C17.5 7.74193 17.3881 7.63 17.25 7.63H15.75C15.6119 7.63 15.5 7.74193 15.5 7.88V9.005C15.5 9.14308 15.6119 9.255 15.75 9.255H17.25C17.3881 9.255 17.5 9.14308 17.5 9.005ZM4.25 7.63C4.38807 7.63 4.5 7.74193 4.5 7.88V9.005C4.5 9.14308 4.38807 9.255 4.25 9.255H2.75C2.61193 9.255 2.5 9.14308 2.5 9.005V7.88C2.5 7.74193 2.61193 7.63 2.75 7.63H4.25ZM4.25 4.5C4.38807 4.5 4.5 4.61193 4.5 4.75V5.875C4.5 6.01307 4.38807 6.125 4.25 6.125H2.75C2.61193 6.125 2.5 6.01307 2.5 5.875V4.75C2.5 4.61193 2.61193 4.5 2.75 4.5H4.25ZM15.75 6.125C15.6119 6.125 15.5 6.01307 15.5 5.875V4.75C15.5 4.61193 15.6119 4.5 15.75 4.5H17.25C17.3881 4.5 17.5 4.61193 17.5 4.75V5.875C17.5 6.01307 17.3881 6.125 17.25 6.125H15.75ZM6.75 9.25C6.33579 9.25 6 9.58579 6 10C6 10.4142 6.33579 10.75 6.75 10.75H13.25C13.6642 10.75 14 10.4142 14 10C14 9.58579 13.6642 9.25 13.25 9.25H6.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 4.75C1 3.7835 1.7835 3 2.75 3H17.25C18.2165 3 19 3.7835 19 4.75V15.265C19 16.2315 18.2165 17.015 17.25 17.015H15.75C15.6719 17.015 15.5951 17.0099 15.5197 17H4.48027C4.40492 17.0099 4.32806 17.015 4.25 17.015H2.75C1.7835 17.015 1 16.2315 1 15.265V4.75ZM17.5 12.135V11.01C17.5 10.8719 17.3881 10.76 17.25 10.76H15.75C15.6119 10.76 15.5 10.8719 15.5 11.01V12.135C15.5 12.2731 15.6119 12.385 15.75 12.385H17.25C17.3881 12.385 17.5 12.2731 17.5 12.135ZM17.5 14.14C17.5 14.0019 17.3881 13.89 17.25 13.89H15.75C15.6119 13.89 15.5 14.0019 15.5 14.14V15.265C15.5 15.373 15.5685 15.4651 15.6645 15.5H17.25C17.3881 15.5 17.5 15.3881 17.5 15.25V14.14ZM2.5 15.25V14.14C2.5 14.0019 2.61193 13.89 2.75 13.89H4.25C4.38807 13.89 4.5 14.0019 4.5 14.14V15.265C4.5 15.373 4.43148 15.4651 4.33553 15.5H2.75C2.61193 15.5 2.5 15.3881 2.5 15.25ZM4.5 11.01V12.135C4.5 12.2731 4.38807 12.385 4.25 12.385H2.75C2.61193 12.385 2.5 12.2731 2.5 12.135V11.01C2.5 10.8719 2.61193 10.76 2.75 10.76H4.25C4.38807 10.76 4.5 10.8719 4.5 11.01ZM17.5 9.005V7.88C17.5 7.74193 17.3881 7.63 17.25 7.63H15.75C15.6119 7.63 15.5 7.74193 15.5 7.88V9.005C15.5 9.14308 15.6119 9.255 15.75 9.255H17.25C17.3881 9.255 17.5 9.14308 17.5 9.005ZM4.25 7.63C4.38807 7.63 4.5 7.74193 4.5 7.88V9.005C4.5 9.14308 4.38807 9.255 4.25 9.255H2.75C2.61193 9.255 2.5 9.14308 2.5 9.005V7.88C2.5 7.74193 2.61193 7.63 2.75 7.63H4.25ZM4.25 4.5C4.38807 4.5 4.5 4.61193 4.5 4.75V5.875C4.5 6.01307 4.38807 6.125 4.25 6.125H2.75C2.61193 6.125 2.5 6.01307 2.5 5.875V4.75C2.5 4.61193 2.61193 4.5 2.75 4.5H4.25ZM15.75 6.125C15.6119 6.125 15.5 6.01307 15.5 5.875V4.75C15.5 4.61193 15.6119 4.5 15.75 4.5H17.25C17.3881 4.5 17.5 4.61193 17.5 4.75V5.875C17.5 6.01307 17.3881 6.125 17.25 6.125H15.75ZM6.75 9.25C6.33579 9.25 6 9.58579 6 10C6 10.4142 6.33579 10.75 6.75 10.75H13.25C13.6642 10.75 14 10.4142 14 10C14 9.58579 13.6642 9.25 13.25 9.25H6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/finger-print.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.99999 2.5C8.69048 2.5 7.47351 2.88645 6.45417 3.55132C6.10723 3.77761 5.64254 3.6798 5.41625 3.33287C5.18996 2.98593 5.28777 2.52123 5.6347 2.29494C6.89037 1.47594 8.39074 1 9.99999 1C14.4183 1 18 4.58172 18 9C18 11.573 17.5678 14.0467 16.7714 16.3514C16.6361 16.7429 16.2091 16.9506 15.8176 16.8153C15.4261 16.6801 15.2184 16.253 15.3537 15.8615C16.0963 13.7123 16.5 11.4041 16.5 9C16.5 5.41015 13.5898 2.5 9.99999 2.5ZM4.33285 4.41627C4.67979 4.64256 4.77759 5.10725 4.5513 5.45419C3.88644 6.47353 3.49999 7.69049 3.49999 9C3.49999 10.6078 3.02489 12.107 2.20721 13.362C1.98109 13.709 1.51645 13.807 1.1694 13.5809C0.82235 13.3548 0.724315 12.8902 0.950433 12.5431C1.61422 11.5243 1.99999 10.3084 1.99999 9C1.99999 7.39075 2.47592 5.89038 3.29493 4.63472C3.52122 4.28778 3.98591 4.18998 4.33285 4.41627ZM9.99999 6.12C8.34313 6.12 6.99999 7.46314 6.99999 9.12C6.99999 9.13378 6.99961 9.14748 6.99888 9.16108C6.96101 11.9169 5.95296 14.4401 4.30164 16.4018C4.03489 16.7187 3.56176 16.7593 3.24487 16.4926C2.92798 16.2258 2.88733 15.7527 3.15408 15.4358C4.61842 13.6962 5.49999 11.452 5.49999 9C5.49999 8.97218 5.5015 8.94471 5.50445 8.91767C5.61027 6.52628 7.58251 4.62 9.99999 4.62C12.4174 4.62 14.3896 6.52613 14.4955 8.91754C14.4985 8.94516 14.5 8.97323 14.5 9.00166L14.4998 9.0815L14.5 9.11633C14.5 9.12755 14.4998 9.13872 14.4994 9.14983C14.4986 9.24922 14.4971 9.34844 14.4948 9.44749C14.4852 9.86159 14.1418 10.1895 13.7277 10.1799C13.3136 10.1704 12.9856 9.8269 12.9952 9.4128C12.9977 9.30372 12.9993 9.19439 12.9998 9.08481C12.981 7.44426 11.6451 6.12 9.99999 6.12ZM9.99999 8.25C10.4142 8.25 10.75 8.58579 10.75 9C10.75 12.5103 9.56303 15.7455 7.569 18.3232C7.31556 18.6509 6.84451 18.711 6.51688 18.4576C6.18925 18.2041 6.12912 17.7331 6.38256 17.4054C8.18049 15.0812 9.24999 12.1666 9.24999 9C9.24999 8.58579 9.58577 8.25 9.99999 8.25ZM13.5288 11.9478C13.9346 12.0309 14.1962 12.4273 14.113 12.8331C13.6842 14.9261 12.9112 16.8937 11.8562 18.6738C11.645 19.0302 11.1849 19.1478 10.8286 18.9366C10.4723 18.7254 10.3546 18.2654 10.5658 17.9091C11.5374 16.2697 12.2488 14.4585 12.6436 12.532C12.7267 12.1262 13.123 11.8646 13.5288 11.9478Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.99999 2.5C8.69048 2.5 7.47351 2.88645 6.45417 3.55132C6.10723 3.77761 5.64254 3.6798 5.41625 3.33287C5.18996 2.98593 5.28777 2.52123 5.6347 2.29494C6.89037 1.47594 8.39074 1 9.99999 1C14.4183 1 18 4.58172 18 9C18 11.573 17.5678 14.0467 16.7714 16.3514C16.6361 16.7429 16.2091 16.9506 15.8176 16.8153C15.4261 16.6801 15.2184 16.253 15.3537 15.8615C16.0963 13.7123 16.5 11.4041 16.5 9C16.5 5.41015 13.5898 2.5 9.99999 2.5ZM4.33285 4.41627C4.67979 4.64256 4.77759 5.10725 4.5513 5.45419C3.88644 6.47353 3.49999 7.69049 3.49999 9C3.49999 10.6078 3.02489 12.107 2.20721 13.362C1.98109 13.709 1.51645 13.807 1.1694 13.5809C0.82235 13.3548 0.724315 12.8902 0.950433 12.5431C1.61422 11.5243 1.99999 10.3084 1.99999 9C1.99999 7.39075 2.47592 5.89038 3.29493 4.63472C3.52122 4.28778 3.98591 4.18998 4.33285 4.41627ZM9.99999 6.12C8.34313 6.12 6.99999 7.46314 6.99999 9.12C6.99999 9.13378 6.99961 9.14748 6.99888 9.16108C6.96101 11.9169 5.95296 14.4401 4.30164 16.4018C4.03489 16.7187 3.56176 16.7593 3.24487 16.4926C2.92798 16.2258 2.88733 15.7527 3.15408 15.4358C4.61842 13.6962 5.49999 11.452 5.49999 9C5.49999 8.97218 5.5015 8.94471 5.50445 8.91767C5.61027 6.52628 7.58251 4.62 9.99999 4.62C12.4174 4.62 14.3896 6.52613 14.4955 8.91754C14.4985 8.94516 14.5 8.97323 14.5 9.00166L14.4998 9.0815L14.5 9.11633C14.5 9.12755 14.4998 9.13872 14.4994 9.14983C14.4986 9.24922 14.4971 9.34844 14.4948 9.44749C14.4852 9.86159 14.1418 10.1895 13.7277 10.1799C13.3136 10.1704 12.9856 9.8269 12.9952 9.4128C12.9977 9.30372 12.9993 9.19439 12.9998 9.08481C12.981 7.44426 11.6451 6.12 9.99999 6.12ZM9.99999 8.25C10.4142 8.25 10.75 8.58579 10.75 9C10.75 12.5103 9.56303 15.7455 7.569 18.3232C7.31556 18.6509 6.84451 18.711 6.51688 18.4576C6.18925 18.2041 6.12912 17.7331 6.38256 17.4054C8.18049 15.0812 9.24999 12.1666 9.24999 9C9.24999 8.58579 9.58577 8.25 9.99999 8.25ZM13.5288 11.9478C13.9346 12.0309 14.1962 12.4273 14.113 12.8331C13.6842 14.9261 12.9112 16.8937 11.8562 18.6738C11.645 19.0302 11.1849 19.1478 10.8286 18.9366C10.4723 18.7254 10.3546 18.2654 10.5658 17.9091C11.5374 16.2697 12.2488 14.4585 12.6436 12.532C12.7267 12.1262 13.123 11.8646 13.5288 11.9478Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/fire.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.4997 4.93762C16.8478 6.87062 17.9949 11.1518 16.0619 14.4998C14.1289 17.8479 9.84775 18.995 6.4997 17.062C3.15166 15.129 2.00453 10.8479 3.93753 7.4998C4.10592 7.20813 4.29214 6.93316 4.49401 6.67548C4.69562 6.41812 5.08463 6.45704 5.28714 6.71368C5.56487 7.06565 5.88119 7.38577 6.22971 7.66764C6.56235 7.93667 7.01647 7.61943 7.00304 7.19183C7.00103 7.12812 7.00003 7.06416 7.00003 6.99997C7.00003 6.08143 7.20643 5.2111 7.57539 4.43282C8.10854 3.30822 8.98111 2.37583 10.0608 1.76798C10.3078 1.62893 10.6112 1.7522 10.7378 2.00584C11.3297 3.1927 12.2651 4.2248 13.4997 4.93762ZM14 12C14 14.2091 12.2092 16 10 16C8.08674 16 6.4791 14.6016 6.09017 12.8183C5.9966 12.3894 6.52967 12.1749 6.90396 12.4045C7.38998 12.7025 7.93731 12.8964 8.50538 12.9685C8.80801 13.0068 9.03609 12.7289 9.01482 12.4246C9.00501 12.2844 9.00002 12.1428 9.00002 12C9.00002 10.5731 9.49812 9.26254 10.3299 8.23269C10.4337 8.10417 10.599 8.04108 10.7612 8.07233C12.6063 8.4278 14 10.0511 14 12Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M13.4997 4.93762C16.8478 6.87062 17.9949 11.1518 16.0619 14.4998C14.1289 17.8479 9.84775 18.995 6.4997 17.062C3.15166 15.129 2.00453 10.8479 3.93753 7.4998C4.10592 7.20813 4.29214 6.93316 4.49401 6.67548C4.69562 6.41812 5.08463 6.45704 5.28714 6.71368C5.56487 7.06565 5.88119 7.38577 6.22971 7.66764C6.56235 7.93667 7.01647 7.61943 7.00304 7.19183C7.00103 7.12812 7.00003 7.06416 7.00003 6.99997C7.00003 6.08143 7.20643 5.2111 7.57539 4.43282C8.10854 3.30822 8.98111 2.37583 10.0608 1.76798C10.3078 1.62893 10.6112 1.7522 10.7378 2.00584C11.3297 3.1927 12.2651 4.2248 13.4997 4.93762ZM14 12C14 14.2091 12.2092 16 10 16C8.08674 16 6.4791 14.6016 6.09017 12.8183C5.9966 12.3894 6.52967 12.1749 6.90396 12.4045C7.38998 12.7025 7.93731 12.8964 8.50538 12.9685C8.80801 13.0068 9.03609 12.7289 9.01482 12.4246C9.00501 12.2844 9.00002 12.1428 9.00002 12C9.00002 10.5731 9.49812 9.26254 10.3299 8.23269C10.4337 8.10417 10.599 8.04108 10.7612 8.07233C12.6063 8.4278 14 10.0511 14 12Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/flag.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.5 2.75C3.5 2.33579 3.16421 2 2.75 2C2.33579 2 2 2.33579 2 2.75V17.25C2 17.6642 2.33579 18 2.75 18C3.16421 18 3.5 17.6642 3.5 17.25V12.8585L5.15742 12.5096C6.60458 12.2049 8.11248 12.407 9.42842 13.0818C11.2723 14.0274 13.4125 14.2155 15.393 13.6061L17.4706 12.9668C17.7853 12.87 18 12.5793 18 12.25V3.75C18 3.52398 17.8981 3.31001 17.7226 3.1676C17.547 3.02519 17.3167 2.96952 17.0955 3.01609L14.7157 3.51709C13.3151 3.81195 11.8585 3.68564 10.5296 3.15406L10.0275 2.95322C8.42359 2.31166 6.66566 2.15921 4.97524 2.51509L3.5 2.82566V2.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.5 2.75C3.5 2.33579 3.16421 2 2.75 2C2.33579 2 2 2.33579 2 2.75V17.25C2 17.6642 2.33579 18 2.75 18C3.16421 18 3.5 17.6642 3.5 17.25V12.8585L5.15742 12.5096C6.60458 12.2049 8.11248 12.407 9.42842 13.0818C11.2723 14.0274 13.4125 14.2155 15.393 13.6061L17.4706 12.9668C17.7853 12.87 18 12.5793 18 12.25V3.75C18 3.52398 17.8981 3.31001 17.7226 3.1676C17.547 3.02519 17.3167 2.96952 17.0955 3.01609L14.7157 3.51709C13.3151 3.81195 11.8585 3.68564 10.5296 3.15406L10.0275 2.95322C8.42359 2.31166 6.66566 2.15921 4.97524 2.51509L3.5 2.82566V2.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/folder-arrow-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 4.75C2 3.7835 2.7835 3 3.75 3H8.58579C9.04992 3 9.49503 3.18437 9.82322 3.51256L11.2374 4.92678C11.2843 4.97366 11.3479 5 11.4142 5H16.25C17.2165 5 18 5.7835 18 6.75V15.25C18 16.2165 17.2165 17 16.25 17H3.75C2.7835 17 2 16.2165 2 15.25V4.75ZM10.75 8.75C10.75 8.33579 10.4142 8 10 8C9.58579 8 9.25 8.33579 9.25 8.75V11.2955L8.30747 10.2483C8.03038 9.94039 7.55616 9.91543 7.24828 10.1925C6.94039 10.4696 6.91544 10.9438 7.19253 11.2517L9.44253 13.7517C9.58476 13.9098 9.78738 14 10 14C10.2126 14 10.4152 13.9098 10.5575 13.7517L12.8075 11.2517C13.0846 10.9438 13.0596 10.4696 12.7517 10.1925C12.4438 9.91543 11.9696 9.94039 11.6925 10.2483L10.75 11.2955V8.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 4.75C2 3.7835 2.7835 3 3.75 3H8.58579C9.04992 3 9.49503 3.18437 9.82322 3.51256L11.2374 4.92678C11.2843 4.97366 11.3479 5 11.4142 5H16.25C17.2165 5 18 5.7835 18 6.75V15.25C18 16.2165 17.2165 17 16.25 17H3.75C2.7835 17 2 16.2165 2 15.25V4.75ZM10.75 8.75C10.75 8.33579 10.4142 8 10 8C9.58579 8 9.25 8.33579 9.25 8.75V11.2955L8.30747 10.2483C8.03038 9.94039 7.55616 9.91543 7.24828 10.1925C6.94039 10.4696 6.91544 10.9438 7.19253 11.2517L9.44253 13.7517C9.58476 13.9098 9.78738 14 10 14C10.2126 14 10.4152 13.9098 10.5575 13.7517L12.8075 11.2517C13.0846 10.9438 13.0596 10.4696 12.7517 10.1925C12.4438 9.91543 11.9696 9.94039 11.6925 10.2483L10.75 11.2955V8.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/folder-minus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 4.75C2 3.7835 2.7835 3 3.75 3H8.58579C9.04992 3 9.49503 3.18437 9.82322 3.51256L11.2374 4.92678C11.2843 4.97366 11.3479 5 11.4142 5H16.25C17.2165 5 18 5.7835 18 6.75V15.25C18 16.2165 17.2165 17 16.25 17H3.75C2.7835 17 2 16.2165 2 15.25V4.75ZM12.25 11.75C12.6642 11.75 13 11.4142 13 11C13 10.5858 12.6642 10.25 12.25 10.25H7.75C7.33579 10.25 7 10.5858 7 11C7 11.4142 7.33579 11.75 7.75 11.75H12.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 4.75C2 3.7835 2.7835 3 3.75 3H8.58579C9.04992 3 9.49503 3.18437 9.82322 3.51256L11.2374 4.92678C11.2843 4.97366 11.3479 5 11.4142 5H16.25C17.2165 5 18 5.7835 18 6.75V15.25C18 16.2165 17.2165 17 16.25 17H3.75C2.7835 17 2 16.2165 2 15.25V4.75ZM12.25 11.75C12.6642 11.75 13 11.4142 13 11C13 10.5858 12.6642 10.25 12.25 10.25H7.75C7.33579 10.25 7 10.5858 7 11C7 11.4142 7.33579 11.75 7.75 11.75H12.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/folder-open.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M4.75 3C3.7835 3 3 3.7835 3 4.75V7.50159C3.03443 7.50053 3.06902 7.5 3.10378 7.5H16.8959C16.9307 7.5 16.9654 7.50054 17 7.50161V6.75C17 5.7835 16.2165 5 15.25 5H11.4142C11.3479 5 11.2843 4.97366 11.2374 4.92678L9.82322 3.51256C9.49504 3.18437 9.04992 3 8.58579 3H4.75Z" fill="#0F172A"/>
    <path d="M3.10373 9C1.92632 9 1.08486 10.1393 1.43112 11.2647L2.81573 15.7647C3.04167 16.4989 3.72009 17 4.48835 17H15.5112C16.2795 17 16.9579 16.4989 17.1838 15.7647L18.5684 11.2647C18.9147 10.1393 18.0732 9 16.8958 9H3.10373Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.75 3C3.7835 3 3 3.7835 3 4.75V7.50159C3.03443 7.50053 3.06902 7.5 3.10378 7.5H16.8959C16.9307 7.5 16.9654 7.50054 17 7.50161V6.75C17 5.7835 16.2165 5 15.25 5H11.4142C11.3479 5 11.2843 4.97366 11.2374 4.92678L9.82322 3.51256C9.49504 3.18437 9.04992 3 8.58579 3H4.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3.10373 9C1.92632 9 1.08486 10.1393 1.43112 11.2647L2.81573 15.7647C3.04167 16.4989 3.72009 17 4.48835 17H15.5112C16.2795 17 16.9579 16.4989 17.1838 15.7647L18.5684 11.2647C18.9147 10.1393 18.0732 9 16.8958 9H3.10373Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/folder-plus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.75 3C2.7835 3 2 3.7835 2 4.75V15.25C2 16.2165 2.7835 17 3.75 17H16.25C17.2165 17 18 16.2165 18 15.25V6.75C18 5.7835 17.2165 5 16.25 5H11.4142C11.3479 5 11.2843 4.97366 11.2374 4.92678L9.82322 3.51256C9.49503 3.18437 9.04992 3 8.58579 3H3.75ZM10 8C10.4142 8 10.75 8.33579 10.75 8.75V10.25H12.25C12.6642 10.25 13 10.5858 13 11C13 11.4142 12.6642 11.75 12.25 11.75H10.75V13.25C10.75 13.6642 10.4142 14 10 14C9.58579 14 9.25 13.6642 9.25 13.25V11.75H7.75C7.33579 11.75 7 11.4142 7 11C7 10.5858 7.33579 10.25 7.75 10.25H9.25V8.75C9.25 8.33579 9.58579 8 10 8Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.75 3C2.7835 3 2 3.7835 2 4.75V15.25C2 16.2165 2.7835 17 3.75 17H16.25C17.2165 17 18 16.2165 18 15.25V6.75C18 5.7835 17.2165 5 16.25 5H11.4142C11.3479 5 11.2843 4.97366 11.2374 4.92678L9.82322 3.51256C9.49503 3.18437 9.04992 3 8.58579 3H3.75ZM10 8C10.4142 8 10.75 8.33579 10.75 8.75V10.25H12.25C12.6642 10.25 13 10.5858 13 11C13 11.4142 12.6642 11.75 12.25 11.75H10.75V13.25C10.75 13.6642 10.4142 14 10 14C9.58579 14 9.25 13.6642 9.25 13.25V11.75H7.75C7.33579 11.75 7 11.4142 7 11C7 10.5858 7.33579 10.25 7.75 10.25H9.25V8.75C9.25 8.33579 9.58579 8 10 8Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/folder.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.75 3C2.7835 3 2 3.7835 2 4.75V8.01091C2.50515 7.6875 3.10568 7.5 3.75 7.5H16.25C16.8943 7.5 17.4949 7.6875 18 8.01091V6.75C18 5.7835 17.2165 5 16.25 5H11.4142C11.3479 5 11.2843 4.97366 11.2374 4.92678L9.82322 3.51256C9.49503 3.18437 9.04992 3 8.58579 3H3.75Z" fill="#0F172A"/>
    <path d="M3.75 9C2.7835 9 2 9.7835 2 10.75V15.25C2 16.2165 2.7835 17 3.75 17H16.25C17.2165 17 18 16.2165 18 15.25V10.75C18 9.7835 17.2165 9 16.25 9H3.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.75 3C2.7835 3 2 3.7835 2 4.75V8.01091C2.50515 7.6875 3.10568 7.5 3.75 7.5H16.25C16.8943 7.5 17.4949 7.6875 18 8.01091V6.75C18 5.7835 17.2165 5 16.25 5H11.4142C11.3479 5 11.2843 4.97366 11.2374 4.92678L9.82322 3.51256C9.49503 3.18437 9.04992 3 8.58579 3H3.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3.75 9C2.7835 9 2 9.7835 2 10.75V15.25C2 16.2165 2.7835 17 3.75 17H16.25C17.2165 17 18 16.2165 18 15.25V10.75C18 9.7835 17.2165 9 16.25 9H3.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/forward.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.28824 4.81895C2.28891 4.20172 1 4.92057 1 6.09515V13.9056C1 15.0802 2.2889 15.7991 3.28824 15.1818L9.61101 11.2766C9.76598 11.1809 9.89564 11.064 10 10.9328V13.9056C10 15.0802 11.2889 15.7991 12.2882 15.1818L18.611 11.2766C19.56 10.6904 19.56 9.31035 18.611 8.72419L12.2882 4.81895C11.2889 4.20172 10 4.92057 10 6.09515V9.06794C9.89564 8.93679 9.76598 8.81991 9.61101 8.72419L3.28824 4.81895Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.28824 4.81895C2.28891 4.20172 1 4.92057 1 6.09515V13.9056C1 15.0802 2.2889 15.7991 3.28824 15.1818L9.61101 11.2766C9.76598 11.1809 9.89564 11.064 10 10.9328V13.9056C10 15.0802 11.2889 15.7991 12.2882 15.1818L18.611 11.2766C19.56 10.6904 19.56 9.31035 18.611 8.72419L12.2882 4.81895C11.2889 4.20172 10 4.92057 10 6.09515V9.06794C9.89564 8.93679 9.76598 8.81991 9.61101 8.72419L3.28824 4.81895Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/funnel.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.62803 1.60102C5.02718 1.2056 7.48986 1 10 1C12.5101 1 14.9728 1.2056 17.372 1.60102C17.7342 1.66072 18 1.97389 18 2.34103V4.62868C18 5.22542 17.7629 5.79771 17.341 6.21967L12.659 10.9017C12.2371 11.3236 12 11.8959 12 12.4926V15.5291C12 16.2126 11.6893 16.859 11.1556 17.286L9.21852 18.8357C8.99339 19.0158 8.68496 19.0509 8.42511 18.926C8.16526 18.8011 8 18.5383 8 18.25V12.4926C8 11.8959 7.76295 11.3236 7.34099 10.9017L2.65901 6.21967C2.23705 5.79771 2 5.22542 2 4.62868V2.34103C2 1.97389 2.26578 1.66072 2.62803 1.60102Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.62803 1.60102C5.02718 1.2056 7.48986 1 10 1C12.5101 1 14.9728 1.2056 17.372 1.60102C17.7342 1.66072 18 1.97389 18 2.34103V4.62868C18 5.22542 17.7629 5.79771 17.341 6.21967L12.659 10.9017C12.2371 11.3236 12 11.8959 12 12.4926V15.5291C12 16.2126 11.6893 16.859 11.1556 17.286L9.21852 18.8357C8.99339 19.0158 8.68496 19.0509 8.42511 18.926C8.16526 18.8011 8 18.5383 8 18.25V12.4926C8 11.8959 7.76295 11.3236 7.34099 10.9017L2.65901 6.21967C2.23705 5.79771 2 5.22542 2 4.62868V2.34103C2 1.97389 2.26578 1.66072 2.62803 1.60102Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/gif.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 5.25C1 4.00736 2.00736 3 3.25 3H16.75C17.9926 3 19 4.00736 19 5.25V14.75C19 15.9926 17.9926 17 16.75 17H3.25C2.00736 17 1 15.9926 1 14.75V5.25ZM5.02565 8.12881C5.35663 7.65074 5.7212 7.5 6 7.5C6.2788 7.5 6.64338 7.65074 6.97435 8.12881C7.21012 8.46937 7.67733 8.55432 8.0179 8.31855C8.35846 8.08277 8.44341 7.61556 8.20763 7.275C7.65993 6.48386 6.87285 6 6 6C5.12715 6 4.34007 6.48386 3.79237 7.275C3.24966 8.0589 3 9.04757 3 10C3 10.9524 3.24966 11.9411 3.79237 12.725C4.34007 13.5161 5.12715 14 6 14C6.87285 14 7.65993 13.5161 8.20763 12.725C8.29447 12.5996 8.34099 12.4507 8.34099 12.2981V10C8.34099 9.58579 8.0052 9.25 7.59099 9.25H6.25C5.83579 9.25 5.5 9.58579 5.5 10C5.5 10.4142 5.83579 10.75 6.25 10.75H6.84099V12.0447C6.54806 12.3866 6.24178 12.5 6 12.5C5.7212 12.5 5.35663 12.3493 5.02565 11.8712C4.68968 11.3859 4.5 10.7111 4.5 10C4.5 9.28893 4.68968 8.61411 5.02565 8.12881ZM10.75 6C11.1642 6 11.5 6.33579 11.5 6.75V13.25C11.5 13.6642 11.1642 14 10.75 14C10.3358 14 10 13.6642 10 13.25V6.75C10 6.33579 10.3358 6 10.75 6ZM13.75 6H16.25C16.6642 6 17 6.33579 17 6.75C17 7.16421 16.6642 7.5 16.25 7.5H14.5V9.25L15.25 9.25C15.6642 9.25 16 9.58579 16 10C16 10.4142 15.6642 10.75 15.25 10.75L14.5 10.75V13.25C14.5 13.6642 14.1642 14 13.75 14C13.3358 14 13 13.6642 13 13.25V6.75C13 6.33579 13.3358 6 13.75 6Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 5.25C1 4.00736 2.00736 3 3.25 3H16.75C17.9926 3 19 4.00736 19 5.25V14.75C19 15.9926 17.9926 17 16.75 17H3.25C2.00736 17 1 15.9926 1 14.75V5.25ZM5.02565 8.12881C5.35663 7.65074 5.7212 7.5 6 7.5C6.2788 7.5 6.64338 7.65074 6.97435 8.12881C7.21012 8.46937 7.67733 8.55432 8.0179 8.31855C8.35846 8.08277 8.44341 7.61556 8.20763 7.275C7.65993 6.48386 6.87285 6 6 6C5.12715 6 4.34007 6.48386 3.79237 7.275C3.24966 8.0589 3 9.04757 3 10C3 10.9524 3.24966 11.9411 3.79237 12.725C4.34007 13.5161 5.12715 14 6 14C6.87285 14 7.65993 13.5161 8.20763 12.725C8.29447 12.5996 8.34099 12.4507 8.34099 12.2981V10C8.34099 9.58579 8.0052 9.25 7.59099 9.25H6.25C5.83579 9.25 5.5 9.58579 5.5 10C5.5 10.4142 5.83579 10.75 6.25 10.75H6.84099V12.0447C6.54806 12.3866 6.24178 12.5 6 12.5C5.7212 12.5 5.35663 12.3493 5.02565 11.8712C4.68968 11.3859 4.5 10.7111 4.5 10C4.5 9.28893 4.68968 8.61411 5.02565 8.12881ZM10.75 6C11.1642 6 11.5 6.33579 11.5 6.75V13.25C11.5 13.6642 11.1642 14 10.75 14C10.3358 14 10 13.6642 10 13.25V6.75C10 6.33579 10.3358 6 10.75 6ZM13.75 6H16.25C16.6642 6 17 6.33579 17 6.75C17 7.16421 16.6642 7.5 16.25 7.5H14.5V9.25L15.25 9.25C15.6642 9.25 16 9.58579 16 10C16 10.4142 15.6642 10.75 15.25 10.75L14.5 10.75V13.25C14.5 13.6642 14.1642 14 13.75 14C13.3358 14 13 13.6642 13 13.25V6.75C13 6.33579 13.3358 6 13.75 6Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/gift-top.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.25 3H3.5C2.67157 3 2 3.67157 2 4.5V9.25H5.36497C4.36193 8.17155 4.38539 6.48382 5.43534 5.43387C6.48481 4.3844 8.17149 4.36049 9.25 5.36214V3ZM2 10.75V15.5C2 16.3284 2.67157 17 3.5 17H9.25V12.1236C8.47036 13.6809 6.86003 14.75 5 14.75C4.58579 14.75 4.25 14.4142 4.25 14C4.25 13.5858 4.58579 13.25 5 13.25C6.53679 13.25 7.82445 12.1834 8.16303 10.75H2ZM10.75 17H16.5C17.3284 17 18 16.3284 18 15.5V10.75H11.837C12.1755 12.1834 13.4632 13.25 15 13.25C15.4142 13.25 15.75 13.5858 15.75 14C15.75 14.4142 15.4142 14.75 15 14.75C13.14 14.75 11.5296 13.6809 10.75 12.1236V17ZM18 9.25V4.5C18 3.67157 17.3284 3 16.5 3H10.75V5.36214C11.8285 4.36049 13.5152 4.3844 14.5647 5.43387C15.6146 6.48382 15.6381 8.17155 14.635 9.25H18ZM13.504 6.49453C13.0158 6.00638 12.2244 6.00638 11.7362 6.49453C11.3768 6.85395 11.2105 7.49384 11.1772 8.19191C11.1664 8.41998 11.1706 8.63456 11.1809 8.81764C11.364 8.82791 11.5785 8.83216 11.8066 8.82129C12.5047 8.78805 13.1446 8.62172 13.504 8.2623C13.9922 7.77414 13.9922 6.98269 13.504 6.49453ZM8.26377 6.49453C7.77561 6.00638 6.98415 6.00638 6.496 6.49453C6.00784 6.98269 6.00784 7.77414 6.496 8.2623C6.85542 8.62172 7.49531 8.78805 8.19337 8.82129C8.42145 8.83216 8.63602 8.82791 8.81911 8.81764C8.82938 8.63456 8.83362 8.41998 8.82276 8.19191C8.78952 7.49384 8.62318 6.85395 8.26377 6.49453Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.25 3H3.5C2.67157 3 2 3.67157 2 4.5V9.25H5.36497C4.36193 8.17155 4.38539 6.48382 5.43534 5.43387C6.48481 4.3844 8.17149 4.36049 9.25 5.36214V3ZM2 10.75V15.5C2 16.3284 2.67157 17 3.5 17H9.25V12.1236C8.47036 13.6809 6.86003 14.75 5 14.75C4.58579 14.75 4.25 14.4142 4.25 14C4.25 13.5858 4.58579 13.25 5 13.25C6.53679 13.25 7.82445 12.1834 8.16303 10.75H2ZM10.75 17H16.5C17.3284 17 18 16.3284 18 15.5V10.75H11.837C12.1755 12.1834 13.4632 13.25 15 13.25C15.4142 13.25 15.75 13.5858 15.75 14C15.75 14.4142 15.4142 14.75 15 14.75C13.14 14.75 11.5296 13.6809 10.75 12.1236V17ZM18 9.25V4.5C18 3.67157 17.3284 3 16.5 3H10.75V5.36214C11.8285 4.36049 13.5152 4.3844 14.5647 5.43387C15.6146 6.48382 15.6381 8.17155 14.635 9.25H18ZM13.504 6.49453C13.0158 6.00638 12.2244 6.00638 11.7362 6.49453C11.3768 6.85395 11.2105 7.49384 11.1772 8.19191C11.1664 8.41998 11.1706 8.63456 11.1809 8.81764C11.364 8.82791 11.5785 8.83216 11.8066 8.82129C12.5047 8.78805 13.1446 8.62172 13.504 8.2623C13.9922 7.77414 13.9922 6.98269 13.504 6.49453ZM8.26377 6.49453C7.77561 6.00638 6.98415 6.00638 6.496 6.49453C6.00784 6.98269 6.00784 7.77414 6.496 8.2623C6.85542 8.62172 7.49531 8.78805 8.19337 8.82129C8.42145 8.83216 8.63602 8.82791 8.81911 8.81764C8.82938 8.63456 8.83362 8.41998 8.82276 8.19191C8.78952 7.49384 8.62318 6.85395 8.26377 6.49453Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/gift.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.0002 6C14.314 5.58217 14.5 5.0628 14.5 4.5C14.5 3.11929 13.3807 2 12 2C11.1822 2 10.4561 2.39267 10 2.99976C9.54389 2.39267 8.8178 2 8 2C6.61929 2 5.5 3.11929 5.5 4.5C5.5 5.0628 5.68597 5.58217 5.99982 6H3.25C2.55964 6 2 6.55964 2 7.25V7.75C2 8.44036 2.55964 9 3.25 9H9.25V6H10.75V9H16.75C17.4404 9 18 8.44036 18 7.75V7.25C18 6.55964 17.4404 6 16.75 6H14.0002ZM13 4.5C13 5.05228 12.5523 5.5 12 5.5H11L11 4.5C11 3.94772 11.4477 3.5 12 3.5C12.5523 3.5 13 3.94772 13 4.5ZM7 4.5C7 5.05228 7.44772 5.5 8 5.5H9V4.5C9 3.94772 8.55228 3.5 8 3.5C7.44772 3.5 7 3.94772 7 4.5Z" fill="#0F172A"/>
    <path d="M9.25 10.5H3V15.25C3 16.7688 4.23122 18 5.75 18H9.25V10.5Z" fill="#0F172A"/>
    <path d="M10.75 18V10.5H17V15.25C17 16.7688 15.7688 18 14.25 18H10.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.0002 6C14.314 5.58217 14.5 5.0628 14.5 4.5C14.5 3.11929 13.3807 2 12 2C11.1822 2 10.4561 2.39267 10 2.99976C9.54389 2.39267 8.8178 2 8 2C6.61929 2 5.5 3.11929 5.5 4.5C5.5 5.0628 5.68597 5.58217 5.99982 6H3.25C2.55964 6 2 6.55964 2 7.25V7.75C2 8.44036 2.55964 9 3.25 9H9.25V6H10.75V9H16.75C17.4404 9 18 8.44036 18 7.75V7.25C18 6.55964 17.4404 6 16.75 6H14.0002ZM13 4.5C13 5.05228 12.5523 5.5 12 5.5H11L11 4.5C11 3.94772 11.4477 3.5 12 3.5C12.5523 3.5 13 3.94772 13 4.5ZM7 4.5C7 5.05228 7.44772 5.5 8 5.5H9V4.5C9 3.94772 8.55228 3.5 8 3.5C7.44772 3.5 7 3.94772 7 4.5Z\" fill=\"#0F172A\"/>\n<path d=\"M9.25 10.5H3V15.25C3 16.7688 4.23122 18 5.75 18H9.25V10.5Z\" fill=\"#0F172A\"/>\n<path d=\"M10.75 18V10.5H17V15.25C17 16.7688 15.7688 18 14.25 18H10.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/globe-alt.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M16.5546 5.41215C15.6845 4.17138 14.4711 3.18897 13.0522 2.60288C13.8305 3.9731 14.3991 5.47789 14.7147 7.07367C15.4062 6.61183 16.0263 6.05128 16.5546 5.41215Z" fill="#0F172A"/>
    <path d="M13.3257 7.82478C12.9801 5.69142 12.1346 3.72563 10.9132 2.05155C10.6135 2.0175 10.3088 2 10 2C9.69121 2 9.3865 2.0175 9.08682 2.05155C7.86543 3.72563 7.0199 5.69141 6.67433 7.82478C7.69581 8.25948 8.81982 8.5 10 8.5C11.1802 8.5 12.3042 8.25948 13.3257 7.82478Z" fill="#0F172A"/>
    <path d="M6.51418 9.37568C7.59957 9.77938 8.77402 10 10 10C11.226 10 12.4004 9.77938 13.4858 9.37568C13.4952 9.58261 13.5 9.79075 13.5 10C13.5 11.079 13.3734 12.1284 13.1343 13.1343C12.1284 13.3734 11.079 13.5 10 13.5C8.92099 13.5 7.87155 13.3734 6.86572 13.1343C6.62659 12.1284 6.5 11.079 6.5 10C6.5 9.79075 6.50476 9.58261 6.51418 9.37568Z" fill="#0F172A"/>
    <path d="M5.28529 7.07367C5.60086 5.47789 6.16954 3.9731 6.94776 2.60288C5.52894 3.18896 4.3155 4.17138 3.44542 5.41215C3.97374 6.05128 4.59375 6.61183 5.28529 7.07367Z" fill="#0F172A"/>
    <path d="M17.3336 6.79843C17.7622 7.77878 18 8.86162 18 10C18 10.3088 17.9825 10.6135 17.9484 10.9132C16.9787 11.6207 15.911 12.2021 14.7696 12.6333C14.921 11.7783 15 10.8984 15 10C15 9.5601 14.9811 9.12463 14.944 8.69435C15.8352 8.18645 16.6408 7.54546 17.3336 6.79843Z" fill="#0F172A"/>
    <path d="M2.66636 6.79843C3.3592 7.54546 4.16477 8.18645 5.05604 8.69435C5.01894 9.12463 5 9.5601 5 10C5 10.8984 5.07898 11.7783 5.23037 12.6333C4.08897 12.2021 3.02132 11.6207 2.05155 10.9132C2.0175 10.6135 2 10.3088 2 10C2 8.86162 2.23777 7.77878 2.66636 6.79843Z" fill="#0F172A"/>
    <path d="M10 15C10.8984 15 11.7783 14.921 12.6333 14.7696C12.2021 15.911 11.6207 16.9787 10.9132 17.9485C10.6135 17.9825 10.3088 18 10 18C9.69121 18 9.3865 17.9825 9.08682 17.9485C8.37929 16.9787 7.79789 15.911 7.36674 14.7696C8.22167 14.921 9.10161 15 10 15Z" fill="#0F172A"/>
    <path d="M14.3573 14.3573C14.0334 15.4259 13.5935 16.4441 13.0522 17.3971C15.0158 16.586 16.586 15.0158 17.3971 13.0522C16.4441 13.5935 15.4259 14.0334 14.3573 14.3573Z" fill="#0F172A"/>
    <path d="M6.94776 17.3971C4.98419 16.586 3.41399 15.0158 2.60288 13.0522C3.55593 13.5935 4.57408 14.0334 5.64268 14.3573C5.96656 15.4259 6.40648 16.4441 6.94776 17.3971Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M16.5546 5.41215C15.6845 4.17138 14.4711 3.18897 13.0522 2.60288C13.8305 3.9731 14.3991 5.47789 14.7147 7.07367C15.4062 6.61183 16.0263 6.05128 16.5546 5.41215Z\" fill=\"#0F172A\"/>\n<path d=\"M13.3257 7.82478C12.9801 5.69142 12.1346 3.72563 10.9132 2.05155C10.6135 2.0175 10.3088 2 10 2C9.69121 2 9.3865 2.0175 9.08682 2.05155C7.86543 3.72563 7.0199 5.69141 6.67433 7.82478C7.69581 8.25948 8.81982 8.5 10 8.5C11.1802 8.5 12.3042 8.25948 13.3257 7.82478Z\" fill=\"#0F172A\"/>\n<path d=\"M6.51418 9.37568C7.59957 9.77938 8.77402 10 10 10C11.226 10 12.4004 9.77938 13.4858 9.37568C13.4952 9.58261 13.5 9.79075 13.5 10C13.5 11.079 13.3734 12.1284 13.1343 13.1343C12.1284 13.3734 11.079 13.5 10 13.5C8.92099 13.5 7.87155 13.3734 6.86572 13.1343C6.62659 12.1284 6.5 11.079 6.5 10C6.5 9.79075 6.50476 9.58261 6.51418 9.37568Z\" fill=\"#0F172A\"/>\n<path d=\"M5.28529 7.07367C5.60086 5.47789 6.16954 3.9731 6.94776 2.60288C5.52894 3.18896 4.3155 4.17138 3.44542 5.41215C3.97374 6.05128 4.59375 6.61183 5.28529 7.07367Z\" fill=\"#0F172A\"/>\n<path d=\"M17.3336 6.79843C17.7622 7.77878 18 8.86162 18 10C18 10.3088 17.9825 10.6135 17.9484 10.9132C16.9787 11.6207 15.911 12.2021 14.7696 12.6333C14.921 11.7783 15 10.8984 15 10C15 9.5601 14.9811 9.12463 14.944 8.69435C15.8352 8.18645 16.6408 7.54546 17.3336 6.79843Z\" fill=\"#0F172A\"/>\n<path d=\"M2.66636 6.79843C3.3592 7.54546 4.16477 8.18645 5.05604 8.69435C5.01894 9.12463 5 9.5601 5 10C5 10.8984 5.07898 11.7783 5.23037 12.6333C4.08897 12.2021 3.02132 11.6207 2.05155 10.9132C2.0175 10.6135 2 10.3088 2 10C2 8.86162 2.23777 7.77878 2.66636 6.79843Z\" fill=\"#0F172A\"/>\n<path d=\"M10 15C10.8984 15 11.7783 14.921 12.6333 14.7696C12.2021 15.911 11.6207 16.9787 10.9132 17.9485C10.6135 17.9825 10.3088 18 10 18C9.69121 18 9.3865 17.9825 9.08682 17.9485C8.37929 16.9787 7.79789 15.911 7.36674 14.7696C8.22167 14.921 9.10161 15 10 15Z\" fill=\"#0F172A\"/>\n<path d=\"M14.3573 14.3573C14.0334 15.4259 13.5935 16.4441 13.0522 17.3971C15.0158 16.586 16.586 15.0158 17.3971 13.0522C16.4441 13.5935 15.4259 14.0334 14.3573 14.3573Z\" fill=\"#0F172A\"/>\n<path d=\"M6.94776 17.3971C4.98419 16.586 3.41399 15.0158 2.60288 13.0522C3.55593 13.5935 4.57408 14.0334 5.64268 14.3573C5.96656 15.4259 6.40648 16.4441 6.94776 17.3971Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/globe-americas.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM16.5 10C16.5 13.5899 13.5899 16.5 10 16.5C6.41015 16.5 3.5 13.5899 3.5 10C3.5 8.15664 4.26733 6.4925 5.5 5.30957V5.75736C5.5 6.68562 5.86875 7.57586 6.52513 8.23223L8.29289 10L8 10.2929C7.60947 10.6834 7.60948 11.3166 8 11.7071L9.06066 12.7678C9.34197 13.0491 9.5 13.4306 9.5 13.8284V14.191C9.5 14.5698 9.714 14.916 10.0528 15.0854L10.3292 15.2236C10.8232 15.4706 11.4238 15.2704 11.6708 14.7764L13.1249 11.8683C13.4136 11.2908 13.3004 10.5933 12.8439 10.1368L12.0721 9.36495C11.8042 9.09712 11.4081 9.0036 11.0487 9.12338L10.6647 9.2514C10.4286 9.33008 10.1706 9.22322 10.0593 9.00066L9.76344 8.40885C9.67084 8.22365 9.70714 7.99997 9.85355 7.85355C9.99997 7.70714 10.2236 7.67084 10.4088 7.76344L10.6708 7.89443C10.8097 7.96385 10.9628 8 11.118 8H11.3063C11.9888 8 12.4708 7.3313 12.255 6.68377L12.187 6.47978C12.1227 6.28692 12.1816 6.07434 12.3359 5.94204L13.7754 4.70821C15.4248 5.8871 16.5 7.81799 16.5 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM16.5 10C16.5 13.5899 13.5899 16.5 10 16.5C6.41015 16.5 3.5 13.5899 3.5 10C3.5 8.15664 4.26733 6.4925 5.5 5.30957V5.75736C5.5 6.68562 5.86875 7.57586 6.52513 8.23223L8.29289 10L8 10.2929C7.60947 10.6834 7.60948 11.3166 8 11.7071L9.06066 12.7678C9.34197 13.0491 9.5 13.4306 9.5 13.8284V14.191C9.5 14.5698 9.714 14.916 10.0528 15.0854L10.3292 15.2236C10.8232 15.4706 11.4238 15.2704 11.6708 14.7764L13.1249 11.8683C13.4136 11.2908 13.3004 10.5933 12.8439 10.1368L12.0721 9.36495C11.8042 9.09712 11.4081 9.0036 11.0487 9.12338L10.6647 9.2514C10.4286 9.33008 10.1706 9.22322 10.0593 9.00066L9.76344 8.40885C9.67084 8.22365 9.70714 7.99997 9.85355 7.85355C9.99997 7.70714 10.2236 7.67084 10.4088 7.76344L10.6708 7.89443C10.8097 7.96385 10.9628 8 11.118 8H11.3063C11.9888 8 12.4708 7.3313 12.255 6.68377L12.187 6.47978C12.1227 6.28692 12.1816 6.07434 12.3359 5.94204L13.7754 4.70821C15.4248 5.8871 16.5 7.81799 16.5 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/globe-asia-australia.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM11.5 16.3261C11.0185 16.4398 10.5163 16.5 10 16.5C7.98332 16.5 6.18115 15.5816 4.98891 14.1402L5.47949 13.1591C5.59335 12.9313 5.88103 12.8549 6.09287 12.9962L6.38719 13.1924C6.78056 13.4546 7.30434 13.4028 7.63864 13.0685C7.90427 12.8028 7.99702 12.4099 7.87823 12.0535L7.68051 11.4604C7.6409 11.3416 7.6947 11.2117 7.80674 11.1556L9.78018 10.1689C10.2846 9.9167 10.4539 9.27942 10.141 8.81015C9.99285 8.58788 10.1177 8.28635 10.3797 8.23396L10.5047 8.20896C11.3568 8.03855 12.0522 7.42466 12.3269 6.60033L12.3766 6.45127C12.4964 6.09194 12.4029 5.69577 12.135 5.42794L10.6464 3.93934C10.5527 3.84557 10.5 3.71839 10.5 3.58579V3.51894C13.8562 3.77426 16.5 6.57839 16.5 10C16.5 10.9822 16.2821 11.9136 15.8921 12.7484C15.6958 12.6128 15.4634 12.5258 15.212 12.5049L14.6464 11.9393C14.3651 11.658 13.9836 11.5 13.5858 11.5H13.4142C13.0164 11.5 12.6349 11.658 12.3536 11.9393L11.7612 12.5317C11.7232 12.5697 11.6793 12.6013 11.6312 12.6254L10.0528 13.4146C9.714 13.584 9.5 13.9302 9.5 14.309V14.5C9.5 15.0523 9.94772 15.5 10.5 15.5H11C11.2761 15.5 11.5 15.7239 11.5 16V16.3261Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM11.5 16.3261C11.0185 16.4398 10.5163 16.5 10 16.5C7.98332 16.5 6.18115 15.5816 4.98891 14.1402L5.47949 13.1591C5.59335 12.9313 5.88103 12.8549 6.09287 12.9962L6.38719 13.1924C6.78056 13.4546 7.30434 13.4028 7.63864 13.0685C7.90427 12.8028 7.99702 12.4099 7.87823 12.0535L7.68051 11.4604C7.6409 11.3416 7.6947 11.2117 7.80674 11.1556L9.78018 10.1689C10.2846 9.9167 10.4539 9.27942 10.141 8.81015C9.99285 8.58788 10.1177 8.28635 10.3797 8.23396L10.5047 8.20896C11.3568 8.03855 12.0522 7.42466 12.3269 6.60033L12.3766 6.45127C12.4964 6.09194 12.4029 5.69577 12.135 5.42794L10.6464 3.93934C10.5527 3.84557 10.5 3.71839 10.5 3.58579V3.51894C13.8562 3.77426 16.5 6.57839 16.5 10C16.5 10.9822 16.2821 11.9136 15.8921 12.7484C15.6958 12.6128 15.4634 12.5258 15.212 12.5049L14.6464 11.9393C14.3651 11.658 13.9836 11.5 13.5858 11.5H13.4142C13.0164 11.5 12.6349 11.658 12.3536 11.9393L11.7612 12.5317C11.7232 12.5697 11.6793 12.6013 11.6312 12.6254L10.0528 13.4146C9.714 13.584 9.5 13.9302 9.5 14.309V14.5C9.5 15.0523 9.94772 15.5 10.5 15.5H11C11.2761 15.5 11.5 15.7239 11.5 16V16.3261Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/globe-europe-africa.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM16.4969 10.2041C16.389 13.6995 13.5216 16.5 10 16.5C6.41015 16.5 3.5 13.5899 3.5 10C3.5 7.12656 5.36451 4.68861 7.94969 3.82998L6.92671 5.62019C6.60171 6.18894 6.69759 6.90485 7.16078 7.36805C7.6029 7.81017 8.27833 7.91977 8.83757 7.64015L9.0123 7.55279C9.08173 7.51807 9.15829 7.5 9.23591 7.5H9.38181C9.5712 7.5 9.74433 7.607 9.82902 7.77639C9.8994 7.91716 9.8994 8.08284 9.82902 8.22361L9.80123 8.27919C9.73357 8.41452 9.59525 8.5 9.44395 8.5H8.9418C8.18614 8.5 7.48048 8.87766 7.06131 9.50641L7.01751 9.57212C6.65828 10.111 6.56795 10.7855 6.77274 11.3998C6.98201 12.0276 7.47787 12.5197 8.10338 12.7282C8.33997 12.8071 8.49984 13.0292 8.49984 13.2749V14.3246C8.49984 14.9738 9.02608 15.5 9.67523 15.5C10.0323 15.5 10.37 15.3377 10.5931 15.0589L12.2044 13.0446C12.3957 12.8056 12.4998 12.5086 12.4998 12.2025C12.4998 11.8866 12.6279 11.5791 12.8531 11.3539C13.3088 10.8982 13.3864 10.1784 13.0257 9.63738L12.5617 8.94145C12.5214 8.88091 12.4998 8.80979 12.4998 8.73703C12.4998 8.43336 12.8465 8.26002 13.0895 8.44222L13.4322 8.69925C13.748 8.93609 14.1704 8.97373 14.523 8.79746C14.7488 8.68456 15.0216 8.72887 15.1996 8.90689L16.4969 10.2041Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM16.4969 10.2041C16.389 13.6995 13.5216 16.5 10 16.5C6.41015 16.5 3.5 13.5899 3.5 10C3.5 7.12656 5.36451 4.68861 7.94969 3.82998L6.92671 5.62019C6.60171 6.18894 6.69759 6.90485 7.16078 7.36805C7.6029 7.81017 8.27833 7.91977 8.83757 7.64015L9.0123 7.55279C9.08173 7.51807 9.15829 7.5 9.23591 7.5H9.38181C9.5712 7.5 9.74433 7.607 9.82902 7.77639C9.8994 7.91716 9.8994 8.08284 9.82902 8.22361L9.80123 8.27919C9.73357 8.41452 9.59525 8.5 9.44395 8.5H8.9418C8.18614 8.5 7.48048 8.87766 7.06131 9.50641L7.01751 9.57212C6.65828 10.111 6.56795 10.7855 6.77274 11.3998C6.98201 12.0276 7.47787 12.5197 8.10338 12.7282C8.33997 12.8071 8.49984 13.0292 8.49984 13.2749V14.3246C8.49984 14.9738 9.02608 15.5 9.67523 15.5C10.0323 15.5 10.37 15.3377 10.5931 15.0589L12.2044 13.0446C12.3957 12.8056 12.4998 12.5086 12.4998 12.2025C12.4998 11.8866 12.6279 11.5791 12.8531 11.3539C13.3088 10.8982 13.3864 10.1784 13.0257 9.63738L12.5617 8.94145C12.5214 8.88091 12.4998 8.80979 12.4998 8.73703C12.4998 8.43336 12.8465 8.26002 13.0895 8.44222L13.4322 8.69925C13.748 8.93609 14.1704 8.97373 14.523 8.79746C14.7488 8.68456 15.0216 8.72887 15.1996 8.90689L16.4969 10.2041Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/hand-raised.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11 2C11 1.44772 10.5523 1 10 1C9.44772 1 9 1.44772 9 2V8V8.5C9 8.77614 8.77614 9 8.5 9C8.22386 9 8 8.77614 8 8.5V8V3C8 2.44772 7.55229 2 7 2C6.44771 2 6 2.44772 6 3V8V8.5C6 8.77614 5.77614 9 5.5 9C5.22386 9 5 8.77614 5 8.5V8V5C5 4.44772 4.55229 4 4 4C3.44771 4 3 4.44772 3 5V11V12C3 15.866 6.13401 19 10 19C13.866 19 17 15.866 17 12V11V8C17 7.44772 16.5523 7 16 7C15.4477 7 15 7.44772 15 8V11V11.5C15 11.7761 14.7761 12 14.5 12C14.2239 12 14 11.7761 14 11.5V11V10V8V3C14 2.44772 13.5523 2 13 2C12.4477 2 12 2.44772 12 3V8V8.5C12 8.77614 11.7761 9 11.5 9C11.2239 9 11 8.77614 11 8.5V8V2Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11 2C11 1.44772 10.5523 1 10 1C9.44772 1 9 1.44772 9 2V8V8.5C9 8.77614 8.77614 9 8.5 9C8.22386 9 8 8.77614 8 8.5V8V3C8 2.44772 7.55229 2 7 2C6.44771 2 6 2.44772 6 3V8V8.5C6 8.77614 5.77614 9 5.5 9C5.22386 9 5 8.77614 5 8.5V8V5C5 4.44772 4.55229 4 4 4C3.44771 4 3 4.44772 3 5V11V12C3 15.866 6.13401 19 10 19C13.866 19 17 15.866 17 12V11V8C17 7.44772 16.5523 7 16 7C15.4477 7 15 7.44772 15 8V11V11.5C15 11.7761 14.7761 12 14.5 12C14.2239 12 14 11.7761 14 11.5V11V10V8V3C14 2.44772 13.5523 2 13 2C12.4477 2 12 2.44772 12 3V8V8.5C12 8.77614 11.7761 9 11.5 9C11.2239 9 11 8.77614 11 8.5V8V2Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/hand-thumb-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M18.9053 12.75C18.9053 13.4404 18.3456 14 17.6553 14C16.9649 14 16.4053 13.4404 16.4053 12.75L16.4053 5.25C16.4053 4.55964 16.9649 4 17.6553 4C18.3456 4 18.9053 4.55964 18.9053 5.25L18.9053 12.75Z" fill="#0F172A"/>
    <path d="M8.90527 17L8.90527 18.2998C8.90527 18.5676 8.76554 18.8259 8.51033 18.9068C8.31945 18.9674 8.11618 19 7.90527 19C6.8007 19 5.90527 18.1046 5.90527 17C5.90527 16.005 6.08694 15.0524 6.4189 14.1735C6.62302 13.6332 6.25287 13 5.67524 13L3.15527 13C1.91263 13 0.894185 11.9904 1.00907 10.7531C1.20216 8.67339 1.66061 6.67064 2.35024 4.77906C2.75183 3.67752 3.83297 3 5.00543 3L8.19707 3C8.66281 3 9.12214 3.10843 9.53871 3.31672L12.2718 4.68328C12.6884 4.89156 13.1477 5 13.6135 5L14.9053 5L14.9053 12L13.9421 12C13.2576 12 12.6842 12.4825 12.3299 13.0681C11.8414 13.8752 11.0756 14.4958 10.1647 14.7977C9.73188 14.9412 9.31105 15.184 9.15279 15.6116C8.99272 16.0441 8.90527 16.5119 8.90527 17Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M18.9053 12.75C18.9053 13.4404 18.3456 14 17.6553 14C16.9649 14 16.4053 13.4404 16.4053 12.75L16.4053 5.25C16.4053 4.55964 16.9649 4 17.6553 4C18.3456 4 18.9053 4.55964 18.9053 5.25L18.9053 12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M8.90527 17L8.90527 18.2998C8.90527 18.5676 8.76554 18.8259 8.51033 18.9068C8.31945 18.9674 8.11618 19 7.90527 19C6.8007 19 5.90527 18.1046 5.90527 17C5.90527 16.005 6.08694 15.0524 6.4189 14.1735C6.62302 13.6332 6.25287 13 5.67524 13L3.15527 13C1.91263 13 0.894185 11.9904 1.00907 10.7531C1.20216 8.67339 1.66061 6.67064 2.35024 4.77906C2.75183 3.67752 3.83297 3 5.00543 3L8.19707 3C8.66281 3 9.12214 3.10843 9.53871 3.31672L12.2718 4.68328C12.6884 4.89156 13.1477 5 13.6135 5L14.9053 5L14.9053 12L13.9421 12C13.2576 12 12.6842 12.4825 12.3299 13.0681C11.8414 13.8752 11.0756 14.4958 10.1647 14.7977C9.73188 14.9412 9.31105 15.184 9.15279 15.6116C8.99272 16.0441 8.90527 16.5119 8.90527 17Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/hand-thumb-up.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M1 8.25C1 7.55964 1.55964 7 2.25 7C2.94036 7 3.5 7.55964 3.5 8.25V15.75C3.5 16.4404 2.94036 17 2.25 17C1.55964 17 1 16.4404 1 15.75V8.25Z" fill="#0F172A"/>
    <path d="M11 3V1.70016C11 1.43243 11.1397 1.17406 11.3949 1.09316C11.5858 1.03264 11.7891 1 12 1C13.1046 1 14 1.89543 14 3C14 3.99504 13.8183 4.94764 13.4864 5.82646C13.2823 6.36683 13.6524 7 14.23 7H16.75C17.9926 7 19.0111 8.00957 18.8962 9.24689C18.7031 11.3266 18.2447 13.3294 17.555 15.2209C17.1534 16.3225 16.0723 17 14.8998 17H11.7082C11.2425 17 10.7831 16.8916 10.3666 16.6833L7.63344 15.3167C7.21687 15.1084 6.75753 15 6.2918 15H5V8H5.9632C6.64763 8 7.22105 7.51748 7.57541 6.93193C8.06387 6.1248 8.82962 5.50423 9.74061 5.20229C10.1734 5.05884 10.5942 4.81595 10.7525 4.38836C10.9126 3.95587 11 3.48815 11 3Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M1 8.25C1 7.55964 1.55964 7 2.25 7C2.94036 7 3.5 7.55964 3.5 8.25V15.75C3.5 16.4404 2.94036 17 2.25 17C1.55964 17 1 16.4404 1 15.75V8.25Z\" fill=\"#0F172A\"/>\n<path d=\"M11 3V1.70016C11 1.43243 11.1397 1.17406 11.3949 1.09316C11.5858 1.03264 11.7891 1 12 1C13.1046 1 14 1.89543 14 3C14 3.99504 13.8183 4.94764 13.4864 5.82646C13.2823 6.36683 13.6524 7 14.23 7H16.75C17.9926 7 19.0111 8.00957 18.8962 9.24689C18.7031 11.3266 18.2447 13.3294 17.555 15.2209C17.1534 16.3225 16.0723 17 14.8998 17H11.7082C11.2425 17 10.7831 16.8916 10.3666 16.6833L7.63344 15.3167C7.21687 15.1084 6.75753 15 6.2918 15H5V8H5.9632C6.64763 8 7.22105 7.51748 7.57541 6.93193C8.06387 6.1248 8.82962 5.50423 9.74061 5.20229C10.1734 5.05884 10.5942 4.81595 10.7525 4.38836C10.9126 3.95587 11 3.48815 11 3Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/hashtag.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.49306 2.85257C9.54965 2.44224 9.2629 2.06372 8.85257 2.00713C8.44224 1.95053 8.06372 2.23728 8.00712 2.64761L7.54471 6.00009H4.19831C3.7841 6.00009 3.44831 6.33588 3.44831 6.75009C3.44831 7.16431 3.7841 7.50009 4.19831 7.50009H7.33782L6.64816 12.5001H3.30176C2.88754 12.5001 2.55176 12.8359 2.55176 13.2501C2.55176 13.6643 2.88754 14.0001 3.30176 14.0001H6.44127L6.00713 17.1476C5.95053 17.5579 6.23728 17.9365 6.64761 17.9931C7.05794 18.0497 7.43646 17.7629 7.49306 17.3526L7.95547 14.0001H10.9413L10.5071 17.1476C10.4505 17.5579 10.7373 17.9365 11.1476 17.9931C11.5579 18.0497 11.9365 17.7629 11.9931 17.3526L12.4555 14.0001H15.8018C16.216 14.0001 16.5518 13.6643 16.5518 13.2501C16.5518 12.8359 16.216 12.5001 15.8018 12.5001H12.6624L13.352 7.50009H16.6983C17.1125 7.50009 17.4483 7.16431 17.4483 6.75009C17.4483 6.33588 17.1125 6.00009 16.6983 6.00009H13.5589L13.9931 2.85257C14.0497 2.44224 13.7629 2.06372 13.3526 2.00713C12.9422 1.95053 12.5637 2.23728 12.5071 2.64761L12.0447 6.00009H9.05892L9.49306 2.85257ZM8.85202 7.50009L8.16236 12.5001H11.1482L11.8378 7.50009H8.85202Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.49306 2.85257C9.54965 2.44224 9.2629 2.06372 8.85257 2.00713C8.44224 1.95053 8.06372 2.23728 8.00712 2.64761L7.54471 6.00009H4.19831C3.7841 6.00009 3.44831 6.33588 3.44831 6.75009C3.44831 7.16431 3.7841 7.50009 4.19831 7.50009H7.33782L6.64816 12.5001H3.30176C2.88754 12.5001 2.55176 12.8359 2.55176 13.2501C2.55176 13.6643 2.88754 14.0001 3.30176 14.0001H6.44127L6.00713 17.1476C5.95053 17.5579 6.23728 17.9365 6.64761 17.9931C7.05794 18.0497 7.43646 17.7629 7.49306 17.3526L7.95547 14.0001H10.9413L10.5071 17.1476C10.4505 17.5579 10.7373 17.9365 11.1476 17.9931C11.5579 18.0497 11.9365 17.7629 11.9931 17.3526L12.4555 14.0001H15.8018C16.216 14.0001 16.5518 13.6643 16.5518 13.2501C16.5518 12.8359 16.216 12.5001 15.8018 12.5001H12.6624L13.352 7.50009H16.6983C17.1125 7.50009 17.4483 7.16431 17.4483 6.75009C17.4483 6.33588 17.1125 6.00009 16.6983 6.00009H13.5589L13.9931 2.85257C14.0497 2.44224 13.7629 2.06372 13.3526 2.00713C12.9422 1.95053 12.5637 2.23728 12.5071 2.64761L12.0447 6.00009H9.05892L9.49306 2.85257ZM8.85202 7.50009L8.16236 12.5001H11.1482L11.8378 7.50009H8.85202Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/heart.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M9.65298 16.9149L9.6476 16.9121L9.62912 16.9024C9.61341 16.8941 9.59102 16.8822 9.56238 16.8667C9.50511 16.8358 9.42281 16.7907 9.31906 16.732C9.11164 16.6146 8.81794 16.4425 8.46663 16.2206C7.76556 15.7777 6.82731 15.1314 5.88539 14.3197C4.04447 12.7332 2 10.3523 2 7.5C2 5.01472 4.01472 3 6.5 3C7.9144 3 9.17542 3.65238 10 4.67158C10.8246 3.65238 12.0856 3 13.5 3C15.9853 3 18 5.01472 18 7.5C18 10.3523 15.9555 12.7332 14.1146 14.3197C13.1727 15.1314 12.2344 15.7777 11.5334 16.2206C11.1821 16.4425 10.8884 16.6146 10.6809 16.732C10.5772 16.7907 10.4949 16.8358 10.4376 16.8667C10.409 16.8822 10.3866 16.8941 10.3709 16.9024L10.3524 16.9121L10.347 16.9149L10.3453 16.9158C10.13 17.03 9.87 17.03 9.65529 16.9161L9.65298 16.9149Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M9.65298 16.9149L9.6476 16.9121L9.62912 16.9024C9.61341 16.8941 9.59102 16.8822 9.56238 16.8667C9.50511 16.8358 9.42281 16.7907 9.31906 16.732C9.11164 16.6146 8.81794 16.4425 8.46663 16.2206C7.76556 15.7777 6.82731 15.1314 5.88539 14.3197C4.04447 12.7332 2 10.3523 2 7.5C2 5.01472 4.01472 3 6.5 3C7.9144 3 9.17542 3.65238 10 4.67158C10.8246 3.65238 12.0856 3 13.5 3C15.9853 3 18 5.01472 18 7.5C18 10.3523 15.9555 12.7332 14.1146 14.3197C13.1727 15.1314 12.2344 15.7777 11.5334 16.2206C11.1821 16.4425 10.8884 16.6146 10.6809 16.732C10.5772 16.7907 10.4949 16.8358 10.4376 16.8667C10.409 16.8822 10.3866 16.8941 10.3709 16.9024L10.3524 16.9121L10.347 16.9149L10.3453 16.9158C10.13 17.03 9.87 17.03 9.65529 16.9161L9.65298 16.9149Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/home-modern.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M14.9156 2.40414C15.1067 2.77164 14.9637 3.22447 14.5962 3.41557L14 3.72558V17.0002C14 17.5524 13.5523 18.0002 13 18.0002H10.74C10.3258 18.0002 9.99 17.6644 9.99 17.2502V13.7502C9.99 13.3359 9.65421 13.0002 9.24 13.0002H6.75C6.33579 13.0002 6 13.3359 6 13.7502V17.2502C6 17.6644 5.66421 18.0002 5.25 18.0002H1.75C1.33579 18.0002 1 17.6644 1 17.2502C1 16.8359 1.33579 16.5002 1.75 16.5002H2V9.95741C1.65296 10.0805 1.25946 9.93216 1.08474 9.59617C0.893644 9.22867 1.03664 8.77584 1.40414 8.58474L2 8.27489V5.75015C2 5.33594 2.33579 5.00015 2.75 5.00015C3.16421 5.00015 3.5 5.33594 3.5 5.75015V7.49489L13.9041 2.08474C14.2716 1.89364 14.7245 2.03664 14.9156 2.40414Z" fill="#0F172A"/>
    <path d="M15.8615 8.56938C16.0854 8.4334 16.3642 8.42419 16.5967 8.54508L18.596 9.58475C18.9635 9.77584 19.1065 10.2287 18.9154 10.5962C18.7407 10.9321 18.3473 11.0805 18.0003 10.9575V16.5002H18.25C18.6642 16.5002 19 16.8359 19 17.2502C19 17.6644 18.6642 18.0002 18.25 18.0002H16.25C16.0511 18.0002 15.8603 17.9211 15.7196 17.7805C15.579 17.6398 15.5 17.449 15.5 17.2501L15.5006 9.21043C15.5007 8.94839 15.6375 8.70536 15.8615 8.56938Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M14.9156 2.40414C15.1067 2.77164 14.9637 3.22447 14.5962 3.41557L14 3.72558V17.0002C14 17.5524 13.5523 18.0002 13 18.0002H10.74C10.3258 18.0002 9.99 17.6644 9.99 17.2502V13.7502C9.99 13.3359 9.65421 13.0002 9.24 13.0002H6.75C6.33579 13.0002 6 13.3359 6 13.7502V17.2502C6 17.6644 5.66421 18.0002 5.25 18.0002H1.75C1.33579 18.0002 1 17.6644 1 17.2502C1 16.8359 1.33579 16.5002 1.75 16.5002H2V9.95741C1.65296 10.0805 1.25946 9.93216 1.08474 9.59617C0.893644 9.22867 1.03664 8.77584 1.40414 8.58474L2 8.27489V5.75015C2 5.33594 2.33579 5.00015 2.75 5.00015C3.16421 5.00015 3.5 5.33594 3.5 5.75015V7.49489L13.9041 2.08474C14.2716 1.89364 14.7245 2.03664 14.9156 2.40414Z\" fill=\"#0F172A\"/>\n<path d=\"M15.8615 8.56938C16.0854 8.4334 16.3642 8.42419 16.5967 8.54508L18.596 9.58475C18.9635 9.77584 19.1065 10.2287 18.9154 10.5962C18.7407 10.9321 18.3473 11.0805 18.0003 10.9575V16.5002H18.25C18.6642 16.5002 19 16.8359 19 17.2502C19 17.6644 18.6642 18.0002 18.25 18.0002H16.25C16.0511 18.0002 15.8603 17.9211 15.7196 17.7805C15.579 17.6398 15.5 17.449 15.5 17.2501L15.5006 9.21043C15.5007 8.94839 15.6375 8.70536 15.8615 8.56938Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/home.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.29292 2.29289C9.68345 1.90237 10.3166 1.90237 10.7071 2.29289L17.7071 9.29289C17.9931 9.57889 18.0787 10.009 17.9239 10.3827C17.7691 10.7564 17.4045 11 17 11H16V17C16 17.5523 15.5523 18 15 18H13C12.4477 18 12 17.5523 12 17V14C12 13.4477 11.5523 13 11 13H9.00003C8.44774 13 8.00003 13.4477 8.00003 14V17C8.00003 17.5523 7.55231 18 7.00003 18H5.00003C4.44774 18 4.00003 17.5523 4.00003 17V11H3.00003C2.59557 11 2.23093 10.7564 2.07615 10.3827C1.92137 10.009 2.00692 9.57889 2.29292 9.29289L9.29292 2.29289Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.29292 2.29289C9.68345 1.90237 10.3166 1.90237 10.7071 2.29289L17.7071 9.29289C17.9931 9.57889 18.0787 10.009 17.9239 10.3827C17.7691 10.7564 17.4045 11 17 11H16V17C16 17.5523 15.5523 18 15 18H13C12.4477 18 12 17.5523 12 17V14C12 13.4477 11.5523 13 11 13H9.00003C8.44774 13 8.00003 13.4477 8.00003 14V17C8.00003 17.5523 7.55231 18 7.00003 18H5.00003C4.44774 18 4.00003 17.5523 4.00003 17V11H3.00003C2.59557 11 2.23093 10.7564 2.07615 10.3827C1.92137 10.009 2.00692 9.57889 2.29292 9.29289L9.29292 2.29289Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/identification.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 6C1 4.34315 2.34315 3 4 3H16C17.6569 3 19 4.34315 19 6V14C19 15.6569 17.6569 17 16 17H4C2.34315 17 1 15.6569 1 14V6ZM5 7.5C5 6.39543 5.89543 5.5 7 5.5C8.10457 5.5 9 6.39543 9 7.5C9 8.60457 8.10457 9.5 7 9.5C5.89543 9.5 5 8.60457 5 7.5ZM6.99987 10.5C5.36027 10.5 3.95272 11.4864 3.3351 12.895C3.25293 13.0824 3.2509 13.2952 3.32946 13.4842C3.40802 13.6731 3.56036 13.8217 3.75117 13.8956C4.75988 14.2862 5.85579 14.5 6.99987 14.5C8.14395 14.5 9.23987 14.2862 10.2486 13.8956C10.4394 13.8217 10.5917 13.6731 10.6703 13.4842C10.7488 13.2952 10.7468 13.0824 10.6647 12.895C10.047 11.4864 8.63947 10.5 6.99987 10.5ZM12 6.75C12 6.33579 12.3358 6 12.75 6H15.25C15.6642 6 16 6.33579 16 6.75C16 7.16421 15.6642 7.5 15.25 7.5H12.75C12.3358 7.5 12 7.16421 12 6.75ZM12 13.25C12 12.8358 12.3358 12.5 12.75 12.5H15.25C15.6642 12.5 16 12.8358 16 13.25C16 13.6642 15.6642 14 15.25 14H12.75C12.3358 14 12 13.6642 12 13.25ZM12.75 9.25C12.3358 9.25 12 9.58579 12 10C12 10.4142 12.3358 10.75 12.75 10.75L15.25 10.75C15.6642 10.75 16 10.4142 16 10C16 9.58579 15.6642 9.25 15.25 9.25L12.75 9.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 6C1 4.34315 2.34315 3 4 3H16C17.6569 3 19 4.34315 19 6V14C19 15.6569 17.6569 17 16 17H4C2.34315 17 1 15.6569 1 14V6ZM5 7.5C5 6.39543 5.89543 5.5 7 5.5C8.10457 5.5 9 6.39543 9 7.5C9 8.60457 8.10457 9.5 7 9.5C5.89543 9.5 5 8.60457 5 7.5ZM6.99987 10.5C5.36027 10.5 3.95272 11.4864 3.3351 12.895C3.25293 13.0824 3.2509 13.2952 3.32946 13.4842C3.40802 13.6731 3.56036 13.8217 3.75117 13.8956C4.75988 14.2862 5.85579 14.5 6.99987 14.5C8.14395 14.5 9.23987 14.2862 10.2486 13.8956C10.4394 13.8217 10.5917 13.6731 10.6703 13.4842C10.7488 13.2952 10.7468 13.0824 10.6647 12.895C10.047 11.4864 8.63947 10.5 6.99987 10.5ZM12 6.75C12 6.33579 12.3358 6 12.75 6H15.25C15.6642 6 16 6.33579 16 6.75C16 7.16421 15.6642 7.5 15.25 7.5H12.75C12.3358 7.5 12 7.16421 12 6.75ZM12 13.25C12 12.8358 12.3358 12.5 12.75 12.5H15.25C15.6642 12.5 16 12.8358 16 13.25C16 13.6642 15.6642 14 15.25 14H12.75C12.3358 14 12 13.6642 12 13.25ZM12.75 9.25C12.3358 9.25 12 9.58579 12 10C12 10.4142 12.3358 10.75 12.75 10.75L15.25 10.75C15.6642 10.75 16 10.4142 16 10C16 9.58579 15.6642 9.25 15.25 9.25L12.75 9.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/inbox-arrow-down.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 2C10.4142 2 10.75 2.33579 10.75 2.75V8.3401L12.7004 6.23966C12.9823 5.93613 13.4568 5.91855 13.7603 6.20041C14.0639 6.48226 14.0814 6.95681 13.7996 7.26034L10.5496 10.7603C10.4077 10.9132 10.2086 11 10 11C9.79145 11 9.59231 10.9132 9.45041 10.7603L6.20041 7.26034C5.91855 6.95681 5.93613 6.48226 6.23966 6.20041C6.54319 5.91855 7.01774 5.93613 7.29959 6.23966L9.25 8.3401V2.75C9.25 2.33579 9.58579 2 10 2Z" fill="#0F172A"/>
    <path d="M5.27298 4.5C4.71065 4.5 4.21753 4.8755 4.06799 5.41759L2.54501 10.9384C2.53938 10.9588 2.53427 10.9794 2.52969 11H6C6.37877 11 6.72504 11.214 6.89443 11.5528L7.34164 12.4472C7.51103 12.786 7.8573 13 8.23607 13H11.674C12.0269 13 12.3537 12.814 12.5339 12.5105L13.1401 11.4895C13.3203 11.186 13.6471 11 14 11H17.4703C17.4657 10.9794 17.4606 10.9588 17.455 10.9384L15.932 5.41759C15.7825 4.8755 15.2894 4.5 14.727 4.5H13.75C13.3358 4.5 13 4.16421 13 3.75C13 3.33579 13.3358 3 13.75 3H14.727C15.9642 3 17.049 3.8261 17.378 5.0187L18.901 10.5395C18.9667 10.7777 19 11.0237 19 11.2708V15C19 16.1046 18.1046 17 17 17H3C1.89543 17 1 16.1046 1 15V11.2708C1 11.0237 1.03331 10.7777 1.09902 10.5395L2.622 5.0187C2.95099 3.82611 4.03584 3 5.27298 3H6.25C6.66421 3 7 3.33579 7 3.75C7 4.16421 6.66421 4.5 6.25 4.5H5.27298Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10 2C10.4142 2 10.75 2.33579 10.75 2.75V8.3401L12.7004 6.23966C12.9823 5.93613 13.4568 5.91855 13.7603 6.20041C14.0639 6.48226 14.0814 6.95681 13.7996 7.26034L10.5496 10.7603C10.4077 10.9132 10.2086 11 10 11C9.79145 11 9.59231 10.9132 9.45041 10.7603L6.20041 7.26034C5.91855 6.95681 5.93613 6.48226 6.23966 6.20041C6.54319 5.91855 7.01774 5.93613 7.29959 6.23966L9.25 8.3401V2.75C9.25 2.33579 9.58579 2 10 2Z\" fill=\"#0F172A\"/>\n<path d=\"M5.27298 4.5C4.71065 4.5 4.21753 4.8755 4.06799 5.41759L2.54501 10.9384C2.53938 10.9588 2.53427 10.9794 2.52969 11H6C6.37877 11 6.72504 11.214 6.89443 11.5528L7.34164 12.4472C7.51103 12.786 7.8573 13 8.23607 13H11.674C12.0269 13 12.3537 12.814 12.5339 12.5105L13.1401 11.4895C13.3203 11.186 13.6471 11 14 11H17.4703C17.4657 10.9794 17.4606 10.9588 17.455 10.9384L15.932 5.41759C15.7825 4.8755 15.2894 4.5 14.727 4.5H13.75C13.3358 4.5 13 4.16421 13 3.75C13 3.33579 13.3358 3 13.75 3H14.727C15.9642 3 17.049 3.8261 17.378 5.0187L18.901 10.5395C18.9667 10.7777 19 11.0237 19 11.2708V15C19 16.1046 18.1046 17 17 17H3C1.89543 17 1 16.1046 1 15V11.2708C1 11.0237 1.03331 10.7777 1.09902 10.5395L2.622 5.0187C2.95099 3.82611 4.03584 3 5.27298 3H6.25C6.66421 3 7 3.33579 7 3.75C7 4.16421 6.66421 4.5 6.25 4.5H5.27298Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/inbox-stack.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.04461 6.95375C1.08721 6.72011 1.16003 6.49228 1.26175 6.27613L2.53096 3.57906C2.98454 2.6152 3.95396 2 5.01921 2H14.9808C16.046 2 17.0155 2.6152 17.469 3.57906L18.7383 6.27613C18.84 6.49228 18.9128 6.72011 18.9554 6.95375C18.9844 7.04736 19 7.14686 19 7.25V8.75C19 10.2688 17.7688 11.5 16.25 11.5H3.75C2.23122 11.5 1 10.2688 1 8.75V7.25C1 7.14686 1.01562 7.04736 1.04461 6.95375ZM3.88819 4.21775C4.09436 3.77964 4.53501 3.5 5.01921 3.5H14.9808C15.465 3.5 15.9056 3.77964 16.1118 4.21775L17.0682 6.25H14C13.6471 6.25 13.3203 6.43601 13.1401 6.73946L12.5339 7.76054C12.3537 8.06399 12.0269 8.25 11.674 8.25H8.23607C7.8573 8.25 7.51103 8.036 7.34164 7.69721L6.89443 6.80279C6.72504 6.464 6.37877 6.25 6 6.25H2.93184L3.88819 4.21775Z" fill="#0F172A"/>
    <path d="M1 14C1 13.4477 1.44772 13 2 13H6C6.37877 13 6.72504 13.214 6.89443 13.5528L7.34164 14.4472C7.51103 14.786 7.8573 15 8.23607 15H11.674C12.0269 15 12.3537 14.814 12.5339 14.5105L13.1401 13.4895C13.3203 13.186 13.6471 13 14 13H18C18.5523 13 19 13.4477 19 14V16C19 17.1046 18.1046 18 17 18H3C1.89543 18 1 17.1046 1 16V14Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.04461 6.95375C1.08721 6.72011 1.16003 6.49228 1.26175 6.27613L2.53096 3.57906C2.98454 2.6152 3.95396 2 5.01921 2H14.9808C16.046 2 17.0155 2.6152 17.469 3.57906L18.7383 6.27613C18.84 6.49228 18.9128 6.72011 18.9554 6.95375C18.9844 7.04736 19 7.14686 19 7.25V8.75C19 10.2688 17.7688 11.5 16.25 11.5H3.75C2.23122 11.5 1 10.2688 1 8.75V7.25C1 7.14686 1.01562 7.04736 1.04461 6.95375ZM3.88819 4.21775C4.09436 3.77964 4.53501 3.5 5.01921 3.5H14.9808C15.465 3.5 15.9056 3.77964 16.1118 4.21775L17.0682 6.25H14C13.6471 6.25 13.3203 6.43601 13.1401 6.73946L12.5339 7.76054C12.3537 8.06399 12.0269 8.25 11.674 8.25H8.23607C7.8573 8.25 7.51103 8.036 7.34164 7.69721L6.89443 6.80279C6.72504 6.464 6.37877 6.25 6 6.25H2.93184L3.88819 4.21775Z\" fill=\"#0F172A\"/>\n<path d=\"M1 14C1 13.4477 1.44772 13 2 13H6C6.37877 13 6.72504 13.214 6.89443 13.5528L7.34164 14.4472C7.51103 14.786 7.8573 15 8.23607 15H11.674C12.0269 15 12.3537 14.814 12.5339 14.5105L13.1401 13.4895C13.3203 13.186 13.6471 13 14 13H18C18.5523 13 19 13.4477 19 14V16C19 17.1046 18.1046 18 17 18H3C1.89543 18 1 17.1046 1 16V14Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/inbox.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 11.2708C1 11.0237 1.03331 10.7777 1.09902 10.5395L2.622 5.0187C2.95099 3.82611 4.03584 3 5.27298 3H14.727C15.9642 3 17.049 3.8261 17.378 5.0187L18.901 10.5395C18.9667 10.7777 19 11.0237 19 11.2708V15C19 16.1046 18.1046 17 17 17H3C1.89543 17 1 16.1046 1 15V11.2708ZM4.06799 5.41759C4.21753 4.8755 4.71065 4.5 5.27298 4.5H14.727C15.2894 4.5 15.7825 4.8755 15.932 5.41759L17.455 10.9384C17.4606 10.9588 17.4657 10.9794 17.4703 11H14C13.6471 11 13.3203 11.186 13.1401 11.4895L12.5339 12.5105C12.3537 12.814 12.0269 13 11.674 13H8.23607C7.8573 13 7.51103 12.786 7.34164 12.4472L6.89443 11.5528C6.72504 11.214 6.37877 11 6 11H2.52969C2.53427 10.9794 2.53938 10.9588 2.54501 10.9384L4.06799 5.41759Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 11.2708C1 11.0237 1.03331 10.7777 1.09902 10.5395L2.622 5.0187C2.95099 3.82611 4.03584 3 5.27298 3H14.727C15.9642 3 17.049 3.8261 17.378 5.0187L18.901 10.5395C18.9667 10.7777 19 11.0237 19 11.2708V15C19 16.1046 18.1046 17 17 17H3C1.89543 17 1 16.1046 1 15V11.2708ZM4.06799 5.41759C4.21753 4.8755 4.71065 4.5 5.27298 4.5H14.727C15.2894 4.5 15.7825 4.8755 15.932 5.41759L17.455 10.9384C17.4606 10.9588 17.4657 10.9794 17.4703 11H14C13.6471 11 13.3203 11.186 13.1401 11.4895L12.5339 12.5105C12.3537 12.814 12.0269 13 11.674 13H8.23607C7.8573 13 7.51103 12.786 7.34164 12.4472L6.89443 11.5528C6.72504 11.214 6.37877 11 6 11H2.52969C2.53427 10.9794 2.53938 10.9588 2.54501 10.9384L4.06799 5.41759Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/information-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19 10.5C19 15.1944 15.1944 19 10.5 19C5.80558 19 2 15.1944 2 10.5C2 5.80558 5.80558 2 10.5 2C15.1944 2 19 5.80558 19 10.5ZM8.25 9.75C8.25 9.33579 8.58579 9 9 9H9.25338C10.3729 9 11.2046 10.0367 10.9617 11.1296L10.5026 13.1958C10.4679 13.3519 10.5867 13.5 10.7466 13.5H11C11.4142 13.5 11.75 13.8358 11.75 14.25C11.75 14.6642 11.4142 15 11 15H10.7466C9.62706 15 8.79542 13.9633 9.03829 12.8704L9.49743 10.8042C9.53213 10.6481 9.41332 10.5 9.25338 10.5H9C8.58579 10.5 8.25 10.1642 8.25 9.75ZM10 7C10.5523 7 11 6.55228 11 6C11 5.44772 10.5523 5 10 5C9.44771 5 9 5.44772 9 6C9 6.55228 9.44771 7 10 7Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19 10.5C19 15.1944 15.1944 19 10.5 19C5.80558 19 2 15.1944 2 10.5C2 5.80558 5.80558 2 10.5 2C15.1944 2 19 5.80558 19 10.5ZM8.25 9.75C8.25 9.33579 8.58579 9 9 9H9.25338C10.3729 9 11.2046 10.0367 10.9617 11.1296L10.5026 13.1958C10.4679 13.3519 10.5867 13.5 10.7466 13.5H11C11.4142 13.5 11.75 13.8358 11.75 14.25C11.75 14.6642 11.4142 15 11 15H10.7466C9.62706 15 8.79542 13.9633 9.03829 12.8704L9.49743 10.8042C9.53213 10.6481 9.41332 10.5 9.25338 10.5H9C8.58579 10.5 8.25 10.1642 8.25 9.75ZM10 7C10.5523 7 11 6.55228 11 6C11 5.44772 10.5523 5 10 5C9.44771 5 9 5.44772 9 6C9 6.55228 9.44771 7 10 7Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/key.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8 7C8 4.23858 10.2386 2 13 2C15.7614 2 18 4.23858 18 7C18 9.76142 15.7614 12 13 12C12.5177 12 12.0513 11.9317 11.61 11.8042L9.70711 13.7071C9.51957 13.8946 9.26522 14 9 14H8V15C8 15.5523 7.55228 16 7 16H6V17C6 17.5523 5.55228 18 5 18H3C2.44772 18 2 17.5523 2 17V15C2 14.7348 2.10536 14.4804 2.29289 14.2929L8.19576 8.39003C8.0683 7.94874 8 7.48234 8 7ZM13 4C12.5858 4 12.25 4.33579 12.25 4.75C12.25 5.16421 12.5858 5.5 13 5.5C13.8284 5.5 14.5 6.17157 14.5 7C14.5 7.41421 14.8358 7.75 15.25 7.75C15.6642 7.75 16 7.41421 16 7C16 5.34315 14.6569 4 13 4Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8 7C8 4.23858 10.2386 2 13 2C15.7614 2 18 4.23858 18 7C18 9.76142 15.7614 12 13 12C12.5177 12 12.0513 11.9317 11.61 11.8042L9.70711 13.7071C9.51957 13.8946 9.26522 14 9 14H8V15C8 15.5523 7.55228 16 7 16H6V17C6 17.5523 5.55228 18 5 18H3C2.44772 18 2 17.5523 2 17V15C2 14.7348 2.10536 14.4804 2.29289 14.2929L8.19576 8.39003C8.0683 7.94874 8 7.48234 8 7ZM13 4C12.5858 4 12.25 4.33579 12.25 4.75C12.25 5.16421 12.5858 5.5 13 5.5C13.8284 5.5 14.5 6.17157 14.5 7C14.5 7.41421 14.8358 7.75 15.25 7.75C15.6642 7.75 16 7.41421 16 7C16 5.34315 14.6569 4 13 4Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/language.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M7.75009 2.75C7.75009 2.33579 7.4143 2 7.00009 2C6.58587 2 6.25009 2.33579 6.25009 2.75V4.00842C5.03323 4.03578 3.8325 4.12954 2.65142 4.28627C2.24081 4.34076 1.95211 4.7178 2.0066 5.12841C2.06109 5.53902 2.43813 5.82772 2.84875 5.77323C4.20658 5.59304 5.59228 5.5 7.00009 5.5C7.57065 5.5 8.13758 5.51528 8.70048 5.54546C8.2826 6.95686 7.70916 8.30168 6.99996 9.56001C6.62755 8.89925 6.29259 8.21466 5.99793 7.50912C5.8383 7.1269 5.39905 6.94646 5.01683 7.10608C4.63461 7.26571 4.45416 7.70497 4.61379 8.08718C5.03667 9.09975 5.5365 10.072 6.10593 10.9967C5.03656 12.5598 3.74539 13.9596 2.27753 15.1506C1.95588 15.4116 1.9067 15.8839 2.16769 16.2055C2.42867 16.5272 2.90099 16.5764 3.22264 16.3154C4.64811 15.1588 5.91919 13.8189 6.99996 12.3314C7.0954 12.4628 7.19233 12.593 7.29071 12.722C7.54187 13.0514 8.01249 13.1148 8.34187 12.8637C8.67125 12.6125 8.73467 12.1419 8.48351 11.8125C8.2802 11.5459 8.08361 11.2739 7.894 10.9967C8.90466 9.35554 9.69602 7.56455 10.227 5.66453C10.5365 5.69627 10.8447 5.73253 11.1514 5.77323C11.562 5.82772 11.9391 5.53902 11.9936 5.12841C12.0481 4.7178 11.7594 4.34076 11.3487 4.28627C10.8114 4.21496 10.27 4.15669 9.72489 4.11178C9.07179 4.05797 8.41333 4.02333 7.75009 4.00842V2.75Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.0002 8C13.2842 8 13.5439 8.1605 13.671 8.41459L17.921 16.9146C18.1062 17.2851 17.9561 17.7356 17.5856 17.9208C17.2151 18.1061 16.7646 17.9559 16.5793 17.5854L15.7866 16H10.2137L9.42098 17.5854C9.23574 17.9559 8.78524 18.1061 8.41475 17.9208C8.04427 17.7356 7.8941 17.2851 8.07934 16.9146L12.3293 8.41459C12.4564 8.1605 12.7161 8 13.0002 8ZM15.0366 14.5L13.0002 10.4271L10.9637 14.5H15.0366Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M7.75009 2.75C7.75009 2.33579 7.4143 2 7.00009 2C6.58587 2 6.25009 2.33579 6.25009 2.75V4.00842C5.03323 4.03578 3.8325 4.12954 2.65142 4.28627C2.24081 4.34076 1.95211 4.7178 2.0066 5.12841C2.06109 5.53902 2.43813 5.82772 2.84875 5.77323C4.20658 5.59304 5.59228 5.5 7.00009 5.5C7.57065 5.5 8.13758 5.51528 8.70048 5.54546C8.2826 6.95686 7.70916 8.30168 6.99996 9.56001C6.62755 8.89925 6.29259 8.21466 5.99793 7.50912C5.8383 7.1269 5.39905 6.94646 5.01683 7.10608C4.63461 7.26571 4.45416 7.70497 4.61379 8.08718C5.03667 9.09975 5.5365 10.072 6.10593 10.9967C5.03656 12.5598 3.74539 13.9596 2.27753 15.1506C1.95588 15.4116 1.9067 15.8839 2.16769 16.2055C2.42867 16.5272 2.90099 16.5764 3.22264 16.3154C4.64811 15.1588 5.91919 13.8189 6.99996 12.3314C7.0954 12.4628 7.19233 12.593 7.29071 12.722C7.54187 13.0514 8.01249 13.1148 8.34187 12.8637C8.67125 12.6125 8.73467 12.1419 8.48351 11.8125C8.2802 11.5459 8.08361 11.2739 7.894 10.9967C8.90466 9.35554 9.69602 7.56455 10.227 5.66453C10.5365 5.69627 10.8447 5.73253 11.1514 5.77323C11.562 5.82772 11.9391 5.53902 11.9936 5.12841C12.0481 4.7178 11.7594 4.34076 11.3487 4.28627C10.8114 4.21496 10.27 4.15669 9.72489 4.11178C9.07179 4.05797 8.41333 4.02333 7.75009 4.00842V2.75Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M13.0002 8C13.2842 8 13.5439 8.1605 13.671 8.41459L17.921 16.9146C18.1062 17.2851 17.9561 17.7356 17.5856 17.9208C17.2151 18.1061 16.7646 17.9559 16.5793 17.5854L15.7866 16H10.2137L9.42098 17.5854C9.23574 17.9559 8.78524 18.1061 8.41475 17.9208C8.04427 17.7356 7.8941 17.2851 8.07934 16.9146L12.3293 8.41459C12.4564 8.1605 12.7161 8 13.0002 8ZM15.0366 14.5L13.0002 10.4271L10.9637 14.5H15.0366Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/lifebuoy.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.17111 4.1457L9.11848 6.61237C9.69601 6.46254 10.304 6.46254 10.8815 6.61237L12.8289 4.1457C11.0472 3.28477 8.95276 3.28477 7.17111 4.1457ZM15.8543 7.17111L13.3876 9.11848C13.5375 9.69601 13.5375 10.304 13.3876 10.8815L15.8543 12.8289C16.7152 11.0472 16.7152 8.95276 15.8543 7.17111ZM12.8289 15.8543L10.8815 13.3876C10.304 13.5375 9.69601 13.5375 9.11848 13.3876L7.17111 15.8543C8.95276 16.7152 11.0472 16.7152 12.8289 15.8543ZM4.1457 12.8289L6.61237 10.8815C6.46254 10.304 6.46254 9.69601 6.61237 9.11848L4.1457 7.17111C3.28477 8.95276 3.28477 11.0472 4.1457 12.8289ZM5.63091 3.29667C8.27818 1.56778 11.7218 1.56778 14.3691 3.29667C14.8253 3.59461 15.2573 3.94356 15.6569 4.34315C16.0564 4.74273 16.4054 5.17471 16.7033 5.63091C18.4322 8.27817 18.4322 11.7218 16.7033 14.3691C16.4054 14.8253 16.0564 15.2573 15.6569 15.6569C15.2573 16.0564 14.8253 16.4054 14.3691 16.7033C11.7218 18.4322 8.27818 18.4322 5.63091 16.7033C5.1747 16.4054 4.74273 16.0564 4.34315 15.6569C3.94356 15.2573 3.59461 14.8253 3.29667 14.3691C1.56778 11.7218 1.56778 8.27818 3.29667 5.63091C3.59461 5.17471 3.94356 4.74273 4.34315 4.34315C4.74273 3.94356 5.17471 3.59461 5.63091 3.29667ZM10.8287 8.17897C10.3041 7.94035 9.69587 7.94035 9.17126 8.17897C8.95999 8.27506 8.76133 8.41024 8.58579 8.58579C8.41024 8.76133 8.27506 8.95999 8.17897 9.17126C7.94035 9.69587 7.94035 10.3041 8.17897 10.8287C8.27506 11.04 8.41024 11.2387 8.58579 11.4142C8.76133 11.5898 8.95999 11.7249 9.17126 11.821C9.69587 12.0597 10.3041 12.0597 10.8287 11.821C11.04 11.7249 11.2387 11.5898 11.4142 11.4142C11.5898 11.2387 11.7249 11.04 11.821 10.8287C12.0597 10.3041 12.0597 9.69587 11.821 9.17126C11.7249 8.95999 11.5898 8.76133 11.4142 8.58579C11.2387 8.41024 11.04 8.27506 10.8287 8.17897Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.17111 4.1457L9.11848 6.61237C9.69601 6.46254 10.304 6.46254 10.8815 6.61237L12.8289 4.1457C11.0472 3.28477 8.95276 3.28477 7.17111 4.1457ZM15.8543 7.17111L13.3876 9.11848C13.5375 9.69601 13.5375 10.304 13.3876 10.8815L15.8543 12.8289C16.7152 11.0472 16.7152 8.95276 15.8543 7.17111ZM12.8289 15.8543L10.8815 13.3876C10.304 13.5375 9.69601 13.5375 9.11848 13.3876L7.17111 15.8543C8.95276 16.7152 11.0472 16.7152 12.8289 15.8543ZM4.1457 12.8289L6.61237 10.8815C6.46254 10.304 6.46254 9.69601 6.61237 9.11848L4.1457 7.17111C3.28477 8.95276 3.28477 11.0472 4.1457 12.8289ZM5.63091 3.29667C8.27818 1.56778 11.7218 1.56778 14.3691 3.29667C14.8253 3.59461 15.2573 3.94356 15.6569 4.34315C16.0564 4.74273 16.4054 5.17471 16.7033 5.63091C18.4322 8.27817 18.4322 11.7218 16.7033 14.3691C16.4054 14.8253 16.0564 15.2573 15.6569 15.6569C15.2573 16.0564 14.8253 16.4054 14.3691 16.7033C11.7218 18.4322 8.27818 18.4322 5.63091 16.7033C5.1747 16.4054 4.74273 16.0564 4.34315 15.6569C3.94356 15.2573 3.59461 14.8253 3.29667 14.3691C1.56778 11.7218 1.56778 8.27818 3.29667 5.63091C3.59461 5.17471 3.94356 4.74273 4.34315 4.34315C4.74273 3.94356 5.17471 3.59461 5.63091 3.29667ZM10.8287 8.17897C10.3041 7.94035 9.69587 7.94035 9.17126 8.17897C8.95999 8.27506 8.76133 8.41024 8.58579 8.58579C8.41024 8.76133 8.27506 8.95999 8.17897 9.17126C7.94035 9.69587 7.94035 10.3041 8.17897 10.8287C8.27506 11.04 8.41024 11.2387 8.58579 11.4142C8.76133 11.5898 8.95999 11.7249 9.17126 11.821C9.69587 12.0597 10.3041 12.0597 10.8287 11.821C11.04 11.7249 11.2387 11.5898 11.4142 11.4142C11.5898 11.2387 11.7249 11.04 11.821 10.8287C12.0597 10.3041 12.0597 9.69587 11.821 9.17126C11.7249 8.95999 11.5898 8.76133 11.4142 8.58579C11.2387 8.41024 11.04 8.27506 10.8287 8.17897Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/light-bulb.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 1C6.68629 1 4 3.68629 4 7C4 8.86519 4.85197 10.532 6.18519 11.6313C7.23747 12.4989 8 13.4427 8 14.4557V15.1003C8 15.4459 8.23625 15.7468 8.57205 15.8289C9.03046 15.9408 9.50883 16 10 16C10.4912 16 10.9695 15.9408 11.428 15.8289C11.7637 15.7468 12 15.4459 12 15.1003V14.4557C12 13.4427 12.7625 12.4989 13.8148 11.6313C15.148 10.532 16 8.86519 16 7C16 3.68629 13.3137 1 10 1Z" fill="#0F172A"/>
    <path d="M8.8628 17.4144C8.45329 17.3522 8.07086 17.6337 8.00862 18.0432C7.94638 18.4527 8.22789 18.8352 8.6374 18.8974C9.08221 18.965 9.53731 19 10.0001 19C10.4629 19 10.918 18.965 11.3628 18.8974C11.7723 18.8352 12.0538 18.4527 11.9916 18.0432C11.9293 17.6337 11.5469 17.3522 11.1374 17.4144C10.7669 17.4708 10.3872 17.5 10.0001 17.5C9.61302 17.5 9.23326 17.4708 8.8628 17.4144Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10 1C6.68629 1 4 3.68629 4 7C4 8.86519 4.85197 10.532 6.18519 11.6313C7.23747 12.4989 8 13.4427 8 14.4557V15.1003C8 15.4459 8.23625 15.7468 8.57205 15.8289C9.03046 15.9408 9.50883 16 10 16C10.4912 16 10.9695 15.9408 11.428 15.8289C11.7637 15.7468 12 15.4459 12 15.1003V14.4557C12 13.4427 12.7625 12.4989 13.8148 11.6313C15.148 10.532 16 8.86519 16 7C16 3.68629 13.3137 1 10 1Z\" fill=\"#0F172A\"/>\n<path d=\"M8.8628 17.4144C8.45329 17.3522 8.07086 17.6337 8.00862 18.0432C7.94638 18.4527 8.22789 18.8352 8.6374 18.8974C9.08221 18.965 9.53731 19 10.0001 19C10.4629 19 10.918 18.965 11.3628 18.8974C11.7723 18.8352 12.0538 18.4527 11.9916 18.0432C11.9293 17.6337 11.5469 17.3522 11.1374 17.4144C10.7669 17.4708 10.3872 17.5 10.0001 17.5C9.61302 17.5 9.23326 17.4708 8.8628 17.4144Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/link.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M12.2322 4.23223C13.2085 3.25592 14.7915 3.25592 15.7678 4.23223C16.7441 5.20854 16.7441 6.79146 15.7678 7.76777L14.5434 8.9921C14.2505 9.28499 14.2505 9.75987 14.5434 10.0528C14.8363 10.3457 15.3112 10.3457 15.6041 10.0528L16.8284 8.82843C18.3905 7.26633 18.3905 4.73367 16.8284 3.17157C15.2663 1.60948 12.7337 1.60948 11.1716 3.17157L8.17157 6.17157C6.60948 7.73367 6.60948 10.2663 8.17157 11.8284C8.24449 11.9013 8.31963 11.9709 8.3968 12.0372C8.71107 12.307 9.18457 12.271 9.45441 11.9567C9.72424 11.6425 9.68822 11.169 9.37395 10.8991C9.32556 10.8576 9.27828 10.8138 9.23223 10.7678C8.25592 9.79145 8.25592 8.20854 9.23223 7.23223L12.2322 4.23223Z" fill="#0F172A"/>
    <path d="M11.6032 7.96278C11.2889 7.69295 10.8154 7.72897 10.5456 8.04324C10.2758 8.3575 10.3118 8.83101 10.626 9.10084C10.6744 9.14239 10.7217 9.18618 10.7678 9.23222C11.7441 10.2085 11.7441 11.7914 10.7678 12.7678L7.76777 15.7678C6.79146 16.7441 5.20854 16.7441 4.23223 15.7678C3.25592 14.7914 3.25592 13.2085 4.23223 12.2322L5.45657 11.0079C5.74946 10.715 5.74946 10.2401 5.45657 9.94723C5.16367 9.65433 4.6888 9.65433 4.39591 9.94723L3.17157 11.1716C1.60948 12.7337 1.60948 15.2663 3.17157 16.8284C4.73367 18.3905 7.26633 18.3905 8.82843 16.8284L11.8284 13.8284C13.3905 12.2663 13.3905 9.73366 11.8284 8.17156C11.7555 8.09864 11.6804 8.02904 11.6032 7.96278Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12.2322 4.23223C13.2085 3.25592 14.7915 3.25592 15.7678 4.23223C16.7441 5.20854 16.7441 6.79146 15.7678 7.76777L14.5434 8.9921C14.2505 9.28499 14.2505 9.75987 14.5434 10.0528C14.8363 10.3457 15.3112 10.3457 15.6041 10.0528L16.8284 8.82843C18.3905 7.26633 18.3905 4.73367 16.8284 3.17157C15.2663 1.60948 12.7337 1.60948 11.1716 3.17157L8.17157 6.17157C6.60948 7.73367 6.60948 10.2663 8.17157 11.8284C8.24449 11.9013 8.31963 11.9709 8.3968 12.0372C8.71107 12.307 9.18457 12.271 9.45441 11.9567C9.72424 11.6425 9.68822 11.169 9.37395 10.8991C9.32556 10.8576 9.27828 10.8138 9.23223 10.7678C8.25592 9.79145 8.25592 8.20854 9.23223 7.23223L12.2322 4.23223Z\" fill=\"#0F172A\"/>\n<path d=\"M11.6032 7.96278C11.2889 7.69295 10.8154 7.72897 10.5456 8.04324C10.2758 8.3575 10.3118 8.83101 10.626 9.10084C10.6744 9.14239 10.7217 9.18618 10.7678 9.23222C11.7441 10.2085 11.7441 11.7914 10.7678 12.7678L7.76777 15.7678C6.79146 16.7441 5.20854 16.7441 4.23223 15.7678C3.25592 14.7914 3.25592 13.2085 4.23223 12.2322L5.45657 11.0079C5.74946 10.715 5.74946 10.2401 5.45657 9.94723C5.16367 9.65433 4.6888 9.65433 4.39591 9.94723L3.17157 11.1716C1.60948 12.7337 1.60948 15.2663 3.17157 16.8284C4.73367 18.3905 7.26633 18.3905 8.82843 16.8284L11.8284 13.8284C13.3905 12.2663 13.3905 9.73366 11.8284 8.17156C11.7555 8.09864 11.6804 8.02904 11.6032 7.96278Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/list-bullet.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6 4.75C6 4.33579 6.33579 4 6.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H6.75C6.33579 5.5 6 5.16421 6 4.75ZM6 10C6 9.58579 6.33579 9.25 6.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10C18 10.4142 17.6642 10.75 17.25 10.75H6.75C6.33579 10.75 6 10.4142 6 10ZM6 15.25C6 14.8358 6.33579 14.5 6.75 14.5H17.25C17.6642 14.5 18 14.8358 18 15.25C18 15.6642 17.6642 16 17.25 16H6.75C6.33579 16 6 15.6642 6 15.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.98999 4.75C1.98999 4.19772 2.43771 3.75 2.98999 3.75H2.99999C3.55228 3.75 3.99999 4.19772 3.99999 4.75V4.76C3.99999 5.31229 3.55228 5.76 2.99999 5.76H2.98999C2.43771 5.76 1.98999 5.31229 1.98999 4.76V4.75Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.98999 15.25C1.98999 14.6977 2.43771 14.25 2.98999 14.25H2.99999C3.55228 14.25 3.99999 14.6977 3.99999 15.25V15.26C3.99999 15.8123 3.55228 16.26 2.99999 16.26H2.98999C2.43771 16.26 1.98999 15.8123 1.98999 15.26V15.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.98999 10C1.98999 9.44772 2.43771 9 2.98999 9H2.99999C3.55228 9 3.99999 9.44772 3.99999 10V10.01C3.99999 10.5623 3.55228 11.01 2.99999 11.01H2.98999C2.43771 11.01 1.98999 10.5623 1.98999 10.01V10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6 4.75C6 4.33579 6.33579 4 6.75 4H17.25C17.6642 4 18 4.33579 18 4.75C18 5.16421 17.6642 5.5 17.25 5.5H6.75C6.33579 5.5 6 5.16421 6 4.75ZM6 10C6 9.58579 6.33579 9.25 6.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10C18 10.4142 17.6642 10.75 17.25 10.75H6.75C6.33579 10.75 6 10.4142 6 10ZM6 15.25C6 14.8358 6.33579 14.5 6.75 14.5H17.25C17.6642 14.5 18 14.8358 18 15.25C18 15.6642 17.6642 16 17.25 16H6.75C6.33579 16 6 15.6642 6 15.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.98999 4.75C1.98999 4.19772 2.43771 3.75 2.98999 3.75H2.99999C3.55228 3.75 3.99999 4.19772 3.99999 4.75V4.76C3.99999 5.31229 3.55228 5.76 2.99999 5.76H2.98999C2.43771 5.76 1.98999 5.31229 1.98999 4.76V4.75Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.98999 15.25C1.98999 14.6977 2.43771 14.25 2.98999 14.25H2.99999C3.55228 14.25 3.99999 14.6977 3.99999 15.25V15.26C3.99999 15.8123 3.55228 16.26 2.99999 16.26H2.98999C2.43771 16.26 1.98999 15.8123 1.98999 15.26V15.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.98999 10C1.98999 9.44772 2.43771 9 2.98999 9H2.99999C3.55228 9 3.99999 9.44772 3.99999 10V10.01C3.99999 10.5623 3.55228 11.01 2.99999 11.01H2.98999C2.43771 11.01 1.98999 10.5623 1.98999 10.01V10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/lock-closed.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 1C7.51472 1 5.5 3.01472 5.5 5.5V9H5C3.89543 9 3 9.89543 3 11V17C3 18.1046 3.89543 19 5 19H15C16.1046 19 17 18.1046 17 17V11C17 9.89543 16.1046 9 15 9H14.5V5.5C14.5 3.01472 12.4853 1 10 1ZM13 9V5.5C13 3.84315 11.6569 2.5 10 2.5C8.34315 2.5 7 3.84315 7 5.5V9H13Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 1C7.51472 1 5.5 3.01472 5.5 5.5V9H5C3.89543 9 3 9.89543 3 11V17C3 18.1046 3.89543 19 5 19H15C16.1046 19 17 18.1046 17 17V11C17 9.89543 16.1046 9 15 9H14.5V5.5C14.5 3.01472 12.4853 1 10 1ZM13 9V5.5C13 3.84315 11.6569 2.5 10 2.5C8.34315 2.5 7 3.84315 7 5.5V9H13Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/lock-open.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.5 1C12.0147 1 10 3.01472 10 5.5V9H3C1.89543 9 1 9.89543 1 11V17C1 18.1046 1.89543 19 3 19H13C14.1046 19 15 18.1046 15 17V11C15 9.89543 14.1046 9 13 9H11.5V5.5C11.5 3.84315 12.8431 2.5 14.5 2.5C16.1569 2.5 17.5 3.84315 17.5 5.5V8.25C17.5 8.66421 17.8358 9 18.25 9C18.6642 9 19 8.66421 19 8.25V5.5C19 3.01472 16.9853 1 14.5 1Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.5 1C12.0147 1 10 3.01472 10 5.5V9H3C1.89543 9 1 9.89543 1 11V17C1 18.1046 1.89543 19 3 19H13C14.1046 19 15 18.1046 15 17V11C15 9.89543 14.1046 9 13 9H11.5V5.5C11.5 3.84315 12.8431 2.5 14.5 2.5C16.1569 2.5 17.5 3.84315 17.5 5.5V8.25C17.5 8.66421 17.8358 9 18.25 9C18.6642 9 19 8.66421 19 8.25V5.5C19 3.01472 16.9853 1 14.5 1Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/magnifying-glass-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.5 9C6.5 7.61929 7.61929 6.5 9 6.5C10.3807 6.5 11.5 7.61929 11.5 9C11.5 9.69056 11.221 10.3145 10.7678 10.7678C10.3145 11.221 9.69056 11.5 9 11.5C7.61929 11.5 6.5 10.3807 6.5 9Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM9 5C6.79086 5 5 6.79086 5 9C5 11.2091 6.79086 13 9 13C9.8332 13 10.6076 12.7447 11.2481 12.3088L12.7197 13.7803C13.0126 14.0732 13.4874 14.0732 13.7803 13.7803C14.0732 13.4874 14.0732 13.0126 13.7803 12.7197L12.3088 11.2481C12.7447 10.6076 13 9.8332 13 9C13 6.79086 11.2091 5 9 5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6.5 9C6.5 7.61929 7.61929 6.5 9 6.5C10.3807 6.5 11.5 7.61929 11.5 9C11.5 9.69056 11.221 10.3145 10.7678 10.7678C10.3145 11.221 9.69056 11.5 9 11.5C7.61929 11.5 6.5 10.3807 6.5 9Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM9 5C6.79086 5 5 6.79086 5 9C5 11.2091 6.79086 13 9 13C9.8332 13 10.6076 12.7447 11.2481 12.3088L12.7197 13.7803C13.0126 14.0732 13.4874 14.0732 13.7803 13.7803C14.0732 13.4874 14.0732 13.0126 13.7803 12.7197L12.3088 11.2481C12.7447 10.6076 13 9.8332 13 9C13 6.79086 11.2091 5 9 5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/magnifying-glass-minus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.75 8.25C6.33579 8.25 6 8.58579 6 9C6 9.41421 6.33579 9.75 6.75 9.75L11.25 9.75C11.6642 9.75 12 9.41421 12 9C12 8.58579 11.6642 8.25 11.25 8.25L6.75 8.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9 2C5.13401 2 2 5.13401 2 9C2 12.866 5.13401 16 9 16C10.6625 16 12.1906 15.4197 13.3911 14.4517L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L14.4517 13.3911C15.4197 12.1906 16 10.6625 16 9C16 5.13401 12.866 2 9 2ZM3.5 9C3.5 5.96243 5.96243 3.5 9 3.5C12.0376 3.5 14.5 5.96243 14.5 9C14.5 10.519 13.8852 11.893 12.8891 12.8891C11.893 13.8852 10.519 14.5 9 14.5C5.96243 14.5 3.5 12.0376 3.5 9Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6.75 8.25C6.33579 8.25 6 8.58579 6 9C6 9.41421 6.33579 9.75 6.75 9.75L11.25 9.75C11.6642 9.75 12 9.41421 12 9C12 8.58579 11.6642 8.25 11.25 8.25L6.75 8.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9 2C5.13401 2 2 5.13401 2 9C2 12.866 5.13401 16 9 16C10.6625 16 12.1906 15.4197 13.3911 14.4517L16.7197 17.7803C17.0126 18.0732 17.4874 18.0732 17.7803 17.7803C18.0732 17.4874 18.0732 17.0126 17.7803 16.7197L14.4517 13.3911C15.4197 12.1906 16 10.6625 16 9C16 5.13401 12.866 2 9 2ZM3.5 9C3.5 5.96243 5.96243 3.5 9 3.5C12.0376 3.5 14.5 5.96243 14.5 9C14.5 10.519 13.8852 11.893 12.8891 12.8891C11.893 13.8852 10.519 14.5 9 14.5C5.96243 14.5 3.5 12.0376 3.5 9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/magnifying-glass-plus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M9 6C9.41421 6 9.75 6.33579 9.75 6.75V8.25H11.25C11.6642 8.25 12 8.58579 12 9C12 9.41421 11.6642 9.75 11.25 9.75L9.75 9.75V11.25C9.75 11.6642 9.41421 12 9 12C8.58579 12 8.25 11.6642 8.25 11.25V9.75L6.75 9.75C6.33579 9.75 6 9.41421 6 9C6 8.58579 6.33579 8.25 6.75 8.25H8.25V6.75C8.25 6.33579 8.58579 6 9 6Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 9C2 5.13401 5.13401 2 9 2C12.866 2 16 5.13401 16 9C16 10.6625 15.4197 12.1906 14.4517 13.3911L17.7803 16.7197C18.0732 17.0126 18.0732 17.4874 17.7803 17.7803C17.4874 18.0732 17.0126 18.0732 16.7197 17.7803L13.3911 14.4517C12.1906 15.4197 10.6625 16 9 16C5.13401 16 2 12.866 2 9ZM9 3.5C5.96243 3.5 3.5 5.96243 3.5 9C3.5 12.0376 5.96243 14.5 9 14.5C10.519 14.5 11.893 13.8852 12.8891 12.8891C13.8852 11.893 14.5 10.519 14.5 9C14.5 5.96243 12.0376 3.5 9 3.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M9 6C9.41421 6 9.75 6.33579 9.75 6.75V8.25H11.25C11.6642 8.25 12 8.58579 12 9C12 9.41421 11.6642 9.75 11.25 9.75L9.75 9.75V11.25C9.75 11.6642 9.41421 12 9 12C8.58579 12 8.25 11.6642 8.25 11.25V9.75L6.75 9.75C6.33579 9.75 6 9.41421 6 9C6 8.58579 6.33579 8.25 6.75 8.25H8.25V6.75C8.25 6.33579 8.58579 6 9 6Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 9C2 5.13401 5.13401 2 9 2C12.866 2 16 5.13401 16 9C16 10.6625 15.4197 12.1906 14.4517 13.3911L17.7803 16.7197C18.0732 17.0126 18.0732 17.4874 17.7803 17.7803C17.4874 18.0732 17.0126 18.0732 16.7197 17.7803L13.3911 14.4517C12.1906 15.4197 10.6625 16 9 16C5.13401 16 2 12.866 2 9ZM9 3.5C5.96243 3.5 3.5 5.96243 3.5 9C3.5 12.0376 5.96243 14.5 9 14.5C10.519 14.5 11.893 13.8852 12.8891 12.8891C13.8852 11.893 14.5 10.519 14.5 9C14.5 5.96243 12.0376 3.5 9 3.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/magnifying-glass.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9 3.5C5.96243 3.5 3.5 5.96243 3.5 9C3.5 12.0376 5.96243 14.5 9 14.5C10.519 14.5 11.893 13.8852 12.8891 12.8891C13.8852 11.893 14.5 10.519 14.5 9C14.5 5.96243 12.0376 3.5 9 3.5ZM2 9C2 5.13401 5.13401 2 9 2C12.866 2 16 5.13401 16 9C16 10.6625 15.4197 12.1906 14.4517 13.3911L17.7803 16.7197C18.0732 17.0126 18.0732 17.4874 17.7803 17.7803C17.4874 18.0732 17.0126 18.0732 16.7197 17.7803L13.3911 14.4517C12.1906 15.4197 10.6625 16 9 16C5.13401 16 2 12.866 2 9Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9 3.5C5.96243 3.5 3.5 5.96243 3.5 9C3.5 12.0376 5.96243 14.5 9 14.5C10.519 14.5 11.893 13.8852 12.8891 12.8891C13.8852 11.893 14.5 10.519 14.5 9C14.5 5.96243 12.0376 3.5 9 3.5ZM2 9C2 5.13401 5.13401 2 9 2C12.866 2 16 5.13401 16 9C16 10.6625 15.4197 12.1906 14.4517 13.3911L17.7803 16.7197C18.0732 17.0126 18.0732 17.4874 17.7803 17.7803C17.4874 18.0732 17.0126 18.0732 16.7197 17.7803L13.3911 14.4517C12.1906 15.4197 10.6625 16 9 16C5.13401 16 2 12.866 2 9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/map-pin.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.69008 18.933L9.69288 18.9342C9.89 19.02 10 19 10 19C10 19 10.11 19.02 10.3079 18.9339L10.3099 18.933L10.3157 18.9304L10.3338 18.922C10.3488 18.915 10.3697 18.9052 10.3959 18.8926C10.4484 18.8673 10.5225 18.8306 10.6153 18.7822C10.8008 18.6855 11.0612 18.5419 11.3717 18.3495C11.9912 17.9655 12.8174 17.3826 13.6455 16.5844C15.3022 14.9876 17 12.4925 17 9C17 5.13401 13.866 2 10 2C6.13401 2 3 5.13401 3 9C3 12.4925 4.69783 14.9876 6.35452 16.5844C7.18264 17.3826 8.00877 17.9655 8.62834 18.3495C8.93879 18.5419 9.19922 18.6855 9.38467 18.7822C9.47745 18.8306 9.55163 18.8673 9.60409 18.8926C9.63033 18.9052 9.65116 18.915 9.66619 18.922L9.68435 18.9304L9.69008 18.933ZM10 11.25C11.2426 11.25 12.25 10.2426 12.25 9C12.25 7.75736 11.2426 6.75 10 6.75C8.75736 6.75 7.75 7.75736 7.75 9C7.75 10.2426 8.75736 11.25 10 11.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.69008 18.933L9.69288 18.9342C9.89 19.02 10 19 10 19C10 19 10.11 19.02 10.3079 18.9339L10.3099 18.933L10.3157 18.9304L10.3338 18.922C10.3488 18.915 10.3697 18.9052 10.3959 18.8926C10.4484 18.8673 10.5225 18.8306 10.6153 18.7822C10.8008 18.6855 11.0612 18.5419 11.3717 18.3495C11.9912 17.9655 12.8174 17.3826 13.6455 16.5844C15.3022 14.9876 17 12.4925 17 9C17 5.13401 13.866 2 10 2C6.13401 2 3 5.13401 3 9C3 12.4925 4.69783 14.9876 6.35452 16.5844C7.18264 17.3826 8.00877 17.9655 8.62834 18.3495C8.93879 18.5419 9.19922 18.6855 9.38467 18.7822C9.47745 18.8306 9.55163 18.8673 9.60409 18.8926C9.63033 18.9052 9.65116 18.915 9.66619 18.922L9.68435 18.9304L9.69008 18.933ZM10 11.25C11.2426 11.25 12.25 10.2426 12.25 9C12.25 7.75736 11.2426 6.75 10 6.75C8.75736 6.75 7.75 7.75736 7.75 9C7.75 10.2426 8.75736 11.25 10 11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/map.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.15686 2.1755C7.78961 2.02353 7.37706 2.02353 7.00981 2.1755L2.92647 3.86515C2.3657 4.0972 2 4.64429 2 5.25118V16.1278C2 17.1966 3.08594 17.9225 4.07353 17.5139L7.58333 16.0615L11.8431 17.8242C12.2104 17.9762 12.6229 17.9762 12.9902 17.8242L17.0735 16.1345C17.6343 15.9025 18 15.3554 18 14.7485V3.87187C18 2.80308 16.9141 2.07719 15.9265 2.48584L12.4167 3.93818L8.15686 2.1755ZM7.58008 4.99988C7.99429 4.99988 8.33008 5.33566 8.33008 5.74988V12.2499C8.33008 12.6641 7.99429 12.9999 7.58008 12.9999C7.16586 12.9999 6.83008 12.6641 6.83008 12.2499V5.74988C6.83008 5.33566 7.16586 4.99988 7.58008 4.99988ZM13.1699 7.74988C13.1699 7.33566 12.8341 6.99988 12.4199 6.99988C12.0057 6.99988 11.6699 7.33566 11.6699 7.74988V14.2499C11.6699 14.6641 12.0057 14.9999 12.4199 14.9999C12.8341 14.9999 13.1699 14.6641 13.1699 14.2499V7.74988Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.15686 2.1755C7.78961 2.02353 7.37706 2.02353 7.00981 2.1755L2.92647 3.86515C2.3657 4.0972 2 4.64429 2 5.25118V16.1278C2 17.1966 3.08594 17.9225 4.07353 17.5139L7.58333 16.0615L11.8431 17.8242C12.2104 17.9762 12.6229 17.9762 12.9902 17.8242L17.0735 16.1345C17.6343 15.9025 18 15.3554 18 14.7485V3.87187C18 2.80308 16.9141 2.07719 15.9265 2.48584L12.4167 3.93818L8.15686 2.1755ZM7.58008 4.99988C7.99429 4.99988 8.33008 5.33566 8.33008 5.74988V12.2499C8.33008 12.6641 7.99429 12.9999 7.58008 12.9999C7.16586 12.9999 6.83008 12.6641 6.83008 12.2499V5.74988C6.83008 5.33566 7.16586 4.99988 7.58008 4.99988ZM13.1699 7.74988C13.1699 7.33566 12.8341 6.99988 12.4199 6.99988C12.0057 6.99988 11.6699 7.33566 11.6699 7.74988V14.2499C11.6699 14.6641 12.0057 14.9999 12.4199 14.9999C12.8341 14.9999 13.1699 14.6641 13.1699 14.2499V7.74988Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/megaphone.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M13.9202 3.84536C11.9859 4.84219 9.86368 5.52477 7.62054 5.82595C6.76376 5.94099 5.88902 6.00044 5 6.00044C2.79086 6.00044 1 7.7913 1 10.0004C1 12.0389 2.52477 13.7211 4.49597 13.969C4.78782 15.1067 5.20979 16.2273 5.76704 17.3103C6.1636 18.0809 7.10902 18.3091 7.81763 17.9L8.68366 17.4C9.41014 16.9805 9.62418 16.0789 9.27228 15.3786C9.10619 15.0482 8.95684 14.7133 8.82394 14.3751C10.6243 14.733 12.3353 15.3388 13.9201 16.1555C14.6189 14.2352 15 12.1623 15 10.0004C15 7.83855 14.6189 5.76569 13.9202 3.84536Z" fill="#0F172A"/>
    <path d="M15.2428 3.09699C16.0553 5.24298 16.5 7.56977 16.5 10.0004C16.5 12.4311 16.0553 14.7579 15.2428 16.9039C15.2428 16.9039 15.2427 16.9038 15.2428 16.9039L15.2135 16.9811C15.0652 17.3679 15.2585 17.8016 15.6452 17.95C16.032 18.0983 16.4657 17.905 16.6141 17.5183C16.7002 17.2938 16.7825 17.0674 16.8611 16.8393C17.4152 15.2298 17.7791 13.532 17.9262 11.7733C18.5645 11.4393 19 10.7712 19 10.0004C19 9.22971 18.5645 8.56163 17.9262 8.22758C17.7791 6.46885 17.4152 4.77112 16.8611 3.16156C16.7825 2.93344 16.7002 2.7071 16.6141 2.48262C16.4657 2.09587 16.032 1.90259 15.6452 2.05091C15.2585 2.19924 15.0652 2.633 15.2135 3.01974L15.2428 3.09699C15.2427 3.09702 15.2428 3.09695 15.2428 3.09699Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M13.9202 3.84536C11.9859 4.84219 9.86368 5.52477 7.62054 5.82595C6.76376 5.94099 5.88902 6.00044 5 6.00044C2.79086 6.00044 1 7.7913 1 10.0004C1 12.0389 2.52477 13.7211 4.49597 13.969C4.78782 15.1067 5.20979 16.2273 5.76704 17.3103C6.1636 18.0809 7.10902 18.3091 7.81763 17.9L8.68366 17.4C9.41014 16.9805 9.62418 16.0789 9.27228 15.3786C9.10619 15.0482 8.95684 14.7133 8.82394 14.3751C10.6243 14.733 12.3353 15.3388 13.9201 16.1555C14.6189 14.2352 15 12.1623 15 10.0004C15 7.83855 14.6189 5.76569 13.9202 3.84536Z\" fill=\"#0F172A\"/>\n<path d=\"M15.2428 3.09699C16.0553 5.24298 16.5 7.56977 16.5 10.0004C16.5 12.4311 16.0553 14.7579 15.2428 16.9039C15.2428 16.9039 15.2427 16.9038 15.2428 16.9039L15.2135 16.9811C15.0652 17.3679 15.2585 17.8016 15.6452 17.95C16.032 18.0983 16.4657 17.905 16.6141 17.5183C16.7002 17.2938 16.7825 17.0674 16.8611 16.8393C17.4152 15.2298 17.7791 13.532 17.9262 11.7733C18.5645 11.4393 19 10.7712 19 10.0004C19 9.22971 18.5645 8.56163 17.9262 8.22758C17.7791 6.46885 17.4152 4.77112 16.8611 3.16156C16.7825 2.93344 16.7002 2.7071 16.6141 2.48262C16.4657 2.09587 16.032 1.90259 15.6452 2.05091C15.2585 2.19924 15.0652 2.633 15.2135 3.01974L15.2428 3.09699C15.2427 3.09702 15.2428 3.09695 15.2428 3.09699Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/microphone.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M7 4C7 2.34315 8.34315 1 10 1C11.6569 1 13 2.34315 13 4V10C13 11.6569 11.6569 13 10 13C8.34315 13 7 11.6569 7 10V4Z" fill="#0F172A"/>
    <path d="M5.5 9.64282C5.5 9.22861 5.16421 8.89282 4.75 8.89282C4.33579 8.89282 4 9.22861 4 9.64282V9.99997C4 13.0597 6.29027 15.5845 9.25 15.9535V17.5H7.75C7.33579 17.5 7 17.8358 7 18.25C7 18.6642 7.33579 19 7.75 19H12.25C12.6642 19 13 18.6642 13 18.25C13 17.8358 12.6642 17.5 12.25 17.5H10.75V15.9535C13.7097 15.5845 16 13.0597 16 9.99997V9.64282C16 9.22861 15.6642 8.89282 15.25 8.89282C14.8358 8.89282 14.5 9.22861 14.5 9.64282V9.99997C14.5 12.4852 12.4853 14.5 10 14.5C7.51472 14.5 5.5 12.4852 5.5 9.99997V9.64282Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M7 4C7 2.34315 8.34315 1 10 1C11.6569 1 13 2.34315 13 4V10C13 11.6569 11.6569 13 10 13C8.34315 13 7 11.6569 7 10V4Z\" fill=\"#0F172A\"/>\n<path d=\"M5.5 9.64282C5.5 9.22861 5.16421 8.89282 4.75 8.89282C4.33579 8.89282 4 9.22861 4 9.64282V9.99997C4 13.0597 6.29027 15.5845 9.25 15.9535V17.5H7.75C7.33579 17.5 7 17.8358 7 18.25C7 18.6642 7.33579 19 7.75 19H12.25C12.6642 19 13 18.6642 13 18.25C13 17.8358 12.6642 17.5 12.25 17.5H10.75V15.9535C13.7097 15.5845 16 13.0597 16 9.99997V9.64282C16 9.22861 15.6642 8.89282 15.25 8.89282C14.8358 8.89282 14.5 9.22861 14.5 9.64282V9.99997C14.5 12.4852 12.4853 14.5 10 14.5C7.51472 14.5 5.5 12.4852 5.5 9.99997V9.64282Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/minus-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM6.75 9.25C6.33579 9.25 6 9.58579 6 10C6 10.4142 6.33579 10.75 6.75 10.75H13.25C13.6642 10.75 14 10.4142 14 10C14 9.58579 13.6642 9.25 13.25 9.25H6.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM6.75 9.25C6.33579 9.25 6 9.58579 6 10C6 10.4142 6.33579 10.75 6.75 10.75H13.25C13.6642 10.75 14 10.4142 14 10C14 9.58579 13.6642 9.25 13.25 9.25H6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/minus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 10C3 9.58579 3.33579 9.25 3.75 9.25L14.25 9.25C14.6642 9.25 15 9.58579 15 10C15 10.4142 14.6642 10.75 14.25 10.75L3.75 10.75C3.33579 10.75 3 10.4142 3 10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 10C3 9.58579 3.33579 9.25 3.75 9.25L14.25 9.25C14.6642 9.25 15 9.58579 15 10C15 10.4142 14.6642 10.75 14.25 10.75L3.75 10.75C3.33579 10.75 3 10.4142 3 10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/moon.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.45519 2.00383C7.68518 2.18752 7.78646 2.48878 7.71414 2.77411C7.57443 3.32534 7.5 3.90336 7.5 4.49984C7.5 8.36583 10.634 11.4998 14.5 11.4998C15.6435 11.4998 16.721 11.2262 17.6724 10.7415C17.9347 10.6079 18.2509 10.6401 18.4809 10.8238C18.7109 11.0075 18.8122 11.3088 18.7399 11.5941C17.8069 15.2754 14.4725 17.9998 10.5 17.9998C5.80558 17.9998 2 14.1943 2 9.49984C2 6.19127 3.89048 3.32555 6.64671 1.92156C6.909 1.78795 7.22519 1.82013 7.45519 2.00383Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.45519 2.00383C7.68518 2.18752 7.78646 2.48878 7.71414 2.77411C7.57443 3.32534 7.5 3.90336 7.5 4.49984C7.5 8.36583 10.634 11.4998 14.5 11.4998C15.6435 11.4998 16.721 11.2262 17.6724 10.7415C17.9347 10.6079 18.2509 10.6401 18.4809 10.8238C18.7109 11.0075 18.8122 11.3088 18.7399 11.5941C17.8069 15.2754 14.4725 17.9998 10.5 17.9998C5.80558 17.9998 2 14.1943 2 9.49984C2 6.19127 3.89048 3.32555 6.64671 1.92156C6.909 1.78795 7.22519 1.82013 7.45519 2.00383Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/musical-note.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.721 1.59894C17.8974 1.74132 18 1.95589 18 2.18262V13.4723C18 14.5317 17.261 15.4476 16.2255 15.6715L14.1848 16.1127C12.804 16.4113 11.5 15.3591 11.5 13.9464C11.5 12.9032 12.2275 12.0012 13.247 11.7803L15.9088 11.2035C16.2538 11.1287 16.5 10.8235 16.5 10.4705V6.11212L8.5 7.84185V15.5263C8.5 16.5857 7.76097 17.5016 6.7255 17.7255L4.68397 18.1669C3.30357 18.4654 2 17.4136 2 16.0013C2 14.9574 2.72854 14.0552 3.74894 13.8353L6.408 13.2622C6.7534 13.1878 7 12.8824 7 12.5291V4.23668C7 3.88354 7.24634 3.57825 7.5915 3.50362L17.0915 1.44956C17.3131 1.40165 17.5445 1.45656 17.721 1.59894Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M17.721 1.59894C17.8974 1.74132 18 1.95589 18 2.18262V13.4723C18 14.5317 17.261 15.4476 16.2255 15.6715L14.1848 16.1127C12.804 16.4113 11.5 15.3591 11.5 13.9464C11.5 12.9032 12.2275 12.0012 13.247 11.7803L15.9088 11.2035C16.2538 11.1287 16.5 10.8235 16.5 10.4705V6.11212L8.5 7.84185V15.5263C8.5 16.5857 7.76097 17.5016 6.7255 17.7255L4.68397 18.1669C3.30357 18.4654 2 17.4136 2 16.0013C2 14.9574 2.72854 14.0552 3.74894 13.8353L6.408 13.2622C6.7534 13.1878 7 12.8824 7 12.5291V4.23668C7 3.88354 7.24634 3.57825 7.5915 3.50362L17.0915 1.44956C17.3131 1.40165 17.5445 1.45656 17.721 1.59894Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/newspaper.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 3.5C2 2.67157 2.67157 2 3.5 2H12.5C13.3284 2 14 2.67157 14 3.5V15.25C14 16.7688 15.2312 18 16.75 18H4.75C3.23122 18 2 16.7688 2 15.25V3.5ZM5.75 10.5C5.33579 10.5 5 10.8358 5 11.25C5 11.6642 5.33579 12 5.75 12H10.25C10.6642 12 11 11.6642 11 11.25C11 10.8358 10.6642 10.5 10.25 10.5H5.75ZM5.75 13.5C5.33579 13.5 5 13.8358 5 14.25C5 14.6642 5.33579 15 5.75 15H10.25C10.6642 15 11 14.6642 11 14.25C11 13.8358 10.6642 13.5 10.25 13.5H5.75ZM5 5.75C5 5.33579 5.33579 5 5.75 5H10.25C10.6642 5 11 5.33579 11 5.75V8.25C11 8.66421 10.6642 9 10.25 9H5.75C5.33579 9 5 8.66421 5 8.25V5.75Z" fill="#0F172A"/>
    <path d="M16.5 6.5H15.5V15.25C15.5 15.9404 16.0596 16.5 16.75 16.5C17.4404 16.5 18 15.9404 18 15.25V8C18 7.17157 17.3284 6.5 16.5 6.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 3.5C2 2.67157 2.67157 2 3.5 2H12.5C13.3284 2 14 2.67157 14 3.5V15.25C14 16.7688 15.2312 18 16.75 18H4.75C3.23122 18 2 16.7688 2 15.25V3.5ZM5.75 10.5C5.33579 10.5 5 10.8358 5 11.25C5 11.6642 5.33579 12 5.75 12H10.25C10.6642 12 11 11.6642 11 11.25C11 10.8358 10.6642 10.5 10.25 10.5H5.75ZM5.75 13.5C5.33579 13.5 5 13.8358 5 14.25C5 14.6642 5.33579 15 5.75 15H10.25C10.6642 15 11 14.6642 11 14.25C11 13.8358 10.6642 13.5 10.25 13.5H5.75ZM5 5.75C5 5.33579 5.33579 5 5.75 5H10.25C10.6642 5 11 5.33579 11 5.75V8.25C11 8.66421 10.6642 9 10.25 9H5.75C5.33579 9 5 8.66421 5 8.25V5.75Z\" fill=\"#0F172A\"/>\n<path d=\"M16.5 6.5H15.5V15.25C15.5 15.9404 16.0596 16.5 16.75 16.5C17.4404 16.5 18 15.9404 18 15.25V8C18 7.17157 17.3284 6.5 16.5 6.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/no-symbol.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.96461 4.90395L15.096 14.0354C15.9755 12.9265 16.5 11.525 16.5 10C16.5 6.41015 13.5899 3.5 10 3.5C8.475 3.5 7.07353 4.02446 5.96461 4.90395ZM14.0354 15.096L4.90395 5.96461C4.02446 7.07353 3.5 8.475 3.5 10C3.5 13.5899 6.41015 16.5 10 16.5C11.525 16.5 12.9265 15.9755 14.0354 15.096ZM4.34315 4.34315C5.79004 2.89625 7.79107 2 10 2C14.4183 2 18 5.58172 18 10C18 12.2089 17.1037 14.21 15.6569 15.6569C14.21 17.1037 12.2089 18 10 18C5.58172 18 2 14.4183 2 10C2 7.79107 2.89625 5.79004 4.34315 4.34315Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.96461 4.90395L15.096 14.0354C15.9755 12.9265 16.5 11.525 16.5 10C16.5 6.41015 13.5899 3.5 10 3.5C8.475 3.5 7.07353 4.02446 5.96461 4.90395ZM14.0354 15.096L4.90395 5.96461C4.02446 7.07353 3.5 8.475 3.5 10C3.5 13.5899 6.41015 16.5 10 16.5C11.525 16.5 12.9265 15.9755 14.0354 15.096ZM4.34315 4.34315C5.79004 2.89625 7.79107 2 10 2C14.4183 2 18 5.58172 18 10C18 12.2089 17.1037 14.21 15.6569 15.6569C14.21 17.1037 12.2089 18 10 18C5.58172 18 2 14.4183 2 10C2 7.79107 2.89625 5.79004 4.34315 4.34315Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/paper-airplane.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.10526 2.28868C2.85362 2.25302 2.60104 2.34722 2.43421 2.53895C2.26738 2.73068 2.209 2.99386 2.27911 3.23815L3.69276 8.16402C3.87733 8.80713 4.4655 9.25024 5.13456 9.25024H11.25C11.6642 9.25024 12 9.58603 12 10.0002C12 10.4145 11.6642 10.7502 11.25 10.7502H5.13457C4.4655 10.7502 3.87733 11.1934 3.69277 11.8365L2.27911 16.7624C2.209 17.0067 2.26738 17.2698 2.43421 17.4616C2.60104 17.6533 2.85362 17.7475 3.10526 17.7118C8.94303 16.8844 14.221 14.319 18.3983 10.5576C18.5563 10.4154 18.6465 10.2128 18.6465 10.0003C18.6465 9.7877 18.5563 9.58513 18.3983 9.4429C14.221 5.68154 8.94303 3.1161 3.10526 2.28868Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.10526 2.28868C2.85362 2.25302 2.60104 2.34722 2.43421 2.53895C2.26738 2.73068 2.209 2.99386 2.27911 3.23815L3.69276 8.16402C3.87733 8.80713 4.4655 9.25024 5.13456 9.25024H11.25C11.6642 9.25024 12 9.58603 12 10.0002C12 10.4145 11.6642 10.7502 11.25 10.7502H5.13457C4.4655 10.7502 3.87733 11.1934 3.69277 11.8365L2.27911 16.7624C2.209 17.0067 2.26738 17.2698 2.43421 17.4616C2.60104 17.6533 2.85362 17.7475 3.10526 17.7118C8.94303 16.8844 14.221 14.319 18.3983 10.5576C18.5563 10.4154 18.6465 10.2128 18.6465 10.0003C18.6465 9.7877 18.5563 9.58513 18.3983 9.4429C14.221 5.68154 8.94303 3.1161 3.10526 2.28868Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/paper-clip.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.6213 4.37868C14.4497 3.20711 12.5503 3.20711 11.3787 4.37868L4.37868 11.3787C3.20711 12.5503 3.20711 14.4497 4.37868 15.6213C5.54995 16.7926 7.44878 16.7929 8.62042 15.6222C8.62072 15.6219 8.62102 15.6216 8.62132 15.6213L9.11792 15.1214C9.40985 14.8276 9.88472 14.826 10.1786 15.1179C10.4724 15.4098 10.474 15.8847 10.1821 16.1786L9.68373 16.6802L9.68198 16.682C7.92462 18.4393 5.07538 18.4393 3.31802 16.682C1.56066 14.9246 1.56066 12.0754 3.31802 10.318L10.318 3.31802C12.0754 1.56066 14.9246 1.56066 16.682 3.31802C18.438 5.07407 18.4393 7.92038 16.6859 9.67806L13.2312 13.2312C12.2061 14.2564 10.544 14.2563 9.51885 13.2312C8.49372 12.206 8.49372 10.544 9.51885 9.51886L12.9697 6.06804C13.2626 5.77515 13.7374 5.77515 14.0303 6.06804C14.3232 6.36094 14.3232 6.83581 14.0303 7.1287L10.5795 10.5795C10.1402 11.0189 10.1402 11.7312 10.5795 12.1705C11.0178 12.6088 11.7276 12.6099 12.1672 12.1738L15.6213 8.62127C16.7928 7.4497 16.7929 5.55025 15.6213 4.37868Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.6213 4.37868C14.4497 3.20711 12.5503 3.20711 11.3787 4.37868L4.37868 11.3787C3.20711 12.5503 3.20711 14.4497 4.37868 15.6213C5.54995 16.7926 7.44878 16.7929 8.62042 15.6222C8.62072 15.6219 8.62102 15.6216 8.62132 15.6213L9.11792 15.1214C9.40985 14.8276 9.88472 14.826 10.1786 15.1179C10.4724 15.4098 10.474 15.8847 10.1821 16.1786L9.68373 16.6802L9.68198 16.682C7.92462 18.4393 5.07538 18.4393 3.31802 16.682C1.56066 14.9246 1.56066 12.0754 3.31802 10.318L10.318 3.31802C12.0754 1.56066 14.9246 1.56066 16.682 3.31802C18.438 5.07407 18.4393 7.92038 16.6859 9.67806L13.2312 13.2312C12.2061 14.2564 10.544 14.2563 9.51885 13.2312C8.49372 12.206 8.49372 10.544 9.51885 9.51886L12.9697 6.06804C13.2626 5.77515 13.7374 5.77515 14.0303 6.06804C14.3232 6.36094 14.3232 6.83581 14.0303 7.1287L10.5795 10.5795C10.1402 11.0189 10.1402 11.7312 10.5795 12.1705C11.0178 12.6088 11.7276 12.6099 12.1672 12.1738L15.6213 8.62127C16.7928 7.4497 16.7929 5.55025 15.6213 4.37868Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/pause.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.75 3C5.33579 3 5 3.33579 5 3.75V16.25C5 16.6642 5.33579 17 5.75 17H7.25C7.66421 17 8 16.6642 8 16.25V3.75C8 3.33579 7.66421 3 7.25 3H5.75Z" fill="#0F172A"/>
    <path d="M12.75 3C12.3358 3 12 3.33579 12 3.75V16.25C12 16.6642 12.3358 17 12.75 17H14.25C14.6642 17 15 16.6642 15 16.25V3.75C15 3.33579 14.6642 3 14.25 3H12.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.75 3C5.33579 3 5 3.33579 5 3.75V16.25C5 16.6642 5.33579 17 5.75 17H7.25C7.66421 17 8 16.6642 8 16.25V3.75C8 3.33579 7.66421 3 7.25 3H5.75Z\" fill=\"#0F172A\"/>\n<path d=\"M12.75 3C12.3358 3 12 3.33579 12 3.75V16.25C12 16.6642 12.3358 17 12.75 17H14.25C14.6642 17 15 16.6642 15 16.25V3.75C15 3.33579 14.6642 3 14.25 3H12.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/pencil-square.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.43306 13.9168L6.69485 10.7623C6.89603 10.2593 7.19728 9.80249 7.58033 9.41945L14.4995 2.50071C15.3279 1.67229 16.6711 1.67229 17.4995 2.50072C18.3279 3.32914 18.3279 4.67229 17.4995 5.50072L10.5803 12.4194C10.1973 12.8025 9.74042 13.1037 9.23746 13.3049L6.08299 14.5667C5.67484 14.73 5.2698 14.3249 5.43306 13.9168Z" fill="#0F172A"/>
    <path d="M3.5 5.75C3.5 5.05964 4.05964 4.5 4.75 4.5H10C10.4142 4.5 10.75 4.16421 10.75 3.75C10.75 3.33579 10.4142 3 10 3H4.75C3.23122 3 2 4.23122 2 5.75V15.25C2 16.7688 3.23122 18 4.75 18H14.25C15.7688 18 17 16.7688 17 15.25V10C17 9.58579 16.6642 9.25 16.25 9.25C15.8358 9.25 15.5 9.58579 15.5 10V15.25C15.5 15.9404 14.9404 16.5 14.25 16.5H4.75C4.05964 16.5 3.5 15.9404 3.5 15.25V5.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.43306 13.9168L6.69485 10.7623C6.89603 10.2593 7.19728 9.80249 7.58033 9.41945L14.4995 2.50071C15.3279 1.67229 16.6711 1.67229 17.4995 2.50072C18.3279 3.32914 18.3279 4.67229 17.4995 5.50072L10.5803 12.4194C10.1973 12.8025 9.74042 13.1037 9.23746 13.3049L6.08299 14.5667C5.67484 14.73 5.2698 14.3249 5.43306 13.9168Z\" fill=\"#0F172A\"/>\n<path d=\"M3.5 5.75C3.5 5.05964 4.05964 4.5 4.75 4.5H10C10.4142 4.5 10.75 4.16421 10.75 3.75C10.75 3.33579 10.4142 3 10 3H4.75C3.23122 3 2 4.23122 2 5.75V15.25C2 16.7688 3.23122 18 4.75 18H14.25C15.7688 18 17 16.7688 17 15.25V10C17 9.58579 16.6642 9.25 16.25 9.25C15.8358 9.25 15.5 9.58579 15.5 10V15.25C15.5 15.9404 14.9404 16.5 14.25 16.5H4.75C4.05964 16.5 3.5 15.9404 3.5 15.25V5.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/pencil.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M2.69509 14.7628L1.4333 17.9173C1.27004 18.3254 1.67508 18.7304 2.08324 18.5672L5.2377 17.3054C5.74067 17.1042 6.19753 16.803 6.58057 16.4199L17.4998 5.5012C18.3282 4.67278 18.3282 3.32963 17.4998 2.5012C16.6713 1.67278 15.3282 1.67277 14.4998 2.5012L3.58057 13.4199C3.19752 13.803 2.89627 14.2598 2.69509 14.7628Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M2.69509 14.7628L1.4333 17.9173C1.27004 18.3254 1.67508 18.7304 2.08324 18.5672L5.2377 17.3054C5.74067 17.1042 6.19753 16.803 6.58057 16.4199L17.4998 5.5012C18.3282 4.67278 18.3282 3.32963 17.4998 2.5012C16.6713 1.67278 15.3282 1.67277 14.4998 2.5012L3.58057 13.4199C3.19752 13.803 2.89627 14.2598 2.69509 14.7628Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/phone-arrow-down-left.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.5 2C2.67157 2 2 2.67157 2 3.5V5C2 6.14856 2.14913 7.26341 2.42949 8.32576C3.61908 12.8334 7.16665 16.3809 11.6742 17.5705C12.7366 17.8509 13.8514 18 15 18H16.5C17.3284 18 18 17.3284 18 16.5V15.3516C18 14.6486 17.5117 14.0399 16.8254 13.8873L13.6024 13.1711C12.8276 12.999 12.0528 13.4602 11.8348 14.2233L11.5682 15.1561C11.4509 15.5669 11.0134 15.7989 10.6184 15.636C7.79126 14.47 5.53001 12.2087 4.36396 9.38159C4.20107 8.98665 4.4331 8.54913 4.84388 8.43176L5.77667 8.16525C6.53984 7.9472 7.00105 7.17238 6.82887 6.39757L6.11265 3.1746C5.96014 2.4883 5.35142 2 4.64837 2H3.5Z" fill="#0F172A"/>
    <path d="M16.7197 2.21967C17.0126 1.92678 17.4874 1.92678 17.7803 2.21967C18.0732 2.51256 18.0732 2.98744 17.7803 3.28033L14.5607 6.5L17.25 6.5C17.6642 6.5 18 6.83579 18 7.25C18 7.66421 17.6642 8 17.25 8L12.75 8C12.3358 8 12 7.66421 12 7.25V2.75C12 2.33579 12.3358 2 12.75 2C13.1642 2 13.5 2.33579 13.5 2.75V5.43934L16.7197 2.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.5 2C2.67157 2 2 2.67157 2 3.5V5C2 6.14856 2.14913 7.26341 2.42949 8.32576C3.61908 12.8334 7.16665 16.3809 11.6742 17.5705C12.7366 17.8509 13.8514 18 15 18H16.5C17.3284 18 18 17.3284 18 16.5V15.3516C18 14.6486 17.5117 14.0399 16.8254 13.8873L13.6024 13.1711C12.8276 12.999 12.0528 13.4602 11.8348 14.2233L11.5682 15.1561C11.4509 15.5669 11.0134 15.7989 10.6184 15.636C7.79126 14.47 5.53001 12.2087 4.36396 9.38159C4.20107 8.98665 4.4331 8.54913 4.84388 8.43176L5.77667 8.16525C6.53984 7.9472 7.00105 7.17238 6.82887 6.39757L6.11265 3.1746C5.96014 2.4883 5.35142 2 4.64837 2H3.5Z\" fill=\"#0F172A\"/>\n<path d=\"M16.7197 2.21967C17.0126 1.92678 17.4874 1.92678 17.7803 2.21967C18.0732 2.51256 18.0732 2.98744 17.7803 3.28033L14.5607 6.5L17.25 6.5C17.6642 6.5 18 6.83579 18 7.25C18 7.66421 17.6642 8 17.25 8L12.75 8C12.3358 8 12 7.66421 12 7.25V2.75C12 2.33579 12.3358 2 12.75 2C13.1642 2 13.5 2.33579 13.5 2.75V5.43934L16.7197 2.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/phone-arrow-up-right.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.5 2C2.67157 2 2 2.67157 2 3.5V5C2 6.14856 2.14913 7.26341 2.42949 8.32576C3.61908 12.8334 7.16665 16.3809 11.6742 17.5705C12.7366 17.8509 13.8514 18 15 18H16.5C17.3284 18 18 17.3284 18 16.5V15.3516C18 14.6486 17.5117 14.0399 16.8254 13.8873L13.6024 13.1711C12.8276 12.999 12.0528 13.4602 11.8348 14.2233L11.5682 15.1561C11.4509 15.5669 11.0134 15.7989 10.6184 15.636C7.79126 14.47 5.53001 12.2087 4.36396 9.38159C4.20107 8.98665 4.4331 8.54913 4.84388 8.43176L5.77667 8.16525C6.53984 7.9472 7.00105 7.17238 6.82887 6.39757L6.11265 3.1746C5.96014 2.4883 5.35142 2 4.64837 2H3.5Z" fill="#0F172A"/>
    <path d="M16.5 4.56066L13.2803 7.78033C12.9874 8.07322 12.5126 8.07322 12.2197 7.78033C11.9268 7.48744 11.9268 7.01256 12.2197 6.71967L15.4393 3.5H12.75C12.3358 3.5 12 3.16421 12 2.75C12 2.33579 12.3358 2 12.75 2H17.25C17.6642 2 18 2.33579 18 2.75V7.25C18 7.66421 17.6642 8 17.25 8C16.8358 8 16.5 7.66421 16.5 7.25V4.56066Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.5 2C2.67157 2 2 2.67157 2 3.5V5C2 6.14856 2.14913 7.26341 2.42949 8.32576C3.61908 12.8334 7.16665 16.3809 11.6742 17.5705C12.7366 17.8509 13.8514 18 15 18H16.5C17.3284 18 18 17.3284 18 16.5V15.3516C18 14.6486 17.5117 14.0399 16.8254 13.8873L13.6024 13.1711C12.8276 12.999 12.0528 13.4602 11.8348 14.2233L11.5682 15.1561C11.4509 15.5669 11.0134 15.7989 10.6184 15.636C7.79126 14.47 5.53001 12.2087 4.36396 9.38159C4.20107 8.98665 4.4331 8.54913 4.84388 8.43176L5.77667 8.16525C6.53984 7.9472 7.00105 7.17238 6.82887 6.39757L6.11265 3.1746C5.96014 2.4883 5.35142 2 4.64837 2H3.5Z\" fill=\"#0F172A\"/>\n<path d=\"M16.5 4.56066L13.2803 7.78033C12.9874 8.07322 12.5126 8.07322 12.2197 7.78033C11.9268 7.48744 11.9268 7.01256 12.2197 6.71967L15.4393 3.5H12.75C12.3358 3.5 12 3.16421 12 2.75C12 2.33579 12.3358 2 12.75 2H17.25C17.6642 2 18 2.33579 18 2.75V7.25C18 7.66421 17.6642 8 17.25 8C16.8358 8 16.5 7.66421 16.5 7.25V4.56066Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/phone-x-mark.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.5 2C2.67157 2 2 2.67157 2 3.5V5C2 6.14856 2.14913 7.26341 2.42949 8.32576C3.61908 12.8334 7.16665 16.3809 11.6742 17.5705C12.7366 17.8509 13.8514 18 15 18H16.5C17.3284 18 18 17.3284 18 16.5V15.3516C18 14.6486 17.5117 14.0399 16.8254 13.8873L13.6024 13.1711C12.8276 12.999 12.0528 13.4602 11.8348 14.2233L11.5682 15.1561C11.4509 15.5669 11.0134 15.7989 10.6184 15.636C7.79126 14.47 5.53001 12.2087 4.36396 9.38159C4.20107 8.98665 4.4331 8.54913 4.84388 8.43176L5.77667 8.16525C6.53984 7.9472 7.00105 7.17238 6.82887 6.39757L6.11265 3.1746C5.96014 2.4883 5.35142 2 4.64837 2H3.5ZM13.2803 2.21967C12.9874 1.92678 12.5126 1.92678 12.2197 2.21967C11.9268 2.51256 11.9268 2.98744 12.2197 3.28033L13.9393 5L12.2197 6.71967C11.9268 7.01256 11.9268 7.48744 12.2197 7.78033C12.5126 8.07322 12.9874 8.07322 13.2803 7.78033L15 6.06066L16.7197 7.78033C17.0126 8.07322 17.4874 8.07322 17.7803 7.78033C18.0732 7.48744 18.0732 7.01256 17.7803 6.71967L16.0607 5L17.7803 3.28033C18.0732 2.98744 18.0732 2.51256 17.7803 2.21967C17.4874 1.92678 17.0126 1.92678 16.7197 2.21967L15 3.93934L13.2803 2.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.5 2C2.67157 2 2 2.67157 2 3.5V5C2 6.14856 2.14913 7.26341 2.42949 8.32576C3.61908 12.8334 7.16665 16.3809 11.6742 17.5705C12.7366 17.8509 13.8514 18 15 18H16.5C17.3284 18 18 17.3284 18 16.5V15.3516C18 14.6486 17.5117 14.0399 16.8254 13.8873L13.6024 13.1711C12.8276 12.999 12.0528 13.4602 11.8348 14.2233L11.5682 15.1561C11.4509 15.5669 11.0134 15.7989 10.6184 15.636C7.79126 14.47 5.53001 12.2087 4.36396 9.38159C4.20107 8.98665 4.4331 8.54913 4.84388 8.43176L5.77667 8.16525C6.53984 7.9472 7.00105 7.17238 6.82887 6.39757L6.11265 3.1746C5.96014 2.4883 5.35142 2 4.64837 2H3.5ZM13.2803 2.21967C12.9874 1.92678 12.5126 1.92678 12.2197 2.21967C11.9268 2.51256 11.9268 2.98744 12.2197 3.28033L13.9393 5L12.2197 6.71967C11.9268 7.01256 11.9268 7.48744 12.2197 7.78033C12.5126 8.07322 12.9874 8.07322 13.2803 7.78033L15 6.06066L16.7197 7.78033C17.0126 8.07322 17.4874 8.07322 17.7803 7.78033C18.0732 7.48744 18.0732 7.01256 17.7803 6.71967L16.0607 5L17.7803 3.28033C18.0732 2.98744 18.0732 2.51256 17.7803 2.21967C17.4874 1.92678 17.0126 1.92678 16.7197 2.21967L15 3.93934L13.2803 2.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/phone.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 3.5C2 2.67157 2.67157 2 3.5 2H4.64837C5.35142 2 5.96014 2.4883 6.11265 3.1746L6.82887 6.39757C7.00105 7.17238 6.53984 7.9472 5.77667 8.16525L4.84388 8.43176C4.4331 8.54913 4.20107 8.98665 4.36396 9.38159C5.53001 12.2087 7.79126 14.47 10.6184 15.636C11.0134 15.7989 11.4509 15.5669 11.5682 15.1561L11.8348 14.2233C12.0528 13.4602 12.8276 12.999 13.6024 13.1711L16.8254 13.8873C17.5117 14.0399 18 14.6486 18 15.3516V16.5C18 17.3284 17.3284 18 16.5 18H15C13.8514 18 12.7366 17.8509 11.6742 17.5705C7.16665 16.3809 3.61908 12.8334 2.42949 8.32576C2.14913 7.26341 2 6.14856 2 5V3.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 3.5C2 2.67157 2.67157 2 3.5 2H4.64837C5.35142 2 5.96014 2.4883 6.11265 3.1746L6.82887 6.39757C7.00105 7.17238 6.53984 7.9472 5.77667 8.16525L4.84388 8.43176C4.4331 8.54913 4.20107 8.98665 4.36396 9.38159C5.53001 12.2087 7.79126 14.47 10.6184 15.636C11.0134 15.7989 11.4509 15.5669 11.5682 15.1561L11.8348 14.2233C12.0528 13.4602 12.8276 12.999 13.6024 13.1711L16.8254 13.8873C17.5117 14.0399 18 14.6486 18 15.3516V16.5C18 17.3284 17.3284 18 16.5 18H15C13.8514 18 12.7366 17.8509 11.6742 17.5705C7.16665 16.3809 3.61908 12.8334 2.42949 8.32576C2.14913 7.26341 2 6.14856 2 5V3.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/photo.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 5.25C1 4.00736 2.00736 3 3.25 3H16.75C17.9926 3 19 4.00736 19 5.25V14.75C19 15.9926 17.9926 17 16.75 17H3.25C2.00736 17 1 15.9926 1 14.75V5.25ZM2.5 11.0607V14.75C2.5 15.1642 2.83579 15.5 3.25 15.5H16.75C17.1642 15.5 17.5 15.1642 17.5 14.75V12.0607L15.2803 9.84099C14.9874 9.5481 14.5126 9.5481 14.2197 9.84099L12.3107 11.75L12.7803 12.2197C13.0732 12.5126 13.0732 12.9874 12.7803 13.2803C12.4874 13.5732 12.0126 13.5732 11.7197 13.2803L6.53033 8.09099C6.23744 7.7981 5.76256 7.7981 5.46967 8.09099L2.5 11.0607ZM12 7C12 7.55228 11.5523 8 11 8C10.4477 8 10 7.55228 10 7C10 6.44772 10.4477 6 11 6C11.5523 6 12 6.44772 12 7Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 5.25C1 4.00736 2.00736 3 3.25 3H16.75C17.9926 3 19 4.00736 19 5.25V14.75C19 15.9926 17.9926 17 16.75 17H3.25C2.00736 17 1 15.9926 1 14.75V5.25ZM2.5 11.0607V14.75C2.5 15.1642 2.83579 15.5 3.25 15.5H16.75C17.1642 15.5 17.5 15.1642 17.5 14.75V12.0607L15.2803 9.84099C14.9874 9.5481 14.5126 9.5481 14.2197 9.84099L12.3107 11.75L12.7803 12.2197C13.0732 12.5126 13.0732 12.9874 12.7803 13.2803C12.4874 13.5732 12.0126 13.5732 11.7197 13.2803L6.53033 8.09099C6.23744 7.7981 5.76256 7.7981 5.46967 8.09099L2.5 11.0607ZM12 7C12 7.55228 11.5523 8 11 8C10.4477 8 10 7.55228 10 7C10 6.44772 10.4477 6 11 6C11.5523 6 12 6.44772 12 7Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/play-pause.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M12.75 4C12.3358 4 12 4.33579 12 4.75V15.25C12 15.6642 12.3358 16 12.75 16H13.25C13.6642 16 14 15.6642 14 15.25V4.75C14 4.33579 13.6642 4 13.25 4H12.75Z" fill="#0F172A"/>
    <path d="M17.75 4C17.3358 4 17 4.33579 17 4.75V15.25C17 15.6642 17.3358 16 17.75 16H18.25C18.6642 16 19 15.6642 19 15.25V4.75C19 4.33579 18.6642 4 18.25 4H17.75Z" fill="#0F172A"/>
    <path d="M3.28824 4.81859C2.28891 4.20135 1 4.9202 1 6.09478V13.9053C1 15.0798 2.2889 15.7987 3.28824 15.1815L9.61101 11.2762C10.56 10.6901 10.56 9.30998 9.61101 8.72382L3.28824 4.81859Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12.75 4C12.3358 4 12 4.33579 12 4.75V15.25C12 15.6642 12.3358 16 12.75 16H13.25C13.6642 16 14 15.6642 14 15.25V4.75C14 4.33579 13.6642 4 13.25 4H12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M17.75 4C17.3358 4 17 4.33579 17 4.75V15.25C17 15.6642 17.3358 16 17.75 16H18.25C18.6642 16 19 15.6642 19 15.25V4.75C19 4.33579 18.6642 4 18.25 4H17.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3.28824 4.81859C2.28891 4.20135 1 4.9202 1 6.09478V13.9053C1 15.0798 2.2889 15.7987 3.28824 15.1815L9.61101 11.2762C10.56 10.6901 10.56 9.30998 9.61101 8.72382L3.28824 4.81859Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/play.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.29995 2.84095C5.3011 2.21124 4 2.92906 4 4.10984V15.891C4 17.0718 5.3011 17.7896 6.29995 17.1599L15.6436 11.2693C16.577 10.6809 16.577 9.31997 15.6436 8.73152L6.29995 2.84095Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6.29995 2.84095C5.3011 2.21124 4 2.92906 4 4.10984V15.891C4 17.0718 5.3011 17.7896 6.29995 17.1599L15.6436 11.2693C16.577 10.6809 16.577 9.31997 15.6436 8.73152L6.29995 2.84095Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/plus-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM10.75 6.75C10.75 6.33579 10.4142 6 10 6C9.58579 6 9.25 6.33579 9.25 6.75V9.25H6.75C6.33579 9.25 6 9.58579 6 10C6 10.4142 6.33579 10.75 6.75 10.75H9.25V13.25C9.25 13.6642 9.58579 14 10 14C10.4142 14 10.75 13.6642 10.75 13.25V10.75H13.25C13.6642 10.75 14 10.4142 14 10C14 9.58579 13.6642 9.25 13.25 9.25H10.75V6.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM10.75 6.75C10.75 6.33579 10.4142 6 10 6C9.58579 6 9.25 6.33579 9.25 6.75V9.25H6.75C6.33579 9.25 6 9.58579 6 10C6 10.4142 6.33579 10.75 6.75 10.75H9.25V13.25C9.25 13.6642 9.58579 14 10 14C10.4142 14 10.75 13.6642 10.75 13.25V10.75H13.25C13.6642 10.75 14 10.4142 14 10C14 9.58579 13.6642 9.25 13.25 9.25H10.75V6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/plus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.75 4.75C10.75 4.33579 10.4142 4 10 4C9.58579 4 9.25 4.33579 9.25 4.75V9.25H4.75C4.33579 9.25 4 9.58579 4 10C4 10.4142 4.33579 10.75 4.75 10.75L9.25 10.75V15.25C9.25 15.6642 9.58579 16 10 16C10.4142 16 10.75 15.6642 10.75 15.25V10.75L15.25 10.75C15.6642 10.75 16 10.4142 16 10C16 9.58579 15.6642 9.25 15.25 9.25H10.75V4.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10.75 4.75C10.75 4.33579 10.4142 4 10 4C9.58579 4 9.25 4.33579 9.25 4.75V9.25H4.75C4.33579 9.25 4 9.58579 4 10C4 10.4142 4.33579 10.75 4.75 10.75L9.25 10.75V15.25C9.25 15.6642 9.58579 16 10 16C10.4142 16 10.75 15.6642 10.75 15.25V10.75L15.25 10.75C15.6642 10.75 16 10.4142 16 10C16 9.58579 15.6642 9.25 15.25 9.25H10.75V4.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/presentation-chart-bar.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 2.75C1 2.33579 1.33579 2 1.75 2H18.25C18.6642 2 19 2.33579 19 2.75C19 3.16421 18.6642 3.5 18.25 3.5H18V12.25C18 13.7688 16.7688 15 15.25 15H14.1775L14.9759 18.0606C15.0805 18.4614 14.8403 18.8711 14.4395 18.9757C14.0387 19.0802 13.629 18.8401 13.5245 18.4393L13.4099 17.9999H6.5905L6.4759 18.4393C6.37134 18.8401 5.96167 19.0802 5.56087 18.9757C5.16007 18.8711 4.91991 18.4614 5.02447 18.0606L5.82289 15H4.75C3.23122 15 2 13.7688 2 12.25V3.5H1.75C1.33579 3.5 1 3.16421 1 2.75ZM7.37309 15L6.9818 16.4999H13.0186L12.6273 15H7.37309ZM13.25 5C13.6642 5 14 5.33579 14 5.75V11.25C14 11.6642 13.6642 12 13.25 12C12.8358 12 12.5 11.6642 12.5 11.25V5.75C12.5 5.33579 12.8358 5 13.25 5ZM6.75 9C7.16421 9 7.5 9.33579 7.5 9.75V11.25C7.5 11.6642 7.16421 12 6.75 12C6.33579 12 6 11.6642 6 11.25V9.75C6 9.33579 6.33579 9 6.75 9ZM10.75 7.75C10.75 7.33579 10.4142 7 10 7C9.58579 7 9.25 7.33579 9.25 7.75V11.25C9.25 11.6642 9.58579 12 10 12C10.4142 12 10.75 11.6642 10.75 11.25V7.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 2.75C1 2.33579 1.33579 2 1.75 2H18.25C18.6642 2 19 2.33579 19 2.75C19 3.16421 18.6642 3.5 18.25 3.5H18V12.25C18 13.7688 16.7688 15 15.25 15H14.1775L14.9759 18.0606C15.0805 18.4614 14.8403 18.8711 14.4395 18.9757C14.0387 19.0802 13.629 18.8401 13.5245 18.4393L13.4099 17.9999H6.5905L6.4759 18.4393C6.37134 18.8401 5.96167 19.0802 5.56087 18.9757C5.16007 18.8711 4.91991 18.4614 5.02447 18.0606L5.82289 15H4.75C3.23122 15 2 13.7688 2 12.25V3.5H1.75C1.33579 3.5 1 3.16421 1 2.75ZM7.37309 15L6.9818 16.4999H13.0186L12.6273 15H7.37309ZM13.25 5C13.6642 5 14 5.33579 14 5.75V11.25C14 11.6642 13.6642 12 13.25 12C12.8358 12 12.5 11.6642 12.5 11.25V5.75C12.5 5.33579 12.8358 5 13.25 5ZM6.75 9C7.16421 9 7.5 9.33579 7.5 9.75V11.25C7.5 11.6642 7.16421 12 6.75 12C6.33579 12 6 11.6642 6 11.25V9.75C6 9.33579 6.33579 9 6.75 9ZM10.75 7.75C10.75 7.33579 10.4142 7 10 7C9.58579 7 9.25 7.33579 9.25 7.75V11.25C9.25 11.6642 9.58579 12 10 12C10.4142 12 10.75 11.6642 10.75 11.25V7.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/presentation-chart-line.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 2.75C1 2.33579 1.33579 2 1.75 2H18.25C18.6642 2 19 2.33579 19 2.75C19 3.16421 18.6642 3.5 18.25 3.5H18V12.25C18 13.7688 16.7688 15 15.25 15H14.1775L14.9759 18.0606C15.0805 18.4614 14.8403 18.8711 14.4395 18.9757C14.0387 19.0802 13.629 18.8401 13.5245 18.4393L13.4099 17.9999H6.5905L6.4759 18.4393C6.37134 18.8401 5.96167 19.0802 5.56087 18.9757C5.16007 18.8711 4.91991 18.4614 5.02447 18.0606L5.82289 15H4.75C3.23122 15 2 13.7688 2 12.25V3.5H1.75C1.33579 3.5 1 3.16421 1 2.75ZM7.37309 15L6.9818 16.4999H13.0186L12.6273 15H7.37309ZM14.8625 6.0688C15.1031 6.40599 15.0248 6.87436 14.6876 7.11493C13.4276 8.0139 12.2896 9.05711 11.2905 10.2134C11.1542 10.3711 10.9585 10.465 10.7503 10.4726C10.542 10.4801 10.34 10.4007 10.1927 10.2534L8.5 8.56073L6.28033 10.7804C5.98744 11.0733 5.51256 11.0733 5.21967 10.7804C4.92678 10.4875 4.92678 10.0126 5.21967 9.71973L7.96967 6.96973C8.26256 6.67684 8.73744 6.67684 9.03033 6.96973L10.6938 8.63325C11.6347 7.62514 12.679 6.70534 13.8164 5.89386C14.1536 5.65328 14.6219 5.73161 14.8625 6.0688Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 2.75C1 2.33579 1.33579 2 1.75 2H18.25C18.6642 2 19 2.33579 19 2.75C19 3.16421 18.6642 3.5 18.25 3.5H18V12.25C18 13.7688 16.7688 15 15.25 15H14.1775L14.9759 18.0606C15.0805 18.4614 14.8403 18.8711 14.4395 18.9757C14.0387 19.0802 13.629 18.8401 13.5245 18.4393L13.4099 17.9999H6.5905L6.4759 18.4393C6.37134 18.8401 5.96167 19.0802 5.56087 18.9757C5.16007 18.8711 4.91991 18.4614 5.02447 18.0606L5.82289 15H4.75C3.23122 15 2 13.7688 2 12.25V3.5H1.75C1.33579 3.5 1 3.16421 1 2.75ZM7.37309 15L6.9818 16.4999H13.0186L12.6273 15H7.37309ZM14.8625 6.0688C15.1031 6.40599 15.0248 6.87436 14.6876 7.11493C13.4276 8.0139 12.2896 9.05711 11.2905 10.2134C11.1542 10.3711 10.9585 10.465 10.7503 10.4726C10.542 10.4801 10.34 10.4007 10.1927 10.2534L8.5 8.56073L6.28033 10.7804C5.98744 11.0733 5.51256 11.0733 5.21967 10.7804C4.92678 10.4875 4.92678 10.0126 5.21967 9.71973L7.96967 6.96973C8.26256 6.67684 8.73744 6.67684 9.03033 6.96973L10.6938 8.63325C11.6347 7.62514 12.679 6.70534 13.8164 5.89386C14.1536 5.65328 14.6219 5.73161 14.8625 6.0688Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/printer.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5 2.75C5 1.7835 5.7835 1 6.75 1H13.25C14.2165 1 15 1.7835 15 2.75V6.25C15 6.26733 14.9997 6.28459 14.9992 6.3018C15.3765 6.34767 15.7522 6.39867 16.1263 6.45472C17.2246 6.6193 18 7.57138 18 8.65297V12.75C18 13.9926 16.9926 15 15.75 15H15.5086L15.8138 16.9839C15.9769 18.044 15.1567 19 14.0842 19H5.91541C4.84287 19 4.02268 18.044 4.18576 16.9839L4.49098 15H4.25C3.00736 15 2 13.9926 2 12.75V8.65298C2 7.57138 2.77538 6.6193 3.87368 6.45472C4.24776 6.39867 4.62347 6.34767 5.00075 6.3018C5.00025 6.28459 5 6.26733 5 6.25V2.75ZM13.5 6.14734C12.3461 6.04977 11.1788 6 10 6C8.82119 6 7.65386 6.04977 6.5 6.14734V2.75C6.5 2.61193 6.61193 2.5 6.75 2.5H13.25C13.3881 2.5 13.5 2.61193 13.5 2.75V6.14734ZM6.60772 12.5C6.48433 12.5 6.37939 12.59 6.36063 12.712L5.66832 17.212C5.64502 17.3634 5.76219 17.5 5.91541 17.5H14.0842C14.2374 17.5 14.3546 17.3634 14.3313 17.212L13.639 12.712C13.6202 12.59 13.5153 12.5 13.3919 12.5H6.60772Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5 2.75C5 1.7835 5.7835 1 6.75 1H13.25C14.2165 1 15 1.7835 15 2.75V6.25C15 6.26733 14.9997 6.28459 14.9992 6.3018C15.3765 6.34767 15.7522 6.39867 16.1263 6.45472C17.2246 6.6193 18 7.57138 18 8.65297V12.75C18 13.9926 16.9926 15 15.75 15H15.5086L15.8138 16.9839C15.9769 18.044 15.1567 19 14.0842 19H5.91541C4.84287 19 4.02268 18.044 4.18576 16.9839L4.49098 15H4.25C3.00736 15 2 13.9926 2 12.75V8.65298C2 7.57138 2.77538 6.6193 3.87368 6.45472C4.24776 6.39867 4.62347 6.34767 5.00075 6.3018C5.00025 6.28459 5 6.26733 5 6.25V2.75ZM13.5 6.14734C12.3461 6.04977 11.1788 6 10 6C8.82119 6 7.65386 6.04977 6.5 6.14734V2.75C6.5 2.61193 6.61193 2.5 6.75 2.5H13.25C13.3881 2.5 13.5 2.61193 13.5 2.75V6.14734ZM6.60772 12.5C6.48433 12.5 6.37939 12.59 6.36063 12.712L5.66832 17.212C5.64502 17.3634 5.76219 17.5 5.91541 17.5H14.0842C14.2374 17.5 14.3546 17.3634 14.3313 17.212L13.639 12.712C13.6202 12.59 13.5153 12.5 13.3919 12.5H6.60772Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/puzzle-piece.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 4.46691C12 4.06159 12.2623 3.71616 12.5588 3.43985C12.8348 3.18269 13 2.85581 13 2.5C13 1.67157 12.1046 1 11 1C9.89543 1 9 1.67157 9 2.5C9 2.862 9.17098 3.19406 9.45568 3.45321C9.74658 3.718 10 4.05386 10 4.44722C10 5.00695 9.53506 5.45596 8.97644 5.42075C7.96056 5.35672 6.95522 5.2543 5.96183 5.11495C5.72871 5.08224 5.49377 5.16089 5.32731 5.32734C5.16086 5.4938 5.08221 5.72874 5.11492 5.96186C5.25427 6.95525 5.35669 7.96058 5.42072 8.97646C5.45593 9.53507 5.00693 10 4.44721 10C4.05385 10 3.718 9.74658 3.45322 9.45569C3.19406 9.17099 2.86201 9 2.5 9C1.67157 9 1 9.89543 1 11C1 12.1046 1.67157 13 2.5 13C2.85582 13 3.1827 12.8348 3.43986 12.5588C3.71616 12.2623 4.06159 12 4.4669 12C5.03368 12 5.4925 12.4633 5.47094 13.0297C5.42294 14.2907 5.31585 15.5363 5.1524 16.764C5.09796 17.1729 5.38386 17.5489 5.79236 17.6058C6.84158 17.752 7.90341 17.8584 8.97626 17.9236C9.53523 17.9576 10 17.5082 10 16.9481C10 16.5542 9.74616 16.2179 9.45499 15.9526C9.17071 15.6935 9 15.3617 9 15C9 14.1716 9.89543 13.5 11 13.5C12.1046 13.5 13 14.1716 13 15C13 15.3557 12.8349 15.6826 12.559 15.9397C12.2624 16.2161 12 16.5617 12 16.9671C12 17.5339 12.4632 17.9928 13.0296 17.972C14.3674 17.9229 15.689 17.8097 16.9915 17.6354C17.3267 17.5905 17.5905 17.3268 17.6353 16.9915C17.8097 15.6891 17.9229 14.3674 17.972 13.0296C17.9928 12.4632 17.5339 12 16.9671 12C16.5617 12 16.2161 12.2624 15.9397 12.559C15.6826 12.8349 15.3557 13 15 13C14.1716 13 13.5 12.1046 13.5 11C13.5 9.89543 14.1716 9 15 9C15.3617 9 15.6935 9.17071 15.9526 9.455C16.2179 9.74617 16.5542 10 16.9481 10C17.5081 10 17.9575 9.53524 17.9236 8.97628C17.8584 7.90343 17.752 6.84161 17.6058 5.79239C17.5489 5.38389 17.1728 5.09799 16.764 5.15243C15.5363 5.31588 14.2907 5.42297 13.0297 5.47097C12.4633 5.49253 12 5.0337 12 4.46691Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12 4.46691C12 4.06159 12.2623 3.71616 12.5588 3.43985C12.8348 3.18269 13 2.85581 13 2.5C13 1.67157 12.1046 1 11 1C9.89543 1 9 1.67157 9 2.5C9 2.862 9.17098 3.19406 9.45568 3.45321C9.74658 3.718 10 4.05386 10 4.44722C10 5.00695 9.53506 5.45596 8.97644 5.42075C7.96056 5.35672 6.95522 5.2543 5.96183 5.11495C5.72871 5.08224 5.49377 5.16089 5.32731 5.32734C5.16086 5.4938 5.08221 5.72874 5.11492 5.96186C5.25427 6.95525 5.35669 7.96058 5.42072 8.97646C5.45593 9.53507 5.00693 10 4.44721 10C4.05385 10 3.718 9.74658 3.45322 9.45569C3.19406 9.17099 2.86201 9 2.5 9C1.67157 9 1 9.89543 1 11C1 12.1046 1.67157 13 2.5 13C2.85582 13 3.1827 12.8348 3.43986 12.5588C3.71616 12.2623 4.06159 12 4.4669 12C5.03368 12 5.4925 12.4633 5.47094 13.0297C5.42294 14.2907 5.31585 15.5363 5.1524 16.764C5.09796 17.1729 5.38386 17.5489 5.79236 17.6058C6.84158 17.752 7.90341 17.8584 8.97626 17.9236C9.53523 17.9576 10 17.5082 10 16.9481C10 16.5542 9.74616 16.2179 9.45499 15.9526C9.17071 15.6935 9 15.3617 9 15C9 14.1716 9.89543 13.5 11 13.5C12.1046 13.5 13 14.1716 13 15C13 15.3557 12.8349 15.6826 12.559 15.9397C12.2624 16.2161 12 16.5617 12 16.9671C12 17.5339 12.4632 17.9928 13.0296 17.972C14.3674 17.9229 15.689 17.8097 16.9915 17.6354C17.3267 17.5905 17.5905 17.3268 17.6353 16.9915C17.8097 15.6891 17.9229 14.3674 17.972 13.0296C17.9928 12.4632 17.5339 12 16.9671 12C16.5617 12 16.2161 12.2624 15.9397 12.559C15.6826 12.8349 15.3557 13 15 13C14.1716 13 13.5 12.1046 13.5 11C13.5 9.89543 14.1716 9 15 9C15.3617 9 15.6935 9.17071 15.9526 9.455C16.2179 9.74617 16.5542 10 16.9481 10C17.5081 10 17.9575 9.53524 17.9236 8.97628C17.8584 7.90343 17.752 6.84161 17.6058 5.79239C17.5489 5.38389 17.1728 5.09799 16.764 5.15243C15.5363 5.31588 14.2907 5.42297 13.0297 5.47097C12.4633 5.49253 12 5.0337 12 4.46691Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/qr-code.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.75 2C2.7835 2 2 2.7835 2 3.75V7.25C2 8.2165 2.7835 9 3.75 9H7.25C8.2165 9 9 8.2165 9 7.25V3.75C9 2.7835 8.2165 2 7.25 2H3.75ZM3.5 3.75C3.5 3.61193 3.61193 3.5 3.75 3.5H7.25C7.38807 3.5 7.5 3.61193 7.5 3.75V7.25C7.5 7.38807 7.38807 7.5 7.25 7.5H3.75C3.61193 7.5 3.5 7.38807 3.5 7.25V3.75ZM3.75 11C2.7835 11 2 11.7835 2 12.75V16.25C2 17.2165 2.7835 18 3.75 18H7.25C8.2165 18 9 17.2165 9 16.25V12.75C9 11.7835 8.2165 11 7.25 11H3.75ZM3.5 12.75C3.5 12.6119 3.61193 12.5 3.75 12.5H7.25C7.38807 12.5 7.5 12.6119 7.5 12.75V16.25C7.5 16.3881 7.38807 16.5 7.25 16.5H3.75C3.61193 16.5 3.5 16.3881 3.5 16.25V12.75ZM11 3.75C11 2.7835 11.7835 2 12.75 2H16.25C17.2165 2 18 2.7835 18 3.75V7.25C18 8.2165 17.2165 9 16.25 9H12.75C11.7835 9 11 8.2165 11 7.25V3.75ZM12.75 3.5C12.6119 3.5 12.5 3.61193 12.5 3.75V7.25C12.5 7.38807 12.6119 7.5 12.75 7.5H16.25C16.3881 7.5 16.5 7.38807 16.5 7.25V3.75C16.5 3.61193 16.3881 3.5 16.25 3.5H12.75ZM5.49023 4.5C4.93795 4.5 4.49023 4.94772 4.49023 5.5V5.51C4.49023 6.06228 4.93795 6.51 5.49023 6.51H5.50023C6.05252 6.51 6.50023 6.06228 6.50023 5.51V5.5C6.50023 4.94772 6.05252 4.5 5.50023 4.5H5.49023ZM14.4902 4.5C13.9379 4.5 13.4902 4.94772 13.4902 5.5V5.51C13.4902 6.06228 13.9379 6.51 14.4902 6.51H14.5002C15.0525 6.51 15.5002 6.06228 15.5002 5.51V5.5C15.5002 4.94772 15.0525 4.5 14.5002 4.5H14.4902ZM5.49023 13.5C4.93795 13.5 4.49023 13.9477 4.49023 14.5V14.51C4.49023 15.0623 4.93795 15.51 5.49023 15.51H5.50023C6.05252 15.51 6.50023 15.0623 6.50023 14.51V14.5C6.50023 13.9477 6.05252 13.5 5.50023 13.5H5.49023ZM14.4902 13.5C13.9379 13.5 13.4902 13.9477 13.4902 14.5V14.51C13.4902 15.0623 13.9379 15.51 14.4902 15.51H14.5002C15.0525 15.51 15.5002 15.0623 15.5002 14.51V14.5C15.5002 13.9477 15.0525 13.5 14.5002 13.5H14.4902ZM10.9902 12C10.9902 11.4477 11.4379 11 11.9902 11H12.0002C12.5525 11 13.0002 11.4477 13.0002 12V12.01C13.0002 12.5623 12.5525 13.01 12.0002 13.01H11.9902C11.4379 13.01 10.9902 12.5623 10.9902 12.01V12ZM16.9902 11C16.4379 11 15.9902 11.4477 15.9902 12V12.01C15.9902 12.5623 16.4379 13.01 16.9902 13.01H17.0002C17.5525 13.01 18.0002 12.5623 18.0002 12.01V12C18.0002 11.4477 17.5525 11 17.0002 11H16.9902ZM15.9902 17C15.9902 16.4477 16.4379 16 16.9902 16H17.0002C17.5525 16 18.0002 16.4477 18.0002 17V17.01C18.0002 17.5623 17.5525 18.01 17.0002 18.01H16.9902C16.4379 18.01 15.9902 17.5623 15.9902 17.01V17ZM11.9902 16C11.4379 16 10.9902 16.4477 10.9902 17V17.01C10.9902 17.5623 11.4379 18.01 11.9902 18.01H12.0002C12.5525 18.01 13.0002 17.5623 13.0002 17.01V17C13.0002 16.4477 12.5525 16 12.0002 16H11.9902Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.75 2C2.7835 2 2 2.7835 2 3.75V7.25C2 8.2165 2.7835 9 3.75 9H7.25C8.2165 9 9 8.2165 9 7.25V3.75C9 2.7835 8.2165 2 7.25 2H3.75ZM3.5 3.75C3.5 3.61193 3.61193 3.5 3.75 3.5H7.25C7.38807 3.5 7.5 3.61193 7.5 3.75V7.25C7.5 7.38807 7.38807 7.5 7.25 7.5H3.75C3.61193 7.5 3.5 7.38807 3.5 7.25V3.75ZM3.75 11C2.7835 11 2 11.7835 2 12.75V16.25C2 17.2165 2.7835 18 3.75 18H7.25C8.2165 18 9 17.2165 9 16.25V12.75C9 11.7835 8.2165 11 7.25 11H3.75ZM3.5 12.75C3.5 12.6119 3.61193 12.5 3.75 12.5H7.25C7.38807 12.5 7.5 12.6119 7.5 12.75V16.25C7.5 16.3881 7.38807 16.5 7.25 16.5H3.75C3.61193 16.5 3.5 16.3881 3.5 16.25V12.75ZM11 3.75C11 2.7835 11.7835 2 12.75 2H16.25C17.2165 2 18 2.7835 18 3.75V7.25C18 8.2165 17.2165 9 16.25 9H12.75C11.7835 9 11 8.2165 11 7.25V3.75ZM12.75 3.5C12.6119 3.5 12.5 3.61193 12.5 3.75V7.25C12.5 7.38807 12.6119 7.5 12.75 7.5H16.25C16.3881 7.5 16.5 7.38807 16.5 7.25V3.75C16.5 3.61193 16.3881 3.5 16.25 3.5H12.75ZM5.49023 4.5C4.93795 4.5 4.49023 4.94772 4.49023 5.5V5.51C4.49023 6.06228 4.93795 6.51 5.49023 6.51H5.50023C6.05252 6.51 6.50023 6.06228 6.50023 5.51V5.5C6.50023 4.94772 6.05252 4.5 5.50023 4.5H5.49023ZM14.4902 4.5C13.9379 4.5 13.4902 4.94772 13.4902 5.5V5.51C13.4902 6.06228 13.9379 6.51 14.4902 6.51H14.5002C15.0525 6.51 15.5002 6.06228 15.5002 5.51V5.5C15.5002 4.94772 15.0525 4.5 14.5002 4.5H14.4902ZM5.49023 13.5C4.93795 13.5 4.49023 13.9477 4.49023 14.5V14.51C4.49023 15.0623 4.93795 15.51 5.49023 15.51H5.50023C6.05252 15.51 6.50023 15.0623 6.50023 14.51V14.5C6.50023 13.9477 6.05252 13.5 5.50023 13.5H5.49023ZM14.4902 13.5C13.9379 13.5 13.4902 13.9477 13.4902 14.5V14.51C13.4902 15.0623 13.9379 15.51 14.4902 15.51H14.5002C15.0525 15.51 15.5002 15.0623 15.5002 14.51V14.5C15.5002 13.9477 15.0525 13.5 14.5002 13.5H14.4902ZM10.9902 12C10.9902 11.4477 11.4379 11 11.9902 11H12.0002C12.5525 11 13.0002 11.4477 13.0002 12V12.01C13.0002 12.5623 12.5525 13.01 12.0002 13.01H11.9902C11.4379 13.01 10.9902 12.5623 10.9902 12.01V12ZM16.9902 11C16.4379 11 15.9902 11.4477 15.9902 12V12.01C15.9902 12.5623 16.4379 13.01 16.9902 13.01H17.0002C17.5525 13.01 18.0002 12.5623 18.0002 12.01V12C18.0002 11.4477 17.5525 11 17.0002 11H16.9902ZM15.9902 17C15.9902 16.4477 16.4379 16 16.9902 16H17.0002C17.5525 16 18.0002 16.4477 18.0002 17V17.01C18.0002 17.5623 17.5525 18.01 17.0002 18.01H16.9902C16.4379 18.01 15.9902 17.5623 15.9902 17.01V17ZM11.9902 16C11.4379 16 10.9902 16.4477 10.9902 17V17.01C10.9902 17.5623 11.4379 18.01 11.9902 18.01H12.0002C12.5525 18.01 13.0002 17.5623 13.0002 17.01V17C13.0002 16.4477 12.5525 16 12.0002 16H11.9902Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/question-mark-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM8.93934 6.93931C8.64645 7.23221 8.17157 7.23221 7.87868 6.93931C7.58579 6.64642 7.58579 6.17155 7.87868 5.87865C9.05025 4.70708 10.9497 4.70708 12.1213 5.87865C13.2929 7.05023 13.2929 8.94972 12.1213 10.1213C11.7288 10.5138 11.2528 10.7756 10.75 10.9051V11.25C10.75 11.6642 10.4142 12 10 12C9.58579 12 9.25 11.6642 9.25 11.25V10.75C9.25 10.0297 9.81995 9.57826 10.3313 9.46322C10.5982 9.40318 10.8516 9.26969 11.0607 9.06063C11.6464 8.47485 11.6464 7.5251 11.0607 6.93931C10.4749 6.35353 9.52513 6.35353 8.93934 6.93931ZM10 15C10.5523 15 11 14.5523 11 14C11 13.4477 10.5523 13 10 13C9.44771 13 9 13.4477 9 14C9 14.5523 9.44771 15 10 15Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM8.93934 6.93931C8.64645 7.23221 8.17157 7.23221 7.87868 6.93931C7.58579 6.64642 7.58579 6.17155 7.87868 5.87865C9.05025 4.70708 10.9497 4.70708 12.1213 5.87865C13.2929 7.05023 13.2929 8.94972 12.1213 10.1213C11.7288 10.5138 11.2528 10.7756 10.75 10.9051V11.25C10.75 11.6642 10.4142 12 10 12C9.58579 12 9.25 11.6642 9.25 11.25V10.75C9.25 10.0297 9.81995 9.57826 10.3313 9.46322C10.5982 9.40318 10.8516 9.26969 11.0607 9.06063C11.6464 8.47485 11.6464 7.5251 11.0607 6.93931C10.4749 6.35353 9.52513 6.35353 8.93934 6.93931ZM10 15C10.5523 15 11 14.5523 11 14C11 13.4477 10.5523 13 10 13C9.44771 13 9 13.4477 9 14C9 14.5523 9.44771 15 10 15Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/queue-list.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M2 4.5C2 3.11929 3.11929 2 4.5 2H15.5C16.8807 2 18 3.11929 18 4.5C18 5.88071 16.8807 7 15.5 7H4.5C3.11929 7 2 5.88071 2 4.5Z" fill="#0F172A"/>
    <path d="M2.75 9.08337C2.33579 9.08337 2 9.41916 2 9.83337C2 10.2476 2.33579 10.5834 2.75 10.5834H17.25C17.6642 10.5834 18 10.2476 18 9.83337C18 9.41916 17.6642 9.08337 17.25 9.08337H2.75Z" fill="#0F172A"/>
    <path d="M2.75 12.6633C2.33579 12.6633 2 12.9991 2 13.4133C2 13.8275 2.33579 14.1633 2.75 14.1633H17.25C17.6642 14.1633 18 13.8275 18 13.4133C18 12.9991 17.6642 12.6633 17.25 12.6633H2.75Z" fill="#0F172A"/>
    <path d="M2.75 16.25C2.33579 16.25 2 16.5858 2 17C2 17.4143 2.33579 17.75 2.75 17.75H17.25C17.6642 17.75 18 17.4143 18 17C18 16.5858 17.6642 16.25 17.25 16.25H2.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M2 4.5C2 3.11929 3.11929 2 4.5 2H15.5C16.8807 2 18 3.11929 18 4.5C18 5.88071 16.8807 7 15.5 7H4.5C3.11929 7 2 5.88071 2 4.5Z\" fill=\"#0F172A\"/>\n<path d=\"M2.75 9.08337C2.33579 9.08337 2 9.41916 2 9.83337C2 10.2476 2.33579 10.5834 2.75 10.5834H17.25C17.6642 10.5834 18 10.2476 18 9.83337C18 9.41916 17.6642 9.08337 17.25 9.08337H2.75Z\" fill=\"#0F172A\"/>\n<path d=\"M2.75 12.6633C2.33579 12.6633 2 12.9991 2 13.4133C2 13.8275 2.33579 14.1633 2.75 14.1633H17.25C17.6642 14.1633 18 13.8275 18 13.4133C18 12.9991 17.6642 12.6633 17.25 12.6633H2.75Z\" fill=\"#0F172A\"/>\n<path d=\"M2.75 16.25C2.33579 16.25 2 16.5858 2 17C2 17.4143 2.33579 17.75 2.75 17.75H17.25C17.6642 17.75 18 17.4143 18 17C18 16.5858 17.6642 16.25 17.25 16.25H2.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/radio.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.4497 3.47318C17.849 3.36303 18.0834 2.95004 17.9732 2.55074C17.8631 2.15144 17.4501 1.91704 17.0508 2.02719L5.31247 5.26535C4.47281 5.36094 3.64077 5.4819 2.81717 5.62745C1.74546 5.81685 1 6.75598 1 7.81626V15.7502C1 16.9929 2.00736 18.0002 3.25 18.0002H16.75C17.9926 18.0002 19 16.9929 19 15.7502V7.81626C19 6.75598 18.2545 5.81685 17.1828 5.62745C15.417 5.31538 13.6124 5.11637 11.777 5.03807L17.4497 3.47318ZM16 9.50024C16 10.3287 15.3284 11.0002 14.5 11.0002C13.6716 11.0002 13 10.3287 13 9.50024C13 8.67182 13.6716 8.00024 14.5 8.00024C15.3284 8.00024 16 8.67182 16 9.50024ZM14.5 16.0002C15.3284 16.0002 16 15.3287 16 14.5002C16 13.6718 15.3284 13.0002 14.5 13.0002C13.6716 13.0002 13 13.6718 13 14.5002C13 15.3287 13.6716 16.0002 14.5 16.0002ZM5.24023 11.0002C5.24023 10.586 5.57602 10.2502 5.99023 10.2502H6.00023C6.41445 10.2502 6.75023 10.586 6.75023 11.0002V11.0102C6.75023 11.4245 6.41445 11.7602 6.00023 11.7602H5.99023C5.57602 11.7602 5.24023 11.4245 5.24023 11.0102V11.0002ZM7.99023 10.2502C7.57602 10.2502 7.24023 10.586 7.24023 11.0002V11.0102C7.24023 11.4245 7.57602 11.7602 7.99023 11.7602H8.00023C8.41445 11.7602 8.75023 11.4245 8.75023 11.0102V11.0002C8.75023 10.586 8.41445 10.2502 8.00023 10.2502H7.99023ZM6.24023 8.75024C6.24023 8.33603 6.57602 8.00024 6.99023 8.00024H7.00023C7.41445 8.00024 7.75023 8.33603 7.75023 8.75024V8.76024C7.75023 9.17446 7.41445 9.51024 7.00023 9.51024H6.99023C6.57602 9.51024 6.24023 9.17446 6.24023 8.76024V8.75024ZM9.8233 9.16973C9.53041 8.87684 9.05553 8.87684 8.76264 9.16973L8.75557 9.17681C8.46267 9.4697 8.46267 9.94457 8.75557 10.2375L8.76264 10.2445C9.05553 10.5374 9.53041 10.5374 9.8233 10.2445L9.83037 10.2375C10.1233 9.94457 10.1233 9.4697 9.83037 9.17681L9.8233 9.16973ZM10.25 11.2502C10.6642 11.2502 11 11.586 11 12.0002V12.0102C11 12.4245 10.6642 12.7602 10.25 12.7602H10.24C9.82579 12.7602 9.49 12.4245 9.49 12.0102V12.0002C9.49 11.586 9.82579 11.2502 10.24 11.2502H10.25ZM9.83051 14.8337C10.1234 14.5408 10.1234 14.0659 9.83051 13.773L9.82344 13.7659C9.53055 13.4731 9.05567 13.4731 8.76278 13.7659L8.75571 13.773C8.46281 14.0659 8.46281 14.5408 8.75571 14.8337L8.76278 14.8407C9.05567 15.1336 9.53055 15.1336 9.82344 14.8407L9.83051 14.8337ZM6.24023 15.2502C6.24023 14.836 6.57602 14.5002 6.99023 14.5002H7.00023C7.41445 14.5002 7.75023 14.836 7.75023 15.2502V15.2602C7.75023 15.6745 7.41445 16.0102 7.00023 16.0102H6.99023C6.57602 16.0102 6.24023 15.6745 6.24023 15.2602V15.2502ZM5.22711 13.7659C4.93421 13.473 4.45934 13.473 4.16645 13.7659L4.15938 13.773C3.86648 14.0659 3.86648 14.5408 4.15938 14.8337L4.16645 14.8407C4.45934 15.1336 4.93421 15.1336 5.22711 14.8407L5.23418 14.8337C5.52707 14.5408 5.52707 14.0659 5.23418 13.773L5.22711 13.7659ZM3.75 11.2502C4.16421 11.2502 4.5 11.586 4.5 12.0002V12.0102C4.5 12.4245 4.16421 12.7602 3.75 12.7602H3.74C3.32579 12.7602 2.99 12.4245 2.99 12.0102V12.0002C2.99 11.586 3.32579 11.2502 3.74 11.2502H3.75ZM5.23432 10.2375C5.52721 9.94459 5.52721 9.46972 5.23432 9.17682L5.22725 9.16975C4.93435 8.87686 4.45948 8.87686 4.16659 9.16975L4.15952 9.17682C3.86662 9.46972 3.86662 9.94459 4.15952 10.2375L4.16659 10.2446C4.45948 10.5374 4.93435 10.5374 5.22725 10.2446L5.23432 10.2375ZM7.24023 13.0002C7.24023 12.586 7.57602 12.2502 7.99023 12.2502H8.00023C8.41445 12.2502 8.75023 12.586 8.75023 13.0002V13.0102C8.75023 13.4245 8.41445 13.7602 8.00023 13.7602H7.99023C7.57602 13.7602 7.24023 13.4245 7.24023 13.0102V13.0002ZM5.99023 12.2502C5.57602 12.2502 5.24023 12.586 5.24023 13.0002V13.0102C5.24023 13.4245 5.57602 13.7602 5.99023 13.7602H6.00023C6.41445 13.7602 6.75023 13.4245 6.75023 13.0102V13.0002C6.75023 12.586 6.41445 12.2502 6.00023 12.2502H5.99023Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M17.4497 3.47318C17.849 3.36303 18.0834 2.95004 17.9732 2.55074C17.8631 2.15144 17.4501 1.91704 17.0508 2.02719L5.31247 5.26535C4.47281 5.36094 3.64077 5.4819 2.81717 5.62745C1.74546 5.81685 1 6.75598 1 7.81626V15.7502C1 16.9929 2.00736 18.0002 3.25 18.0002H16.75C17.9926 18.0002 19 16.9929 19 15.7502V7.81626C19 6.75598 18.2545 5.81685 17.1828 5.62745C15.417 5.31538 13.6124 5.11637 11.777 5.03807L17.4497 3.47318ZM16 9.50024C16 10.3287 15.3284 11.0002 14.5 11.0002C13.6716 11.0002 13 10.3287 13 9.50024C13 8.67182 13.6716 8.00024 14.5 8.00024C15.3284 8.00024 16 8.67182 16 9.50024ZM14.5 16.0002C15.3284 16.0002 16 15.3287 16 14.5002C16 13.6718 15.3284 13.0002 14.5 13.0002C13.6716 13.0002 13 13.6718 13 14.5002C13 15.3287 13.6716 16.0002 14.5 16.0002ZM5.24023 11.0002C5.24023 10.586 5.57602 10.2502 5.99023 10.2502H6.00023C6.41445 10.2502 6.75023 10.586 6.75023 11.0002V11.0102C6.75023 11.4245 6.41445 11.7602 6.00023 11.7602H5.99023C5.57602 11.7602 5.24023 11.4245 5.24023 11.0102V11.0002ZM7.99023 10.2502C7.57602 10.2502 7.24023 10.586 7.24023 11.0002V11.0102C7.24023 11.4245 7.57602 11.7602 7.99023 11.7602H8.00023C8.41445 11.7602 8.75023 11.4245 8.75023 11.0102V11.0002C8.75023 10.586 8.41445 10.2502 8.00023 10.2502H7.99023ZM6.24023 8.75024C6.24023 8.33603 6.57602 8.00024 6.99023 8.00024H7.00023C7.41445 8.00024 7.75023 8.33603 7.75023 8.75024V8.76024C7.75023 9.17446 7.41445 9.51024 7.00023 9.51024H6.99023C6.57602 9.51024 6.24023 9.17446 6.24023 8.76024V8.75024ZM9.8233 9.16973C9.53041 8.87684 9.05553 8.87684 8.76264 9.16973L8.75557 9.17681C8.46267 9.4697 8.46267 9.94457 8.75557 10.2375L8.76264 10.2445C9.05553 10.5374 9.53041 10.5374 9.8233 10.2445L9.83037 10.2375C10.1233 9.94457 10.1233 9.4697 9.83037 9.17681L9.8233 9.16973ZM10.25 11.2502C10.6642 11.2502 11 11.586 11 12.0002V12.0102C11 12.4245 10.6642 12.7602 10.25 12.7602H10.24C9.82579 12.7602 9.49 12.4245 9.49 12.0102V12.0002C9.49 11.586 9.82579 11.2502 10.24 11.2502H10.25ZM9.83051 14.8337C10.1234 14.5408 10.1234 14.0659 9.83051 13.773L9.82344 13.7659C9.53055 13.4731 9.05567 13.4731 8.76278 13.7659L8.75571 13.773C8.46281 14.0659 8.46281 14.5408 8.75571 14.8337L8.76278 14.8407C9.05567 15.1336 9.53055 15.1336 9.82344 14.8407L9.83051 14.8337ZM6.24023 15.2502C6.24023 14.836 6.57602 14.5002 6.99023 14.5002H7.00023C7.41445 14.5002 7.75023 14.836 7.75023 15.2502V15.2602C7.75023 15.6745 7.41445 16.0102 7.00023 16.0102H6.99023C6.57602 16.0102 6.24023 15.6745 6.24023 15.2602V15.2502ZM5.22711 13.7659C4.93421 13.473 4.45934 13.473 4.16645 13.7659L4.15938 13.773C3.86648 14.0659 3.86648 14.5408 4.15938 14.8337L4.16645 14.8407C4.45934 15.1336 4.93421 15.1336 5.22711 14.8407L5.23418 14.8337C5.52707 14.5408 5.52707 14.0659 5.23418 13.773L5.22711 13.7659ZM3.75 11.2502C4.16421 11.2502 4.5 11.586 4.5 12.0002V12.0102C4.5 12.4245 4.16421 12.7602 3.75 12.7602H3.74C3.32579 12.7602 2.99 12.4245 2.99 12.0102V12.0002C2.99 11.586 3.32579 11.2502 3.74 11.2502H3.75ZM5.23432 10.2375C5.52721 9.94459 5.52721 9.46972 5.23432 9.17682L5.22725 9.16975C4.93435 8.87686 4.45948 8.87686 4.16659 9.16975L4.15952 9.17682C3.86662 9.46972 3.86662 9.94459 4.15952 10.2375L4.16659 10.2446C4.45948 10.5374 4.93435 10.5374 5.22725 10.2446L5.23432 10.2375ZM7.24023 13.0002C7.24023 12.586 7.57602 12.2502 7.99023 12.2502H8.00023C8.41445 12.2502 8.75023 12.586 8.75023 13.0002V13.0102C8.75023 13.4245 8.41445 13.7602 8.00023 13.7602H7.99023C7.57602 13.7602 7.24023 13.4245 7.24023 13.0102V13.0002ZM5.99023 12.2502C5.57602 12.2502 5.24023 12.586 5.24023 13.0002V13.0102C5.24023 13.4245 5.57602 13.7602 5.99023 13.7602H6.00023C6.41445 13.7602 6.75023 13.4245 6.75023 13.0102V13.0002C6.75023 12.586 6.41445 12.2502 6.00023 12.2502H5.99023Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/receipt-percent.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.93005 1.31046C6.5916 1.10551 8.28365 1 10 1C11.7163 1 13.4084 1.10551 15.07 1.31046C16.1942 1.44913 17 2.41374 17 3.51661V18.25C17 18.5078 16.8676 18.7475 16.6494 18.8848C16.4312 19.0221 16.1578 19.0377 15.9255 18.9261L13.125 17.5819L10.3245 18.9261C10.1194 19.0246 9.88061 19.0246 9.67545 18.9261L6.875 17.5819L4.07455 18.9261C3.84215 19.0377 3.56875 19.0221 3.35057 18.8848C3.13239 18.7475 3 18.5078 3 18.25V3.51661C3 2.41374 3.80579 1.44913 4.93005 1.31046ZM13.7803 7.28033C14.0732 6.98744 14.0732 6.51256 13.7803 6.21967C13.4874 5.92678 13.0126 5.92678 12.7197 6.21967L6.21967 12.7197C5.92678 13.0126 5.92678 13.4874 6.21967 13.7803C6.51256 14.0732 6.98744 14.0732 7.28033 13.7803L13.7803 7.28033ZM9 8C9 8.55228 8.55228 9 8 9C7.44772 9 7 8.55228 7 8C7 7.44772 7.44772 7 8 7C8.55228 7 9 7.44772 9 8ZM12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.93005 1.31046C6.5916 1.10551 8.28365 1 10 1C11.7163 1 13.4084 1.10551 15.07 1.31046C16.1942 1.44913 17 2.41374 17 3.51661V18.25C17 18.5078 16.8676 18.7475 16.6494 18.8848C16.4312 19.0221 16.1578 19.0377 15.9255 18.9261L13.125 17.5819L10.3245 18.9261C10.1194 19.0246 9.88061 19.0246 9.67545 18.9261L6.875 17.5819L4.07455 18.9261C3.84215 19.0377 3.56875 19.0221 3.35057 18.8848C3.13239 18.7475 3 18.5078 3 18.25V3.51661C3 2.41374 3.80579 1.44913 4.93005 1.31046ZM13.7803 7.28033C14.0732 6.98744 14.0732 6.51256 13.7803 6.21967C13.4874 5.92678 13.0126 5.92678 12.7197 6.21967L6.21967 12.7197C5.92678 13.0126 5.92678 13.4874 6.21967 13.7803C6.51256 14.0732 6.98744 14.0732 7.28033 13.7803L13.7803 7.28033ZM9 8C9 8.55228 8.55228 9 8 9C7.44772 9 7 8.55228 7 8C7 7.44772 7.44772 7 8 7C8.55228 7 9 7.44772 9 8ZM12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/receipt-refund.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.93005 1.31046C6.5916 1.10551 8.28365 1 10 1C11.7163 1 13.4084 1.10551 15.07 1.31046C16.1942 1.44913 17 2.41374 17 3.51661V18.25C17 18.5078 16.8676 18.7475 16.6494 18.8848C16.4312 19.0221 16.1578 19.0377 15.9255 18.9261L13.125 17.5819L10.3245 18.9261C10.1194 19.0246 9.88061 19.0246 9.67545 18.9261L6.875 17.5819L4.07455 18.9261C3.84215 19.0377 3.56875 19.0221 3.35057 18.8848C3.13239 18.7475 3 18.5078 3 18.25V3.51661C3 2.41374 3.80579 1.44913 4.93005 1.31046ZM9.75172 6.30747C10.0596 6.03038 10.0846 5.55616 9.80747 5.24828C9.53038 4.94039 9.05616 4.91544 8.74828 5.19253L6.24828 7.44253C6.09024 7.58476 6 7.78738 6 8C6 8.21262 6.09024 8.41524 6.24828 8.55747L8.74828 10.8075C9.05616 11.0846 9.53038 11.0596 9.80747 10.7517C10.0846 10.4438 10.0596 9.96962 9.75172 9.69253L8.70447 8.75H10.625C11.6605 8.75 12.5 9.58947 12.5 10.625C12.5 11.6605 11.6605 12.5 10.625 12.5C10.2108 12.5 9.875 12.8358 9.875 13.25C9.875 13.6642 10.2108 14 10.625 14C12.489 14 14 12.489 14 10.625C14 8.76104 12.489 7.25 10.625 7.25H8.70447L9.75172 6.30747Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.93005 1.31046C6.5916 1.10551 8.28365 1 10 1C11.7163 1 13.4084 1.10551 15.07 1.31046C16.1942 1.44913 17 2.41374 17 3.51661V18.25C17 18.5078 16.8676 18.7475 16.6494 18.8848C16.4312 19.0221 16.1578 19.0377 15.9255 18.9261L13.125 17.5819L10.3245 18.9261C10.1194 19.0246 9.88061 19.0246 9.67545 18.9261L6.875 17.5819L4.07455 18.9261C3.84215 19.0377 3.56875 19.0221 3.35057 18.8848C3.13239 18.7475 3 18.5078 3 18.25V3.51661C3 2.41374 3.80579 1.44913 4.93005 1.31046ZM9.75172 6.30747C10.0596 6.03038 10.0846 5.55616 9.80747 5.24828C9.53038 4.94039 9.05616 4.91544 8.74828 5.19253L6.24828 7.44253C6.09024 7.58476 6 7.78738 6 8C6 8.21262 6.09024 8.41524 6.24828 8.55747L8.74828 10.8075C9.05616 11.0846 9.53038 11.0596 9.80747 10.7517C10.0846 10.4438 10.0596 9.96962 9.75172 9.69253L8.70447 8.75H10.625C11.6605 8.75 12.5 9.58947 12.5 10.625C12.5 11.6605 11.6605 12.5 10.625 12.5C10.2108 12.5 9.875 12.8358 9.875 13.25C9.875 13.6642 10.2108 14 10.625 14C12.489 14 14 12.489 14 10.625C14 8.76104 12.489 7.25 10.625 7.25H8.70447L9.75172 6.30747Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/rectangle-group.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.5 3C1.67157 3 1 3.67157 1 4.5V8.5C1 9.32843 1.67157 10 2.5 10H8.5C9.32843 10 10 9.32843 10 8.5V4.5C10 3.67157 9.32843 3 8.5 3H2.5ZM13.5 5C12.6716 5 12 5.67157 12 6.5V13.5C12 14.3284 12.6716 15 13.5 15H17.5C18.3284 15 19 14.3284 19 13.5V6.5C19 5.67157 18.3284 5 17.5 5H13.5ZM3.5 12C2.67157 12 2 12.6716 2 13.5V15.5C2 16.3284 2.67157 17 3.5 17H9.5C10.3284 17 11 16.3284 11 15.5V13.5C11 12.6716 10.3284 12 9.5 12H3.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.5 3C1.67157 3 1 3.67157 1 4.5V8.5C1 9.32843 1.67157 10 2.5 10H8.5C9.32843 10 10 9.32843 10 8.5V4.5C10 3.67157 9.32843 3 8.5 3H2.5ZM13.5 5C12.6716 5 12 5.67157 12 6.5V13.5C12 14.3284 12.6716 15 13.5 15H17.5C18.3284 15 19 14.3284 19 13.5V6.5C19 5.67157 18.3284 5 17.5 5H13.5ZM3.5 12C2.67157 12 2 12.6716 2 13.5V15.5C2 16.3284 2.67157 17 3.5 17H9.5C10.3284 17 11 16.3284 11 15.5V13.5C11 12.6716 10.3284 12 9.5 12H3.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/rectangle-stack.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.12744 3.50197C5.16817 3.50066 5.20906 3.5 5.25011 3.5H14.7501C14.7912 3.5 14.832 3.50066 14.8728 3.50197C14.5645 2.62705 13.7305 2 12.7501 2H7.25011C6.26971 2 5.43576 2.62705 5.12744 3.50197Z" fill="#0F172A"/>
    <path d="M1 10.25C1 9.00736 2.00736 8 3.25 8H16.75C17.9926 8 19 9.00736 19 10.25V15.75C19 16.9926 17.9926 18 16.75 18H3.25C2.00736 18 1 16.9926 1 15.75V10.25Z" fill="#0F172A"/>
    <path d="M3.25011 6.5C3.20906 6.5 3.16817 6.50066 3.12744 6.50197C3.43576 5.62705 4.26971 5 5.25011 5H14.7501C15.7305 5 16.5645 5.62705 16.8728 6.50197C16.832 6.50066 16.7912 6.5 16.7501 6.5H3.25011Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.12744 3.50197C5.16817 3.50066 5.20906 3.5 5.25011 3.5H14.7501C14.7912 3.5 14.832 3.50066 14.8728 3.50197C14.5645 2.62705 13.7305 2 12.7501 2H7.25011C6.26971 2 5.43576 2.62705 5.12744 3.50197Z\" fill=\"#0F172A\"/>\n<path d=\"M1 10.25C1 9.00736 2.00736 8 3.25 8H16.75C17.9926 8 19 9.00736 19 10.25V15.75C19 16.9926 17.9926 18 16.75 18H3.25C2.00736 18 1 16.9926 1 15.75V10.25Z\" fill=\"#0F172A\"/>\n<path d=\"M3.25011 6.5C3.20906 6.5 3.16817 6.50066 3.12744 6.50197C3.43576 5.62705 4.26971 5 5.25011 5H14.7501C15.7305 5 16.5645 5.62705 16.8728 6.50197C16.832 6.50066 16.7912 6.5 16.7501 6.5H3.25011Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/rss.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.rss />

      <.rss class="h-6 w-6 text-gray-500" />

  or as a function

      <%= rss() %>

      <%= rss(class: "h-6 w-6 text-gray-500") %>
  """
  def rss(assigns_or_opts \\ [])

  def rss(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.75 3C3.33579 3 3 3.33579 3 3.75V4.25C3 4.66421 3.33579 5 3.75 5H4C10.0751 5 15 9.92487 15 16V16.25C15 16.6642 15.3358 17 15.75 17H16.25C16.6642 17 17 16.6642 17 16.25V16C17 8.8203 11.1797 3 4 3H3.75Z" fill="#0F172A"/>
    <path d="M3 8.75C3 8.33579 3.33579 8 3.75 8H4C8.41828 8 12 11.5817 12 16V16.25C12 16.6642 11.6642 17 11.25 17H10.75C10.3358 17 10 16.6642 10 16.25V16C10 12.6863 7.31371 10 4 10H3.75C3.33579 10 3 9.66421 3 9.25V8.75Z" fill="#0F172A"/>
    <path d="M7 15C7 16.1046 6.10457 17 5 17C3.89543 17 3 16.1046 3 15C3 13.8954 3.89543 13 5 13C6.10457 13 7 13.8954 7 15Z" fill="#0F172A"/>
    </svg>
    """
  end

  def rss(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.75 3C3.33579 3 3 3.33579 3 3.75V4.25C3 4.66421 3.33579 5 3.75 5H4C10.0751 5 15 9.92487 15 16V16.25C15 16.6642 15.3358 17 15.75 17H16.25C16.6642 17 17 16.6642 17 16.25V16C17 8.8203 11.1797 3 4 3H3.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3 8.75C3 8.33579 3.33579 8 3.75 8H4C8.41828 8 12 11.5817 12 16V16.25C12 16.6642 11.6642 17 11.25 17H10.75C10.3358 17 10 16.6642 10 16.25V16C10 12.6863 7.31371 10 4 10H3.75C3.33579 10 3 9.66421 3 9.25V8.75Z\" fill=\"#0F172A\"/>\n<path d=\"M7 15C7 16.1046 6.10457 17 5 17C3.89543 17 3 16.1046 3 15C3 13.8954 3.89543 13 5 13C6.10457 13 7 13.8954 7 15Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/scale.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 2C10.4143 2 10.75 2.33579 10.75 2.75V3.00836C12.231 3.0414 13.6882 3.17204 15.1154 3.39419C15.8922 3.51509 16.66 3.6631 17.418 3.83721C17.8217 3.92994 18.0737 4.33239 17.981 4.73608C17.8883 5.13978 17.4858 5.39187 17.0821 5.29913C16.7168 5.21521 16.3491 5.13764 15.979 5.06655L17.6814 12.6123C17.7565 12.9452 17.5975 13.2868 17.2944 13.4435C16.6064 13.7994 15.8256 14 15 14C14.1745 14 13.3937 13.7994 12.7057 13.4435C12.4026 13.2868 12.2436 12.9452 12.3187 12.6123L14.0896 4.76296C12.9933 4.62087 11.8791 4.53512 10.75 4.50875V16.0138C12.0446 16.0616 13.3083 16.2324 14.5296 16.5153C14.9331 16.6087 15.1845 17.0116 15.091 17.4151C14.9976 17.8187 14.5947 18.07 14.1912 17.9766C12.8452 17.6649 11.4424 17.5 10 17.5C8.55772 17.5 7.15486 17.6649 5.80893 17.9766C5.40539 18.07 5.00251 17.8187 4.90906 17.4151C4.81561 17.0116 5.06699 16.6087 5.47052 16.5153C6.69183 16.2324 7.95553 16.0616 9.25004 16.0138V4.50875C8.12096 4.53512 7.00679 4.62087 5.91051 4.76296L7.68142 12.6123C7.75652 12.9452 7.59746 13.2868 7.29437 13.4435C6.6064 13.7994 5.82556 14 5.00004 14C4.17453 14 3.39369 13.7994 2.70572 13.4435C2.40263 13.2868 2.24356 12.9452 2.31866 12.6123L4.02108 5.06655C3.65102 5.13764 3.28327 5.21521 2.91796 5.29913C2.51426 5.39187 2.11182 5.13978 2.01908 4.73608C1.92635 4.33239 2.17843 3.92994 2.58213 3.83721C3.34006 3.6631 4.10791 3.51509 4.8847 3.39419C6.31192 3.17204 7.76912 3.0414 9.25004 3.00836V2.75C9.25004 2.33579 9.58583 2 10 2ZM5.00004 7.54309L3.91997 12.3304C4.25962 12.4404 4.62241 12.5 5.00004 12.5C5.37768 12.5 5.74047 12.4404 6.08012 12.3304L5.00004 7.54309ZM15 7.5431L13.92 12.3304C14.2596 12.4404 14.6224 12.5 15 12.5C15.3777 12.5 15.7405 12.4404 16.0801 12.3304L15 7.5431Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 2C10.4143 2 10.75 2.33579 10.75 2.75V3.00836C12.231 3.0414 13.6882 3.17204 15.1154 3.39419C15.8922 3.51509 16.66 3.6631 17.418 3.83721C17.8217 3.92994 18.0737 4.33239 17.981 4.73608C17.8883 5.13978 17.4858 5.39187 17.0821 5.29913C16.7168 5.21521 16.3491 5.13764 15.979 5.06655L17.6814 12.6123C17.7565 12.9452 17.5975 13.2868 17.2944 13.4435C16.6064 13.7994 15.8256 14 15 14C14.1745 14 13.3937 13.7994 12.7057 13.4435C12.4026 13.2868 12.2436 12.9452 12.3187 12.6123L14.0896 4.76296C12.9933 4.62087 11.8791 4.53512 10.75 4.50875V16.0138C12.0446 16.0616 13.3083 16.2324 14.5296 16.5153C14.9331 16.6087 15.1845 17.0116 15.091 17.4151C14.9976 17.8187 14.5947 18.07 14.1912 17.9766C12.8452 17.6649 11.4424 17.5 10 17.5C8.55772 17.5 7.15486 17.6649 5.80893 17.9766C5.40539 18.07 5.00251 17.8187 4.90906 17.4151C4.81561 17.0116 5.06699 16.6087 5.47052 16.5153C6.69183 16.2324 7.95553 16.0616 9.25004 16.0138V4.50875C8.12096 4.53512 7.00679 4.62087 5.91051 4.76296L7.68142 12.6123C7.75652 12.9452 7.59746 13.2868 7.29437 13.4435C6.6064 13.7994 5.82556 14 5.00004 14C4.17453 14 3.39369 13.7994 2.70572 13.4435C2.40263 13.2868 2.24356 12.9452 2.31866 12.6123L4.02108 5.06655C3.65102 5.13764 3.28327 5.21521 2.91796 5.29913C2.51426 5.39187 2.11182 5.13978 2.01908 4.73608C1.92635 4.33239 2.17843 3.92994 2.58213 3.83721C3.34006 3.6631 4.10791 3.51509 4.8847 3.39419C6.31192 3.17204 7.76912 3.0414 9.25004 3.00836V2.75C9.25004 2.33579 9.58583 2 10 2ZM5.00004 7.54309L3.91997 12.3304C4.25962 12.4404 4.62241 12.5 5.00004 12.5C5.37768 12.5 5.74047 12.4404 6.08012 12.3304L5.00004 7.54309ZM15 7.5431L13.92 12.3304C14.2596 12.4404 14.6224 12.5 15 12.5C15.3777 12.5 15.7405 12.4404 16.0801 12.3304L15 7.5431Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/scissors.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.46876 3.7501C0.502265 5.42412 1.07583 7.56469 2.74985 8.53119C4.20093 9.36897 6.00256 9.04958 7.08619 7.85934L7.9695 8.36931C7.99431 8.46193 8.11599 8.4862 8.17843 8.41344C8.32967 8.23719 8.49725 8.07501 8.67914 7.92923C8.96545 7.69975 8.979 7.22009 8.66123 7.03663L7.83619 6.56029C8.32514 5.02673 7.70093 3.30679 6.24985 2.46901C4.57583 1.50251 2.43526 2.07607 1.46876 3.7501ZM3.49985 7.23215C2.54327 6.67986 2.21552 5.45668 2.7678 4.5001C3.32009 3.54351 4.54327 3.21576 5.49985 3.76805C6.45644 4.32033 6.78419 5.54351 6.2319 6.5001C5.67962 7.45668 4.45644 7.78443 3.49985 7.23215Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.95556 8.32179C9.17367 8.65167 8.58789 9.32406 8.36825 10.1438L7.96977 11.6309L7.08628 12.141C6.00265 10.9507 4.20097 10.6312 2.74985 11.4691C1.07583 12.4355 0.502265 14.5761 1.46876 16.2501C2.43526 17.9242 4.57583 18.4977 6.24985 17.5312C7.70089 16.6935 8.32511 14.9736 7.83623 13.4401L18.5151 7.27461C18.7778 7.12294 18.9233 6.82795 18.8837 6.5272C18.8441 6.22645 18.6272 5.97916 18.3342 5.90065L17.631 5.71223C17.0403 5.55395 16.4137 5.59708 15.8503 5.8348L9.95556 8.32179ZM2.7678 15.5001C2.21552 14.5436 2.54327 13.3204 3.49985 12.7681C4.45644 12.2158 5.67962 12.5436 6.2319 13.5001C6.78419 14.4567 6.45644 15.6799 5.49985 16.2322C4.54327 16.7845 3.32009 16.4567 2.7678 15.5001Z" fill="#0F172A"/>
    <path d="M12.5201 11.8903C12.1624 12.0968 12.1952 12.6235 12.5758 12.784L15.85 14.1654C16.4134 14.4031 17.04 14.4463 17.6307 14.288L18.3339 14.0996C18.6269 14.0211 18.8438 13.7738 18.8834 13.473C18.923 13.1723 18.7775 12.8773 18.5148 12.7256L15.0441 10.7218C14.8894 10.6325 14.6988 10.6325 14.5441 10.7218L12.5201 11.8903Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.46876 3.7501C0.502265 5.42412 1.07583 7.56469 2.74985 8.53119C4.20093 9.36897 6.00256 9.04958 7.08619 7.85934L7.9695 8.36931C7.99431 8.46193 8.11599 8.4862 8.17843 8.41344C8.32967 8.23719 8.49725 8.07501 8.67914 7.92923C8.96545 7.69975 8.979 7.22009 8.66123 7.03663L7.83619 6.56029C8.32514 5.02673 7.70093 3.30679 6.24985 2.46901C4.57583 1.50251 2.43526 2.07607 1.46876 3.7501ZM3.49985 7.23215C2.54327 6.67986 2.21552 5.45668 2.7678 4.5001C3.32009 3.54351 4.54327 3.21576 5.49985 3.76805C6.45644 4.32033 6.78419 5.54351 6.2319 6.5001C5.67962 7.45668 4.45644 7.78443 3.49985 7.23215Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.95556 8.32179C9.17367 8.65167 8.58789 9.32406 8.36825 10.1438L7.96977 11.6309L7.08628 12.141C6.00265 10.9507 4.20097 10.6312 2.74985 11.4691C1.07583 12.4355 0.502265 14.5761 1.46876 16.2501C2.43526 17.9242 4.57583 18.4977 6.24985 17.5312C7.70089 16.6935 8.32511 14.9736 7.83623 13.4401L18.5151 7.27461C18.7778 7.12294 18.9233 6.82795 18.8837 6.5272C18.8441 6.22645 18.6272 5.97916 18.3342 5.90065L17.631 5.71223C17.0403 5.55395 16.4137 5.59708 15.8503 5.8348L9.95556 8.32179ZM2.7678 15.5001C2.21552 14.5436 2.54327 13.3204 3.49985 12.7681C4.45644 12.2158 5.67962 12.5436 6.2319 13.5001C6.78419 14.4567 6.45644 15.6799 5.49985 16.2322C4.54327 16.7845 3.32009 16.4567 2.7678 15.5001Z\" fill=\"#0F172A\"/>\n<path d=\"M12.5201 11.8903C12.1624 12.0968 12.1952 12.6235 12.5758 12.784L15.85 14.1654C16.4134 14.4031 17.04 14.4463 17.6307 14.288L18.3339 14.0996C18.6269 14.0211 18.8438 13.7738 18.8834 13.473C18.923 13.1723 18.7775 12.8773 18.5148 12.7256L15.0441 10.7218C14.8894 10.6325 14.6988 10.6325 14.5441 10.7218L12.5201 11.8903Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/server-stack.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M4.46363 3.16188C4.79054 2.45358 5.49945 2 6.27955 2H13.7202C14.5003 2 15.2092 2.45358 15.5361 3.16188L16.69 5.66188C16.7567 5.80652 16.8047 5.9534 16.8352 6.1003C16.5675 6.03476 16.2878 6 15.9999 6H3.99989C3.712 6 3.43223 6.03476 3.16455 6.10031C3.19509 5.9534 3.24303 5.80653 3.30979 5.66188L4.46363 3.16188Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 9.5C2 8.39543 2.89543 7.5 4 7.5H16C17.1046 7.5 18 8.39543 18 9.5C18 10.6046 17.1046 11.5 16 11.5H4C2.89543 11.5 2 10.6046 2 9.5ZM15.2402 9.5C15.2402 9.08579 15.576 8.75 15.9902 8.75H16.0002C16.4144 8.75 16.7502 9.08579 16.7502 9.5V9.51C16.7502 9.92421 16.4144 10.26 16.0002 10.26H15.9902C15.576 10.26 15.2402 9.92421 15.2402 9.51V9.5ZM12.9902 8.75C12.576 8.75 12.2402 9.08579 12.2402 9.5V9.51C12.2402 9.92421 12.576 10.26 12.9902 10.26H13.0002C13.4144 10.26 13.7502 9.92421 13.7502 9.51V9.5C13.7502 9.08579 13.4144 8.75 13.0002 8.75H12.9902Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 15C2 13.8954 2.89543 13 4 13H16C17.1046 13 18 13.8954 18 15C18 16.1046 17.1046 17 16 17H4C2.89543 17 2 16.1046 2 15ZM15.2402 15C15.2402 14.5858 15.576 14.25 15.9902 14.25H16.0002C16.4144 14.25 16.7502 14.5858 16.7502 15V15.01C16.7502 15.4242 16.4144 15.76 16.0002 15.76H15.9902C15.576 15.76 15.2402 15.4242 15.2402 15.01V15ZM12.9902 14.25C12.576 14.25 12.2402 14.5858 12.2402 15V15.01C12.2402 15.4242 12.576 15.76 12.9902 15.76H13.0002C13.4144 15.76 13.7502 15.4242 13.7502 15.01V15C13.7502 14.5858 13.4144 14.25 13.0002 14.25H12.9902Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.46363 3.16188C4.79054 2.45358 5.49945 2 6.27955 2H13.7202C14.5003 2 15.2092 2.45358 15.5361 3.16188L16.69 5.66188C16.7567 5.80652 16.8047 5.9534 16.8352 6.1003C16.5675 6.03476 16.2878 6 15.9999 6H3.99989C3.712 6 3.43223 6.03476 3.16455 6.10031C3.19509 5.9534 3.24303 5.80653 3.30979 5.66188L4.46363 3.16188Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 9.5C2 8.39543 2.89543 7.5 4 7.5H16C17.1046 7.5 18 8.39543 18 9.5C18 10.6046 17.1046 11.5 16 11.5H4C2.89543 11.5 2 10.6046 2 9.5ZM15.2402 9.5C15.2402 9.08579 15.576 8.75 15.9902 8.75H16.0002C16.4144 8.75 16.7502 9.08579 16.7502 9.5V9.51C16.7502 9.92421 16.4144 10.26 16.0002 10.26H15.9902C15.576 10.26 15.2402 9.92421 15.2402 9.51V9.5ZM12.9902 8.75C12.576 8.75 12.2402 9.08579 12.2402 9.5V9.51C12.2402 9.92421 12.576 10.26 12.9902 10.26H13.0002C13.4144 10.26 13.7502 9.92421 13.7502 9.51V9.5C13.7502 9.08579 13.4144 8.75 13.0002 8.75H12.9902Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2 15C2 13.8954 2.89543 13 4 13H16C17.1046 13 18 13.8954 18 15C18 16.1046 17.1046 17 16 17H4C2.89543 17 2 16.1046 2 15ZM15.2402 15C15.2402 14.5858 15.576 14.25 15.9902 14.25H16.0002C16.4144 14.25 16.7502 14.5858 16.7502 15V15.01C16.7502 15.4242 16.4144 15.76 16.0002 15.76H15.9902C15.576 15.76 15.2402 15.4242 15.2402 15.01V15ZM12.9902 14.25C12.576 14.25 12.2402 14.5858 12.2402 15V15.01C12.2402 15.4242 12.576 15.76 12.9902 15.76H13.0002C13.4144 15.76 13.7502 15.4242 13.7502 15.01V15C13.7502 14.5858 13.4144 14.25 13.0002 14.25H12.9902Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/server.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M4.63196 3.53326C4.84778 2.63402 5.65196 2 6.57674 2H13.4231C14.3479 2 15.1521 2.63401 15.3679 3.53325L17.3441 11.7674C16.9303 11.5951 16.4762 11.5 15.9999 11.5H3.99994C3.52368 11.5 3.06963 11.5951 2.65576 11.7674L4.63196 3.53326Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4 13C2.89543 13 2 13.8954 2 15C2 16.1046 2.89543 17 4 17H16C17.1046 17 18 16.1046 18 15C18 13.8954 17.1046 13 16 13H4ZM15.2402 15C15.2402 14.5858 15.576 14.25 15.9902 14.25H16.0002C16.4144 14.25 16.7502 14.5858 16.7502 15V15.01C16.7502 15.4242 16.4144 15.76 16.0002 15.76H15.9902C15.576 15.76 15.2402 15.4242 15.2402 15.01V15ZM12.9902 14.25C12.576 14.25 12.2402 14.5858 12.2402 15V15.01C12.2402 15.4242 12.576 15.76 12.9902 15.76H13.0002C13.4144 15.76 13.7502 15.4242 13.7502 15.01V15C13.7502 14.5858 13.4144 14.25 13.0002 14.25H12.9902Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.63196 3.53326C4.84778 2.63402 5.65196 2 6.57674 2H13.4231C14.3479 2 15.1521 2.63401 15.3679 3.53325L17.3441 11.7674C16.9303 11.5951 16.4762 11.5 15.9999 11.5H3.99994C3.52368 11.5 3.06963 11.5951 2.65576 11.7674L4.63196 3.53326Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4 13C2.89543 13 2 13.8954 2 15C2 16.1046 2.89543 17 4 17H16C17.1046 17 18 16.1046 18 15C18 13.8954 17.1046 13 16 13H4ZM15.2402 15C15.2402 14.5858 15.576 14.25 15.9902 14.25H16.0002C16.4144 14.25 16.7502 14.5858 16.7502 15V15.01C16.7502 15.4242 16.4144 15.76 16.0002 15.76H15.9902C15.576 15.76 15.2402 15.4242 15.2402 15.01V15ZM12.9902 14.25C12.576 14.25 12.2402 14.5858 12.2402 15V15.01C12.2402 15.4242 12.576 15.76 12.9902 15.76H13.0002C13.4144 15.76 13.7502 15.4242 13.7502 15.01V15C13.7502 14.5858 13.4144 14.25 13.0002 14.25H12.9902Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/share.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M13 4.5C13 3.11929 14.1193 2 15.5 2C16.8807 2 18 3.11929 18 4.5C18 5.88071 16.8807 7 15.5 7C14.7943 7 14.1569 6.70762 13.7024 6.23739L6.96884 9.60415C6.98935 9.73308 7 9.8653 7 10C7 10.1347 6.98934 10.267 6.96882 10.3959L13.7023 13.7627C14.1569 13.2924 14.7943 13 15.5 13C16.8807 13 18 14.1193 18 15.5C18 16.8807 16.8807 18 15.5 18C14.1193 18 13 16.8807 13 15.5C13 15.3653 13.0107 15.2331 13.0312 15.1041L6.29764 11.7374C5.84307 12.2076 5.20568 12.5 4.5 12.5C3.11929 12.5 2 11.3807 2 10C2 8.61929 3.11929 7.5 4.5 7.5C5.20571 7.5 5.84312 7.79241 6.29769 8.26267L13.0312 4.89593C13.0107 4.76697 13 4.63473 13 4.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M13 4.5C13 3.11929 14.1193 2 15.5 2C16.8807 2 18 3.11929 18 4.5C18 5.88071 16.8807 7 15.5 7C14.7943 7 14.1569 6.70762 13.7024 6.23739L6.96884 9.60415C6.98935 9.73308 7 9.8653 7 10C7 10.1347 6.98934 10.267 6.96882 10.3959L13.7023 13.7627C14.1569 13.2924 14.7943 13 15.5 13C16.8807 13 18 14.1193 18 15.5C18 16.8807 16.8807 18 15.5 18C14.1193 18 13 16.8807 13 15.5C13 15.3653 13.0107 15.2331 13.0312 15.1041L6.29764 11.7374C5.84307 12.2076 5.20568 12.5 4.5 12.5C3.11929 12.5 2 11.3807 2 10C2 8.61929 3.11929 7.5 4.5 7.5C5.20571 7.5 5.84312 7.79241 6.29769 8.26267L13.0312 4.89593C13.0107 4.76697 13 4.63473 13 4.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/shield-check.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.66109 2.23657C9.85709 2.07381 10.1429 2.07381 10.3389 2.23657C12.2777 3.84642 14.7315 4.85747 17.4166 4.98601C17.658 4.99756 17.8641 5.17189 17.8957 5.41143C17.9645 5.93129 18 6.46164 18 7.00028C18 12.1627 14.7401 16.5637 10.1665 18.2572C10.0593 18.2969 9.94102 18.2969 9.83378 18.2572C5.26004 16.5638 2 12.1627 2 7.00016C2 6.46156 2.03548 5.93125 2.10424 5.41144C2.13593 5.17189 2.34202 4.99756 2.58337 4.98601C5.2685 4.85748 7.72231 3.84643 9.66109 2.23657ZM13.8566 8.19113C14.1002 7.85614 14.0261 7.38708 13.6911 7.14345C13.3561 6.89982 12.8871 6.97388 12.6434 7.30887L9.15969 12.099L7.28033 10.2197C6.98744 9.92678 6.51256 9.92678 6.21967 10.2197C5.92678 10.5126 5.92678 10.9874 6.21967 11.2803L8.71967 13.7803C8.87477 13.9354 9.08999 14.0149 9.30867 13.9977C9.52734 13.9805 9.72754 13.8685 9.85655 13.6911L13.8566 8.19113Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.66109 2.23657C9.85709 2.07381 10.1429 2.07381 10.3389 2.23657C12.2777 3.84642 14.7315 4.85747 17.4166 4.98601C17.658 4.99756 17.8641 5.17189 17.8957 5.41143C17.9645 5.93129 18 6.46164 18 7.00028C18 12.1627 14.7401 16.5637 10.1665 18.2572C10.0593 18.2969 9.94102 18.2969 9.83378 18.2572C5.26004 16.5638 2 12.1627 2 7.00016C2 6.46156 2.03548 5.93125 2.10424 5.41144C2.13593 5.17189 2.34202 4.99756 2.58337 4.98601C5.2685 4.85748 7.72231 3.84643 9.66109 2.23657ZM13.8566 8.19113C14.1002 7.85614 14.0261 7.38708 13.6911 7.14345C13.3561 6.89982 12.8871 6.97388 12.6434 7.30887L9.15969 12.099L7.28033 10.2197C6.98744 9.92678 6.51256 9.92678 6.21967 10.2197C5.92678 10.5126 5.92678 10.9874 6.21967 11.2803L8.71967 13.7803C8.87477 13.9354 9.08999 14.0149 9.30867 13.9977C9.52734 13.9805 9.72754 13.8685 9.85655 13.6911L13.8566 8.19113Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/shield-exclamation.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.3389 2.23681C10.1429 2.07406 9.85709 2.07406 9.66109 2.23681C7.72231 3.84667 5.2685 4.85772 2.58337 4.98625C2.34202 4.99781 2.13593 5.17213 2.10424 5.41168C2.03548 5.9315 2 6.46181 2 7.00041C2 12.163 5.26004 16.5641 9.83378 18.2574C9.94102 18.2971 10.0593 18.2971 10.1665 18.2574C14.7401 16.564 18 12.163 18 7.00053C18 6.46188 17.9645 5.93153 17.8957 5.41168C17.8641 5.17213 17.658 4.99781 17.4166 4.98625C14.7315 4.85772 12.2777 3.84667 10.3389 2.23681ZM10 6.00018C10.4142 6.00018 10.75 6.33597 10.75 6.75018V10.2502C10.75 10.6644 10.4142 11.0002 10 11.0002C9.58579 11.0002 9.25 10.6644 9.25 10.2502L9.25 6.75018C9.25 6.33597 9.58579 6.00018 10 6.00018ZM10 15.0002C10.5523 15.0002 11 14.5525 11 14.0002C11 13.4479 10.5523 13.0002 10 13.0002C9.44772 13.0002 9 13.4479 9 14.0002C9 14.5525 9.44772 15.0002 10 15.0002Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.3389 2.23681C10.1429 2.07406 9.85709 2.07406 9.66109 2.23681C7.72231 3.84667 5.2685 4.85772 2.58337 4.98625C2.34202 4.99781 2.13593 5.17213 2.10424 5.41168C2.03548 5.9315 2 6.46181 2 7.00041C2 12.163 5.26004 16.5641 9.83378 18.2574C9.94102 18.2971 10.0593 18.2971 10.1665 18.2574C14.7401 16.564 18 12.163 18 7.00053C18 6.46188 17.9645 5.93153 17.8957 5.41168C17.8641 5.17213 17.658 4.99781 17.4166 4.98625C14.7315 4.85772 12.2777 3.84667 10.3389 2.23681ZM10 6.00018C10.4142 6.00018 10.75 6.33597 10.75 6.75018V10.2502C10.75 10.6644 10.4142 11.0002 10 11.0002C9.58579 11.0002 9.25 10.6644 9.25 10.2502L9.25 6.75018C9.25 6.33597 9.58579 6.00018 10 6.00018ZM10 15.0002C10.5523 15.0002 11 14.5525 11 14.0002C11 13.4479 10.5523 13.0002 10 13.0002C9.44772 13.0002 9 13.4479 9 14.0002C9 14.5525 9.44772 15.0002 10 15.0002Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/shopping-bag.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6 5V6H4.66704C3.7593 6 3.00225 6.69407 2.92362 7.5984L2.09753 17.0984C2.00862 18.1209 2.81463 19 3.84095 19H16.1595C17.1858 19 17.9918 18.1209 17.9029 17.0984L17.0768 7.5984C16.9982 6.69407 16.2411 6 15.3334 6H14V5C14 2.79086 12.2091 1 10 1C7.79086 1 6 2.79086 6 5ZM10 2.5C8.61929 2.5 7.5 3.61929 7.5 5V6H12.5V5C12.5 3.61929 11.3807 2.5 10 2.5ZM7.5 10C7.5 11.3807 8.61929 12.5 10 12.5C11.3807 12.5 12.5 11.3807 12.5 10V8.75C12.5 8.33579 12.8358 8 13.25 8C13.6642 8 14 8.33579 14 8.75V10C14 12.2091 12.2091 14 10 14C7.79086 14 6 12.2091 6 10V8.75C6 8.33579 6.33579 8 6.75 8C7.16421 8 7.5 8.33579 7.5 8.75V10Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6 5V6H4.66704C3.7593 6 3.00225 6.69407 2.92362 7.5984L2.09753 17.0984C2.00862 18.1209 2.81463 19 3.84095 19H16.1595C17.1858 19 17.9918 18.1209 17.9029 17.0984L17.0768 7.5984C16.9982 6.69407 16.2411 6 15.3334 6H14V5C14 2.79086 12.2091 1 10 1C7.79086 1 6 2.79086 6 5ZM10 2.5C8.61929 2.5 7.5 3.61929 7.5 5V6H12.5V5C12.5 3.61929 11.3807 2.5 10 2.5ZM7.5 10C7.5 11.3807 8.61929 12.5 10 12.5C11.3807 12.5 12.5 11.3807 12.5 10V8.75C12.5 8.33579 12.8358 8 13.25 8C13.6642 8 14 8.33579 14 8.75V10C14 12.2091 12.2091 14 10 14C7.79086 14 6 12.2091 6 10V8.75C6 8.33579 6.33579 8 6.75 8C7.16421 8 7.5 8.33579 7.5 8.75V10Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/shopping-cart.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M1 1.75C1 1.33579 1.33579 1 1.75 1H3.37846C4.25256 1 4.99261 1.64498 5.11205 2.51088L5.17955 3.00024C9.75911 3.01263 14.2281 3.49872 18.5398 4.41236C18.9395 4.49706 19.1979 4.88613 19.1209 5.2874C18.7145 7.40548 18.1717 9.47515 17.502 11.4869C17.4 11.7933 17.1134 12 16.7904 12H6C5.88567 12 5.77351 12.0076 5.66393 12.0223C4.78545 12.14 4.05092 12.7153 3.70796 13.5H17.25C17.6642 13.5 18 13.8358 18 14.25C18 14.6642 17.6642 15 17.25 15H2.75948C2.55068 15 2.35133 14.913 2.2094 14.7598C2.06747 14.6067 1.9958 14.4013 2.01164 14.1931C2.13566 12.5628 3.23526 11.2069 4.72829 10.7066L3.62612 2.71584C3.60906 2.59214 3.50333 2.5 3.37846 2.5H1.75C1.33579 2.5 1 2.16421 1 1.75Z" fill="#0F172A"/>
    <path d="M6 17.5C6 18.3284 5.32843 19 4.5 19C3.67157 19 3 18.3284 3 17.5C3 16.6716 3.67157 16 4.5 16C5.32843 16 6 16.6716 6 17.5Z" fill="#0F172A"/>
    <path d="M15.5 19C16.3284 19 17 18.3284 17 17.5C17 16.6716 16.3284 16 15.5 16C14.6716 16 14 16.6716 14 17.5C14 18.3284 14.6716 19 15.5 19Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M1 1.75C1 1.33579 1.33579 1 1.75 1H3.37846C4.25256 1 4.99261 1.64498 5.11205 2.51088L5.17955 3.00024C9.75911 3.01263 14.2281 3.49872 18.5398 4.41236C18.9395 4.49706 19.1979 4.88613 19.1209 5.2874C18.7145 7.40548 18.1717 9.47515 17.502 11.4869C17.4 11.7933 17.1134 12 16.7904 12H6C5.88567 12 5.77351 12.0076 5.66393 12.0223C4.78545 12.14 4.05092 12.7153 3.70796 13.5H17.25C17.6642 13.5 18 13.8358 18 14.25C18 14.6642 17.6642 15 17.25 15H2.75948C2.55068 15 2.35133 14.913 2.2094 14.7598C2.06747 14.6067 1.9958 14.4013 2.01164 14.1931C2.13566 12.5628 3.23526 11.2069 4.72829 10.7066L3.62612 2.71584C3.60906 2.59214 3.50333 2.5 3.37846 2.5H1.75C1.33579 2.5 1 2.16421 1 1.75Z\" fill=\"#0F172A\"/>\n<path d=\"M6 17.5C6 18.3284 5.32843 19 4.5 19C3.67157 19 3 18.3284 3 17.5C3 16.6716 3.67157 16 4.5 16C5.32843 16 6 16.6716 6 17.5Z\" fill=\"#0F172A\"/>\n<path d=\"M15.5 19C16.3284 19 17 18.3284 17 17.5C17 16.6716 16.3284 16 15.5 16C14.6716 16 14 16.6716 14 17.5C14 18.3284 14.6716 19 15.5 19Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/signal-slash.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M2.21967 2.21967C2.51256 1.92678 2.98744 1.92678 3.28033 2.21967L10.0626 9.00193C10.565 9.03295 10.967 9.43498 10.9981 9.93741L17.7803 16.7197C18.0732 17.0126 18.0732 17.4874 17.7803 17.7803C17.4874 18.0732 17.0126 18.0732 16.7197 17.7803L9.93741 10.9981C9.43498 10.967 9.03295 10.565 9.00193 10.0626L2.21967 3.28033C1.92678 2.98744 1.92678 2.51256 2.21967 2.21967Z" fill="#0F172A"/>
    <path d="M3.63604 16.364C0.670686 13.3986 0.207189 8.87882 2.24555 5.42753L3.3485 6.53048C1.87267 9.35787 2.32207 12.9287 4.6967 15.3033C4.98959 15.5962 4.98959 16.0711 4.6967 16.364C4.40381 16.6569 3.92893 16.6569 3.63604 16.364Z" fill="#0F172A"/>
    <path d="M6.46447 13.5356C5.08411 12.1552 4.67956 10.1685 5.25082 8.43281L6.51322 9.6952C6.4268 10.6896 6.76411 11.7139 7.52513 12.4749C7.81802 12.7678 7.81802 13.2427 7.52513 13.5356C7.23223 13.8284 6.75736 13.8284 6.46447 13.5356Z" fill="#0F172A"/>
    <path d="M16.364 3.63605C19.3293 6.6014 19.7928 11.1212 17.7545 14.5725L16.6515 13.4695C18.1273 10.6421 17.6779 7.07134 15.3033 4.69671C15.0104 4.40382 15.0104 3.92895 15.3033 3.63605C15.5962 3.34316 16.0711 3.34316 16.364 3.63605Z" fill="#0F172A"/>
    <path d="M13.5355 6.46449C14.9159 7.84484 15.3204 9.83147 14.7492 11.5672L13.4868 10.3048C13.5732 9.31043 13.2359 8.28616 12.4749 7.52515C12.182 7.23225 12.182 6.75738 12.4749 6.46449C12.7678 6.17159 13.2426 6.17159 13.5355 6.46449Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M2.21967 2.21967C2.51256 1.92678 2.98744 1.92678 3.28033 2.21967L10.0626 9.00193C10.565 9.03295 10.967 9.43498 10.9981 9.93741L17.7803 16.7197C18.0732 17.0126 18.0732 17.4874 17.7803 17.7803C17.4874 18.0732 17.0126 18.0732 16.7197 17.7803L9.93741 10.9981C9.43498 10.967 9.03295 10.565 9.00193 10.0626L2.21967 3.28033C1.92678 2.98744 1.92678 2.51256 2.21967 2.21967Z\" fill=\"#0F172A\"/>\n<path d=\"M3.63604 16.364C0.670686 13.3986 0.207189 8.87882 2.24555 5.42753L3.3485 6.53048C1.87267 9.35787 2.32207 12.9287 4.6967 15.3033C4.98959 15.5962 4.98959 16.0711 4.6967 16.364C4.40381 16.6569 3.92893 16.6569 3.63604 16.364Z\" fill=\"#0F172A\"/>\n<path d=\"M6.46447 13.5356C5.08411 12.1552 4.67956 10.1685 5.25082 8.43281L6.51322 9.6952C6.4268 10.6896 6.76411 11.7139 7.52513 12.4749C7.81802 12.7678 7.81802 13.2427 7.52513 13.5356C7.23223 13.8284 6.75736 13.8284 6.46447 13.5356Z\" fill=\"#0F172A\"/>\n<path d=\"M16.364 3.63605C19.3293 6.6014 19.7928 11.1212 17.7545 14.5725L16.6515 13.4695C18.1273 10.6421 17.6779 7.07134 15.3033 4.69671C15.0104 4.40382 15.0104 3.92895 15.3033 3.63605C15.5962 3.34316 16.0711 3.34316 16.364 3.63605Z\" fill=\"#0F172A\"/>\n<path d=\"M13.5355 6.46449C14.9159 7.84484 15.3204 9.83147 14.7492 11.5672L13.4868 10.3048C13.5732 9.31043 13.2359 8.28616 12.4749 7.52515C12.182 7.23225 12.182 6.75738 12.4749 6.46449C12.7678 6.17159 13.2426 6.17159 13.5355 6.46449Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/signal.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M16.364 3.63617C16.0711 3.34328 15.5962 3.34328 15.3033 3.63617C15.0104 3.92907 15.0104 4.40394 15.3033 4.69683C18.2322 7.62577 18.2322 12.3745 15.3033 15.3034C15.0104 15.5963 15.0104 16.0712 15.3033 16.3641C15.5962 16.657 16.0711 16.657 16.364 16.3641C19.8787 12.8494 19.8787 7.15089 16.364 3.63617Z" fill="#0F172A"/>
    <path d="M4.6967 4.69683C4.98959 4.40394 4.98959 3.92907 4.6967 3.63617C4.40381 3.34328 3.92893 3.34328 3.63604 3.63617C0.12132 7.15089 0.12132 12.8494 3.63604 16.3641C3.92893 16.657 4.40381 16.657 4.6967 16.3641C4.98959 16.0712 4.98959 15.5963 4.6967 15.3034C1.76777 12.3745 1.76777 7.62577 4.6967 4.69683Z" fill="#0F172A"/>
    <path d="M12.4749 6.46461C12.7678 6.17171 13.2426 6.17171 13.5355 6.46461C15.4882 8.41723 15.4882 11.5831 13.5355 13.5357C13.2426 13.8286 12.7678 13.8286 12.4749 13.5357C12.182 13.2428 12.182 12.7679 12.4749 12.475C13.8417 11.1082 13.8417 8.8921 12.4749 7.52527C12.182 7.23237 12.182 6.7575 12.4749 6.46461Z" fill="#0F172A"/>
    <path d="M7.52513 6.46461C7.81802 6.7575 7.81802 7.23237 7.52513 7.52527C6.15829 8.8921 6.15829 11.1082 7.52513 12.475C7.81802 12.7679 7.81802 13.2428 7.52513 13.5357C7.23223 13.8286 6.75736 13.8286 6.46447 13.5357C4.51184 11.5831 4.51184 8.41723 6.46447 6.46461C6.75736 6.17171 7.23223 6.17171 7.52513 6.46461Z" fill="#0F172A"/>
    <path d="M11 10.0001C11 10.5524 10.5523 11.0001 10 11.0001C9.44772 11.0001 9 10.5524 9 10.0001C9 9.44783 9.44772 9.00012 10 9.00012C10.5523 9.00012 11 9.44783 11 10.0001Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M16.364 3.63617C16.0711 3.34328 15.5962 3.34328 15.3033 3.63617C15.0104 3.92907 15.0104 4.40394 15.3033 4.69683C18.2322 7.62577 18.2322 12.3745 15.3033 15.3034C15.0104 15.5963 15.0104 16.0712 15.3033 16.3641C15.5962 16.657 16.0711 16.657 16.364 16.3641C19.8787 12.8494 19.8787 7.15089 16.364 3.63617Z\" fill=\"#0F172A\"/>\n<path d=\"M4.6967 4.69683C4.98959 4.40394 4.98959 3.92907 4.6967 3.63617C4.40381 3.34328 3.92893 3.34328 3.63604 3.63617C0.12132 7.15089 0.12132 12.8494 3.63604 16.3641C3.92893 16.657 4.40381 16.657 4.6967 16.3641C4.98959 16.0712 4.98959 15.5963 4.6967 15.3034C1.76777 12.3745 1.76777 7.62577 4.6967 4.69683Z\" fill=\"#0F172A\"/>\n<path d=\"M12.4749 6.46461C12.7678 6.17171 13.2426 6.17171 13.5355 6.46461C15.4882 8.41723 15.4882 11.5831 13.5355 13.5357C13.2426 13.8286 12.7678 13.8286 12.4749 13.5357C12.182 13.2428 12.182 12.7679 12.4749 12.475C13.8417 11.1082 13.8417 8.8921 12.4749 7.52527C12.182 7.23237 12.182 6.7575 12.4749 6.46461Z\" fill=\"#0F172A\"/>\n<path d=\"M7.52513 6.46461C7.81802 6.7575 7.81802 7.23237 7.52513 7.52527C6.15829 8.8921 6.15829 11.1082 7.52513 12.475C7.81802 12.7679 7.81802 13.2428 7.52513 13.5357C7.23223 13.8286 6.75736 13.8286 6.46447 13.5357C4.51184 11.5831 4.51184 8.41723 6.46447 6.46461C6.75736 6.17171 7.23223 6.17171 7.52513 6.46461Z\" fill=\"#0F172A\"/>\n<path d=\"M11 10.0001C11 10.5524 10.5523 11.0001 10 11.0001C9.44772 11.0001 9 10.5524 9 10.0001C9 9.44783 9.44772 9.00012 10 9.00012C10.5523 9.00012 11 9.44783 11 10.0001Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/sparkles.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M15.9806 1.80388C15.8871 1.33646 15.4767 1 15 1C14.5233 1 14.1129 1.33646 14.0194 1.80388L13.7809 2.99644C13.7017 3.3923 13.3923 3.70174 12.9964 3.78091L11.8039 4.01942C11.3365 4.1129 11 4.52332 11 5C11 5.47668 11.3365 5.8871 11.8039 5.98058L12.9964 6.21909C13.3923 6.29826 13.7017 6.6077 13.7809 7.00356L14.0194 8.19612C14.1129 8.66354 14.5233 9 15 9C15.4767 9 15.8871 8.66354 15.9806 8.19612L16.2191 7.00356C16.2983 6.6077 16.6077 6.29826 17.0036 6.21909L18.1961 5.98058C18.6635 5.8871 19 5.47668 19 5C19 4.52332 18.6635 4.1129 18.1961 4.01942L17.0036 3.78091C16.6077 3.70174 16.2983 3.3923 16.2191 2.99644L15.9806 1.80388Z" fill="#0F172A"/>
    <path d="M6.94868 5.68377C6.81257 5.27543 6.43043 5 6 5C5.56957 5 5.18743 5.27543 5.05132 5.68377L4.36754 7.73509C4.26801 8.03369 4.03369 8.26801 3.73509 8.36754L1.68377 9.05132C1.27543 9.18743 1 9.56957 1 10C1 10.4304 1.27543 10.8126 1.68377 10.9487L3.73509 11.6325C4.03369 11.732 4.26801 11.9663 4.36754 12.2649L5.05132 14.3162C5.18743 14.7246 5.56957 15 6 15C6.43043 15 6.81257 14.7246 6.94868 14.3162L7.63246 12.2649C7.73199 11.9663 7.96631 11.732 8.26491 11.6325L10.3162 10.9487C10.7246 10.8126 11 10.4304 11 10C11 9.56957 10.7246 9.18743 10.3162 9.05132L8.26491 8.36754C7.96631 8.26801 7.73199 8.03369 7.63246 7.73509L6.94868 5.68377Z" fill="#0F172A"/>
    <path d="M13.9487 13.6838C13.8126 13.2754 13.4304 13 13 13C12.5696 13 12.1874 13.2754 12.0513 13.6838L11.8675 14.2351C11.768 14.5337 11.5337 14.768 11.2351 14.8675L10.6838 15.0513C10.2754 15.1874 10 15.5696 10 16C10 16.4304 10.2754 16.8126 10.6838 16.9487L11.2351 17.1325C11.5337 17.232 11.768 17.4663 11.8675 17.7649L12.0513 18.3162C12.1874 18.7246 12.5696 19 13 19C13.4304 19 13.8126 18.7246 13.9487 18.3162L14.1325 17.7649C14.232 17.4663 14.4663 17.232 14.7649 17.1325L15.3162 16.9487C15.7246 16.8126 16 16.4304 16 16C16 15.5696 15.7246 15.1874 15.3162 15.0513L14.7649 14.8675C14.4663 14.768 14.232 14.5337 14.1325 14.2351L13.9487 13.6838Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15.9806 1.80388C15.8871 1.33646 15.4767 1 15 1C14.5233 1 14.1129 1.33646 14.0194 1.80388L13.7809 2.99644C13.7017 3.3923 13.3923 3.70174 12.9964 3.78091L11.8039 4.01942C11.3365 4.1129 11 4.52332 11 5C11 5.47668 11.3365 5.8871 11.8039 5.98058L12.9964 6.21909C13.3923 6.29826 13.7017 6.6077 13.7809 7.00356L14.0194 8.19612C14.1129 8.66354 14.5233 9 15 9C15.4767 9 15.8871 8.66354 15.9806 8.19612L16.2191 7.00356C16.2983 6.6077 16.6077 6.29826 17.0036 6.21909L18.1961 5.98058C18.6635 5.8871 19 5.47668 19 5C19 4.52332 18.6635 4.1129 18.1961 4.01942L17.0036 3.78091C16.6077 3.70174 16.2983 3.3923 16.2191 2.99644L15.9806 1.80388Z\" fill=\"#0F172A\"/>\n<path d=\"M6.94868 5.68377C6.81257 5.27543 6.43043 5 6 5C5.56957 5 5.18743 5.27543 5.05132 5.68377L4.36754 7.73509C4.26801 8.03369 4.03369 8.26801 3.73509 8.36754L1.68377 9.05132C1.27543 9.18743 1 9.56957 1 10C1 10.4304 1.27543 10.8126 1.68377 10.9487L3.73509 11.6325C4.03369 11.732 4.26801 11.9663 4.36754 12.2649L5.05132 14.3162C5.18743 14.7246 5.56957 15 6 15C6.43043 15 6.81257 14.7246 6.94868 14.3162L7.63246 12.2649C7.73199 11.9663 7.96631 11.732 8.26491 11.6325L10.3162 10.9487C10.7246 10.8126 11 10.4304 11 10C11 9.56957 10.7246 9.18743 10.3162 9.05132L8.26491 8.36754C7.96631 8.26801 7.73199 8.03369 7.63246 7.73509L6.94868 5.68377Z\" fill=\"#0F172A\"/>\n<path d=\"M13.9487 13.6838C13.8126 13.2754 13.4304 13 13 13C12.5696 13 12.1874 13.2754 12.0513 13.6838L11.8675 14.2351C11.768 14.5337 11.5337 14.768 11.2351 14.8675L10.6838 15.0513C10.2754 15.1874 10 15.5696 10 16C10 16.4304 10.2754 16.8126 10.6838 16.9487L11.2351 17.1325C11.5337 17.232 11.768 17.4663 11.8675 17.7649L12.0513 18.3162C12.1874 18.7246 12.5696 19 13 19C13.4304 19 13.8126 18.7246 13.9487 18.3162L14.1325 17.7649C14.232 17.4663 14.4663 17.232 14.7649 17.1325L15.3162 16.9487C15.7246 16.8126 16 16.4304 16 16C16 15.5696 15.7246 15.1874 15.3162 15.0513L14.7649 14.8675C14.4663 14.768 14.232 14.5337 14.1325 14.2351L13.9487 13.6838Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/speaker-wave.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 3.75002C10 3.4508 9.82215 3.18021 9.54747 3.06153C9.2728 2.94286 8.95387 2.99879 8.73598 3.20387L4.70257 7.00002H3.16724C2.85725 7.00002 2.5792 7.19074 2.46756 7.47993C2.16534 8.26287 2 9.11302 2 10C2 10.887 2.16534 11.7372 2.46756 12.5201C2.5792 12.8093 2.85725 13 3.16724 13H4.70257L8.73598 16.7962C8.95387 17.0012 9.2728 17.0572 9.54747 16.9385C9.82215 16.8198 10 16.5492 10 16.25V3.75002Z" fill="#0F172A"/>
    <path d="M15.9498 5.05029C15.6569 4.7574 15.182 4.7574 14.8891 5.05029C14.5962 5.34318 14.5962 5.81806 14.8891 6.11095C17.037 8.25883 17.037 11.7412 14.8891 13.8891C14.5962 14.182 14.5962 14.6569 14.8891 14.9498C15.182 15.2427 15.6569 15.2427 15.9498 14.9498C18.6834 12.2161 18.6834 7.78396 15.9498 5.05029Z" fill="#0F172A"/>
    <path d="M13.8287 7.1716C13.5358 6.8787 13.0609 6.8787 12.768 7.1716C12.4751 7.46449 12.4751 7.93936 12.768 8.23226C13.7443 9.20857 13.7443 10.7915 12.768 11.7678C12.4751 12.0607 12.4751 12.5356 12.768 12.8285C13.0609 13.1213 13.5358 13.1213 13.8287 12.8285C15.3908 11.2664 15.3908 8.73369 13.8287 7.1716Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10 3.75002C10 3.4508 9.82215 3.18021 9.54747 3.06153C9.2728 2.94286 8.95387 2.99879 8.73598 3.20387L4.70257 7.00002H3.16724C2.85725 7.00002 2.5792 7.19074 2.46756 7.47993C2.16534 8.26287 2 9.11302 2 10C2 10.887 2.16534 11.7372 2.46756 12.5201C2.5792 12.8093 2.85725 13 3.16724 13H4.70257L8.73598 16.7962C8.95387 17.0012 9.2728 17.0572 9.54747 16.9385C9.82215 16.8198 10 16.5492 10 16.25V3.75002Z\" fill=\"#0F172A\"/>\n<path d=\"M15.9498 5.05029C15.6569 4.7574 15.182 4.7574 14.8891 5.05029C14.5962 5.34318 14.5962 5.81806 14.8891 6.11095C17.037 8.25883 17.037 11.7412 14.8891 13.8891C14.5962 14.182 14.5962 14.6569 14.8891 14.9498C15.182 15.2427 15.6569 15.2427 15.9498 14.9498C18.6834 12.2161 18.6834 7.78396 15.9498 5.05029Z\" fill=\"#0F172A\"/>\n<path d=\"M13.8287 7.1716C13.5358 6.8787 13.0609 6.8787 12.768 7.1716C12.4751 7.46449 12.4751 7.93936 12.768 8.23226C13.7443 9.20857 13.7443 10.7915 12.768 11.7678C12.4751 12.0607 12.4751 12.5356 12.768 12.8285C13.0609 13.1213 13.5358 13.1213 13.8287 12.8285C15.3908 11.2664 15.3908 8.73369 13.8287 7.1716Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/speaker-x-mark.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M9.54747 3.06153C9.82215 3.18021 10 3.4508 10 3.75002V16.25C10 16.5492 9.82215 16.8198 9.54747 16.9385C9.2728 17.0572 8.95387 17.0012 8.73598 16.7962L4.70257 13H3.16724C2.85725 13 2.5792 12.8093 2.46756 12.5201C2.16534 11.7372 2 10.887 2 10C2 9.11302 2.16534 8.26287 2.46756 7.47993C2.5792 7.19074 2.85725 7.00002 3.16724 7.00002H4.70257L8.73598 3.20387C8.95387 2.99879 9.2728 2.94286 9.54747 3.06153Z" fill="#0F172A"/>
    <path d="M13.2803 7.2197C12.9874 6.92681 12.5126 6.92681 12.2197 7.2197C11.9268 7.51259 11.9268 7.98747 12.2197 8.28036L13.9393 10L12.2197 11.7197C11.9268 12.0126 11.9268 12.4875 12.2197 12.7804C12.5126 13.0733 12.9874 13.0733 13.2803 12.7804L15 11.0607L16.7197 12.7804C17.0126 13.0733 17.4874 13.0733 17.7803 12.7804C18.0732 12.4875 18.0732 12.0126 17.7803 11.7197L16.0607 10L17.7803 8.28036C18.0732 7.98747 18.0732 7.51259 17.7803 7.2197C17.4874 6.92681 17.0126 6.92681 16.7197 7.2197L15 8.93937L13.2803 7.2197Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M9.54747 3.06153C9.82215 3.18021 10 3.4508 10 3.75002V16.25C10 16.5492 9.82215 16.8198 9.54747 16.9385C9.2728 17.0572 8.95387 17.0012 8.73598 16.7962L4.70257 13H3.16724C2.85725 13 2.5792 12.8093 2.46756 12.5201C2.16534 11.7372 2 10.887 2 10C2 9.11302 2.16534 8.26287 2.46756 7.47993C2.5792 7.19074 2.85725 7.00002 3.16724 7.00002H4.70257L8.73598 3.20387C8.95387 2.99879 9.2728 2.94286 9.54747 3.06153Z\" fill=\"#0F172A\"/>\n<path d=\"M13.2803 7.2197C12.9874 6.92681 12.5126 6.92681 12.2197 7.2197C11.9268 7.51259 11.9268 7.98747 12.2197 8.28036L13.9393 10L12.2197 11.7197C11.9268 12.0126 11.9268 12.4875 12.2197 12.7804C12.5126 13.0733 12.9874 13.0733 13.2803 12.7804L15 11.0607L16.7197 12.7804C17.0126 13.0733 17.4874 13.0733 17.7803 12.7804C18.0732 12.4875 18.0732 12.0126 17.7803 11.7197L16.0607 10L17.7803 8.28036C18.0732 7.98747 18.0732 7.51259 17.7803 7.2197C17.4874 6.92681 17.0126 6.92681 16.7197 7.2197L15 8.93937L13.2803 7.2197Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/square-2-stack.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M2 4.25C2 3.00736 3.00736 2 4.25 2H10.75C11.9926 2 13 3.00736 13 4.25V5.5H9.25C7.17893 5.5 5.5 7.17893 5.5 9.25V13H4.25C3.00736 13 2 11.9926 2 10.75V4.25Z" fill="#0F172A"/>
    <path d="M9.25 7C8.00736 7 7 8.00736 7 9.25V15.75C7 16.9926 8.00736 18 9.25 18H15.75C16.9926 18 18 16.9926 18 15.75V9.25C18 8.00736 16.9926 7 15.75 7H9.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M2 4.25C2 3.00736 3.00736 2 4.25 2H10.75C11.9926 2 13 3.00736 13 4.25V5.5H9.25C7.17893 5.5 5.5 7.17893 5.5 9.25V13H4.25C3.00736 13 2 11.9926 2 10.75V4.25Z\" fill=\"#0F172A\"/>\n<path d=\"M9.25 7C8.00736 7 7 8.00736 7 9.25V15.75C7 16.9926 8.00736 18 9.25 18H15.75C16.9926 18 18 16.9926 18 15.75V9.25C18 8.00736 16.9926 7 15.75 7H9.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/squares-2x2.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 2C3.00736 2 2 3.00736 2 4.25V6.75C2 7.99264 3.00736 9 4.25 9H6.75C7.99264 9 9 7.99264 9 6.75V4.25C9 3.00736 7.99264 2 6.75 2H4.25ZM4.25 11C3.00736 11 2 12.0074 2 13.25V15.75C2 16.9926 3.00736 18 4.25 18H6.75C7.99264 18 9 16.9926 9 15.75V13.25C9 12.0074 7.99264 11 6.75 11H4.25ZM13.25 2C12.0074 2 11 3.00736 11 4.25V6.75C11 7.99264 12.0074 9 13.25 9H15.75C16.9926 9 18 7.99264 18 6.75V4.25C18 3.00736 16.9926 2 15.75 2H13.25ZM13.25 11C12.0074 11 11 12.0074 11 13.25V15.75C11 16.9926 12.0074 18 13.25 18H15.75C16.9926 18 18 16.9926 18 15.75V13.25C18 12.0074 16.9926 11 15.75 11H13.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.25 2C3.00736 2 2 3.00736 2 4.25V6.75C2 7.99264 3.00736 9 4.25 9H6.75C7.99264 9 9 7.99264 9 6.75V4.25C9 3.00736 7.99264 2 6.75 2H4.25ZM4.25 11C3.00736 11 2 12.0074 2 13.25V15.75C2 16.9926 3.00736 18 4.25 18H6.75C7.99264 18 9 16.9926 9 15.75V13.25C9 12.0074 7.99264 11 6.75 11H4.25ZM13.25 2C12.0074 2 11 3.00736 11 4.25V6.75C11 7.99264 12.0074 9 13.25 9H15.75C16.9926 9 18 7.99264 18 6.75V4.25C18 3.00736 16.9926 2 15.75 2H13.25ZM13.25 11C12.0074 11 11 12.0074 11 13.25V15.75C11 16.9926 12.0074 18 13.25 18H15.75C16.9926 18 18 16.9926 18 15.75V13.25C18 12.0074 16.9926 11 15.75 11H13.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/squares-plus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M2 4.25C2 3.00736 3.00736 2 4.25 2H6.75C7.99264 2 9 3.00736 9 4.25V6.75C9 7.99264 7.99264 9 6.75 9H4.25C3.00736 9 2 7.99264 2 6.75V4.25Z" fill="#0F172A"/>
    <path d="M2 13.25C2 12.0074 3.00736 11 4.25 11H6.75C7.99264 11 9 12.0074 9 13.25V15.75C9 16.9926 7.99264 18 6.75 18H4.25C3.00736 18 2 16.9926 2 15.75V13.25Z" fill="#0F172A"/>
    <path d="M11 4.25C11 3.00736 12.0074 2 13.25 2H15.75C16.9926 2 18 3.00736 18 4.25V6.75C18 7.99264 16.9926 9 15.75 9H13.25C12.0074 9 11 7.99264 11 6.75V4.25Z" fill="#0F172A"/>
    <path d="M15.25 11.75C15.25 11.3358 14.9142 11 14.5 11C14.0858 11 13.75 11.3358 13.75 11.75V13.75H11.75C11.3358 13.75 11 14.0858 11 14.5C11 14.9142 11.3358 15.25 11.75 15.25H13.75V17.25C13.75 17.6642 14.0858 18 14.5 18C14.9142 18 15.25 17.6642 15.25 17.25V15.25H17.25C17.6642 15.25 18 14.9142 18 14.5C18 14.0858 17.6642 13.75 17.25 13.75H15.25V11.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M2 4.25C2 3.00736 3.00736 2 4.25 2H6.75C7.99264 2 9 3.00736 9 4.25V6.75C9 7.99264 7.99264 9 6.75 9H4.25C3.00736 9 2 7.99264 2 6.75V4.25Z\" fill=\"#0F172A\"/>\n<path d=\"M2 13.25C2 12.0074 3.00736 11 4.25 11H6.75C7.99264 11 9 12.0074 9 13.25V15.75C9 16.9926 7.99264 18 6.75 18H4.25C3.00736 18 2 16.9926 2 15.75V13.25Z\" fill=\"#0F172A\"/>\n<path d=\"M11 4.25C11 3.00736 12.0074 2 13.25 2H15.75C16.9926 2 18 3.00736 18 4.25V6.75C18 7.99264 16.9926 9 15.75 9H13.25C12.0074 9 11 7.99264 11 6.75V4.25Z\" fill=\"#0F172A\"/>\n<path d=\"M15.25 11.75C15.25 11.3358 14.9142 11 14.5 11C14.0858 11 13.75 11.3358 13.75 11.75V13.75H11.75C11.3358 13.75 11 14.0858 11 14.5C11 14.9142 11.3358 15.25 11.75 15.25H13.75V17.25C13.75 17.6642 14.0858 18 14.5 18C14.9142 18 15.25 17.6642 15.25 17.25V15.25H17.25C17.6642 15.25 18 14.9142 18 14.5C18 14.0858 17.6642 13.75 17.25 13.75H15.25V11.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/star.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.868 2.8837C10.5469 2.11168 9.45329 2.11168 9.13219 2.8837L7.3014 7.28547L2.54932 7.66644C1.71586 7.73326 1.37791 8.77337 2.01291 9.31732L5.63349 12.4187L4.52735 17.056C4.33334 17.8693 5.21812 18.5121 5.93167 18.0763L10.0001 15.5913L14.0686 18.0763C14.7821 18.5121 15.6669 17.8693 15.4729 17.056L14.3667 12.4187L17.9873 9.31732C18.6223 8.77337 18.2844 7.73326 17.4509 7.66644L12.6988 7.28547L10.868 2.8837Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.868 2.8837C10.5469 2.11168 9.45329 2.11168 9.13219 2.8837L7.3014 7.28547L2.54932 7.66644C1.71586 7.73326 1.37791 8.77337 2.01291 9.31732L5.63349 12.4187L4.52735 17.056C4.33334 17.8693 5.21812 18.5121 5.93167 18.0763L10.0001 15.5913L14.0686 18.0763C14.7821 18.5121 15.6669 17.8693 15.4729 17.056L14.3667 12.4187L17.9873 9.31732C18.6223 8.77337 18.2844 7.73326 17.4509 7.66644L12.6988 7.28547L10.868 2.8837Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/stop.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.25 3C4.00736 3 3 4.00736 3 5.25V14.75C3 15.9926 4.00736 17 5.25 17H14.75C15.9926 17 17 15.9926 17 14.75V5.25C17 4.00736 15.9926 3 14.75 3H5.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.25 3C4.00736 3 3 4.00736 3 5.25V14.75C3 15.9926 4.00736 17 5.25 17H14.75C15.9926 17 17 15.9926 17 14.75V5.25C17 4.00736 15.9926 3 14.75 3H5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/sun.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 2C10.4142 2 10.75 2.33579 10.75 2.75V4.25C10.75 4.66421 10.4142 5 10 5C9.58579 5 9.25 4.66421 9.25 4.25V2.75C9.25 2.33579 9.58579 2 10 2Z" fill="#0F172A"/>
    <path d="M10 15C10.4142 15 10.75 15.3358 10.75 15.75V17.25C10.75 17.6642 10.4142 18 10 18C9.58579 18 9.25 17.6642 9.25 17.25V15.75C9.25 15.3358 9.58579 15 10 15Z" fill="#0F172A"/>
    <path d="M10 7C8.34315 7 7 8.34315 7 10C7 11.6569 8.34315 13 10 13C11.6569 13 13 11.6569 13 10C13 8.34315 11.6569 7 10 7Z" fill="#0F172A"/>
    <path d="M15.6568 5.40386C15.9497 5.11096 15.9497 4.63609 15.6568 4.3432C15.3639 4.0503 14.889 4.0503 14.5961 4.3432L13.5355 5.40386C13.2426 5.69675 13.2426 6.17162 13.5355 6.46452C13.8284 6.75741 14.3032 6.75741 14.5961 6.46452L15.6568 5.40386Z" fill="#0F172A"/>
    <path d="M6.46441 14.5962C6.7573 14.3034 6.7573 13.8285 6.46441 13.5356C6.17151 13.2427 5.69664 13.2427 5.40375 13.5356L4.34309 14.5962C4.05019 14.8891 4.05019 15.364 4.34309 15.6569C4.63598 15.9498 5.11085 15.9498 5.40375 15.6569L6.46441 14.5962Z" fill="#0F172A"/>
    <path d="M18 10C18 10.4142 17.6642 10.75 17.25 10.75H15.75C15.3358 10.75 15 10.4142 15 10C15 9.58579 15.3358 9.25 15.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10Z" fill="#0F172A"/>
    <path d="M5 10C5 10.4142 4.66421 10.75 4.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10C2 9.58579 2.33579 9.25 2.75 9.25H4.25C4.66421 9.25 5 9.58579 5 10Z" fill="#0F172A"/>
    <path d="M14.596 15.6568C14.8889 15.9497 15.3638 15.9497 15.6567 15.6568C15.9496 15.3639 15.9496 14.889 15.6567 14.5961L14.596 13.5355C14.3031 13.2426 13.8283 13.2426 13.5354 13.5355C13.2425 13.8284 13.2425 14.3032 13.5354 14.5961L14.596 15.6568Z" fill="#0F172A"/>
    <path d="M5.40363 6.46441C5.69653 6.7573 6.1714 6.7573 6.46429 6.46441C6.75719 6.17151 6.75719 5.69664 6.46429 5.40375L5.40363 4.34309C5.11074 4.05019 4.63587 4.05019 4.34297 4.34309C4.05008 4.63598 4.05008 5.11085 4.34297 5.40375L5.40363 6.46441Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10 2C10.4142 2 10.75 2.33579 10.75 2.75V4.25C10.75 4.66421 10.4142 5 10 5C9.58579 5 9.25 4.66421 9.25 4.25V2.75C9.25 2.33579 9.58579 2 10 2Z\" fill=\"#0F172A\"/>\n<path d=\"M10 15C10.4142 15 10.75 15.3358 10.75 15.75V17.25C10.75 17.6642 10.4142 18 10 18C9.58579 18 9.25 17.6642 9.25 17.25V15.75C9.25 15.3358 9.58579 15 10 15Z\" fill=\"#0F172A\"/>\n<path d=\"M10 7C8.34315 7 7 8.34315 7 10C7 11.6569 8.34315 13 10 13C11.6569 13 13 11.6569 13 10C13 8.34315 11.6569 7 10 7Z\" fill=\"#0F172A\"/>\n<path d=\"M15.6568 5.40386C15.9497 5.11096 15.9497 4.63609 15.6568 4.3432C15.3639 4.0503 14.889 4.0503 14.5961 4.3432L13.5355 5.40386C13.2426 5.69675 13.2426 6.17162 13.5355 6.46452C13.8284 6.75741 14.3032 6.75741 14.5961 6.46452L15.6568 5.40386Z\" fill=\"#0F172A\"/>\n<path d=\"M6.46441 14.5962C6.7573 14.3034 6.7573 13.8285 6.46441 13.5356C6.17151 13.2427 5.69664 13.2427 5.40375 13.5356L4.34309 14.5962C4.05019 14.8891 4.05019 15.364 4.34309 15.6569C4.63598 15.9498 5.11085 15.9498 5.40375 15.6569L6.46441 14.5962Z\" fill=\"#0F172A\"/>\n<path d=\"M18 10C18 10.4142 17.6642 10.75 17.25 10.75H15.75C15.3358 10.75 15 10.4142 15 10C15 9.58579 15.3358 9.25 15.75 9.25H17.25C17.6642 9.25 18 9.58579 18 10Z\" fill=\"#0F172A\"/>\n<path d=\"M5 10C5 10.4142 4.66421 10.75 4.25 10.75H2.75C2.33579 10.75 2 10.4142 2 10C2 9.58579 2.33579 9.25 2.75 9.25H4.25C4.66421 9.25 5 9.58579 5 10Z\" fill=\"#0F172A\"/>\n<path d=\"M14.596 15.6568C14.8889 15.9497 15.3638 15.9497 15.6567 15.6568C15.9496 15.3639 15.9496 14.889 15.6567 14.5961L14.596 13.5355C14.3031 13.2426 13.8283 13.2426 13.5354 13.5355C13.2425 13.8284 13.2425 14.3032 13.5354 14.5961L14.596 15.6568Z\" fill=\"#0F172A\"/>\n<path d=\"M5.40363 6.46441C5.69653 6.7573 6.1714 6.7573 6.46429 6.46441C6.75719 6.17151 6.75719 5.69664 6.46429 5.40375L5.40363 4.34309C5.11074 4.05019 4.63587 4.05019 4.34297 4.34309C4.05008 4.63598 4.05008 5.11085 4.34297 5.40375L5.40363 6.46441Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/swatch.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.5 2C2.67157 2 2 2.67157 2 3.5V15C2 16.6569 3.34315 18 5 18C6.65685 18 8 16.6569 8 15V3.5C8 2.67157 7.32843 2 6.5 2H3.5ZM15.253 8.98957L9.5 14.7426V6.25731L11.0104 4.74693C11.5962 4.16114 12.5459 4.16114 13.1317 4.74693L15.253 6.86825C15.8388 7.45403 15.8388 8.40378 15.253 8.98957ZM8.36395 18H16.5C17.3284 18 18 17.3284 18 16.5V13.5C18 12.6716 17.3284 12 16.5 12H14.364L8.36395 18ZM5 16C5.55228 16 6 15.5523 6 15C6 14.4477 5.55228 14 5 14C4.44772 14 4 14.4477 4 15C4 15.5523 4.44772 16 5 16Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.5 2C2.67157 2 2 2.67157 2 3.5V15C2 16.6569 3.34315 18 5 18C6.65685 18 8 16.6569 8 15V3.5C8 2.67157 7.32843 2 6.5 2H3.5ZM15.253 8.98957L9.5 14.7426V6.25731L11.0104 4.74693C11.5962 4.16114 12.5459 4.16114 13.1317 4.74693L15.253 6.86825C15.8388 7.45403 15.8388 8.40378 15.253 8.98957ZM8.36395 18H16.5C17.3284 18 18 17.3284 18 16.5V13.5C18 12.6716 17.3284 12 16.5 12H14.364L8.36395 18ZM5 16C5.55228 16 6 15.5523 6 15C6 14.4477 5.55228 14 5 14C4.44772 14 4 14.4477 4 15C4 15.5523 4.44772 16 5 16Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/table-cells.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1 4.25C1 3.00736 2.00736 2 3.25 2H16.75C17.9926 2 19 3.00736 19 4.25V15.76C19 17.0027 17.9926 18.01 16.75 18.01H11.5C11.4279 18.01 11.3567 18.0066 11.2864 18H8.71363C8.64331 18.0066 8.57205 18.01 8.5 18.01H3.25C2.00736 18.01 1 17.0027 1 15.76V4.25ZM9.25 15.76V15.135C9.25 14.7208 8.91421 14.385 8.5 14.385H3.25C2.83579 14.385 2.5 14.7208 2.5 15.135V15.75C2.5 16.1642 2.83579 16.5 3.25 16.5H8.62283C8.97861 16.4414 9.25 16.1324 9.25 15.76ZM10.75 15.76C10.75 16.1324 11.0214 16.4414 11.3772 16.5H16.75C17.1642 16.5 17.5 16.1642 17.5 15.75V15.135C17.5 14.7208 17.1642 14.385 16.75 14.385H11.5C11.0858 14.385 10.75 14.7208 10.75 15.135V15.76ZM17.5 12.13V11.505C17.5 11.0908 17.1642 10.755 16.75 10.755H11.5C11.0858 10.755 10.75 11.0908 10.75 11.505V12.13C10.75 12.5442 11.0858 12.88 11.5 12.88H16.75C17.1642 12.88 17.5 12.5442 17.5 12.13ZM9.25 12.13V11.505C9.25 11.0908 8.91421 10.755 8.5 10.755H3.25C2.83579 10.755 2.5 11.0908 2.5 11.505V12.13C2.5 12.5442 2.83579 12.88 3.25 12.88H8.5C8.91421 12.88 9.25 12.5442 9.25 12.13ZM17.5 8.5V7.875C17.5 7.46079 17.1642 7.125 16.75 7.125H11.5C11.0858 7.125 10.75 7.46079 10.75 7.875V8.5C10.75 8.91421 11.0858 9.25 11.5 9.25H16.75C17.1642 9.25 17.5 8.91421 17.5 8.5ZM9.25 8.5V7.875C9.25 7.46079 8.91421 7.125 8.5 7.125H3.25C2.83579 7.125 2.5 7.46079 2.5 7.875V8.5C2.5 8.91421 2.83579 9.25 3.25 9.25H8.5C8.91421 9.25 9.25 8.91421 9.25 8.5Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1 4.25C1 3.00736 2.00736 2 3.25 2H16.75C17.9926 2 19 3.00736 19 4.25V15.76C19 17.0027 17.9926 18.01 16.75 18.01H11.5C11.4279 18.01 11.3567 18.0066 11.2864 18H8.71363C8.64331 18.0066 8.57205 18.01 8.5 18.01H3.25C2.00736 18.01 1 17.0027 1 15.76V4.25ZM9.25 15.76V15.135C9.25 14.7208 8.91421 14.385 8.5 14.385H3.25C2.83579 14.385 2.5 14.7208 2.5 15.135V15.75C2.5 16.1642 2.83579 16.5 3.25 16.5H8.62283C8.97861 16.4414 9.25 16.1324 9.25 15.76ZM10.75 15.76C10.75 16.1324 11.0214 16.4414 11.3772 16.5H16.75C17.1642 16.5 17.5 16.1642 17.5 15.75V15.135C17.5 14.7208 17.1642 14.385 16.75 14.385H11.5C11.0858 14.385 10.75 14.7208 10.75 15.135V15.76ZM17.5 12.13V11.505C17.5 11.0908 17.1642 10.755 16.75 10.755H11.5C11.0858 10.755 10.75 11.0908 10.75 11.505V12.13C10.75 12.5442 11.0858 12.88 11.5 12.88H16.75C17.1642 12.88 17.5 12.5442 17.5 12.13ZM9.25 12.13V11.505C9.25 11.0908 8.91421 10.755 8.5 10.755H3.25C2.83579 10.755 2.5 11.0908 2.5 11.505V12.13C2.5 12.5442 2.83579 12.88 3.25 12.88H8.5C8.91421 12.88 9.25 12.5442 9.25 12.13ZM17.5 8.5V7.875C17.5 7.46079 17.1642 7.125 16.75 7.125H11.5C11.0858 7.125 10.75 7.46079 10.75 7.875V8.5C10.75 8.91421 11.0858 9.25 11.5 9.25H16.75C17.1642 9.25 17.5 8.91421 17.5 8.5ZM9.25 8.5V7.875C9.25 7.46079 8.91421 7.125 8.5 7.125H3.25C2.83579 7.125 2.5 7.46079 2.5 7.875V8.5C2.5 8.91421 2.83579 9.25 3.25 9.25H8.5C8.91421 9.25 9.25 8.91421 9.25 8.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/tag.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.5 3C4.11929 3 3 4.11929 3 5.5V8.37868C3 9.04172 3.26339 9.67761 3.73223 10.1464L10.2322 16.6464C11.2085 17.6228 12.7915 17.6228 13.7678 16.6464L16.6464 13.7678C17.6228 12.7915 17.6228 11.2085 16.6464 10.2322L10.1464 3.73223C9.67761 3.26339 9.04172 3 8.37868 3H5.5ZM6 7C6.55228 7 7 6.55228 7 6C7 5.44772 6.55228 5 6 5C5.44772 5 5 5.44772 5 6C5 6.55228 5.44772 7 6 7Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.5 3C4.11929 3 3 4.11929 3 5.5V8.37868C3 9.04172 3.26339 9.67761 3.73223 10.1464L10.2322 16.6464C11.2085 17.6228 12.7915 17.6228 13.7678 16.6464L16.6464 13.7678C17.6228 12.7915 17.6228 11.2085 16.6464 10.2322L10.1464 3.73223C9.67761 3.26339 9.04172 3 8.37868 3H5.5ZM6 7C6.55228 7 7 6.55228 7 6C7 5.44772 6.55228 5 6 5C5.44772 5 5 5.44772 5 6C5 6.55228 5.44772 7 6 7Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/ticket.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M13 3V4.27083C13 4.68505 13.3358 5.02083 13.75 5.02083C14.1642 5.02083 14.5 4.68505 14.5 4.27083V3H16.75C17.9926 3 19 4.00736 19 5.25V7.87803C19 8.19589 18.7996 8.47923 18.4999 8.58516C17.9163 8.79143 17.5 9.34806 17.5 10C17.5 10.6519 17.9163 11.2086 18.4999 11.4148C18.7996 11.5208 19 11.8041 19 12.122V14.75C19 15.9926 17.9926 17 16.75 17H14.5V15.7292C14.5 15.315 14.1642 14.9792 13.75 14.9792C13.3358 14.9792 13 15.315 13 15.7292V17H3.25C2.00736 17 1 15.9926 1 14.75V12.122C1 11.8041 1.20037 11.5208 1.50007 11.4148C2.08367 11.2086 2.5 10.6519 2.5 10C2.5 9.34806 2.08367 8.79143 1.50007 8.58516C1.20037 8.47923 1 8.19589 1 7.87803V5.25C1 4.00736 2.00736 3 3.25 3H13ZM14.5 7.39583C14.5 6.98162 14.1642 6.64583 13.75 6.64583C13.3358 6.64583 13 6.98162 13 7.39583V8.4375C13 8.85171 13.3358 9.1875 13.75 9.1875C14.1642 9.1875 14.5 8.85171 14.5 8.4375V7.39583ZM14.5 11.5625C14.5 11.1483 14.1642 10.8125 13.75 10.8125C13.3358 10.8125 13 11.1483 13 11.5625V12.6042C13 13.0184 13.3358 13.3542 13.75 13.3542C14.1642 13.3542 14.5 13.0184 14.5 12.6042V11.5625ZM6 10.75C6 10.3358 6.33579 10 6.75 10H10.25C10.6642 10 11 10.3358 11 10.75C11 11.1642 10.6642 11.5 10.25 11.5H6.75C6.33579 11.5 6 11.1642 6 10.75ZM6 13.25C6 12.8358 6.33579 12.5 6.75 12.5H8.25C8.66421 12.5 9 12.8358 9 13.25C9 13.6642 8.66421 14 8.25 14H6.75C6.33579 14 6 13.6642 6 13.25Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M13 3V4.27083C13 4.68505 13.3358 5.02083 13.75 5.02083C14.1642 5.02083 14.5 4.68505 14.5 4.27083V3H16.75C17.9926 3 19 4.00736 19 5.25V7.87803C19 8.19589 18.7996 8.47923 18.4999 8.58516C17.9163 8.79143 17.5 9.34806 17.5 10C17.5 10.6519 17.9163 11.2086 18.4999 11.4148C18.7996 11.5208 19 11.8041 19 12.122V14.75C19 15.9926 17.9926 17 16.75 17H14.5V15.7292C14.5 15.315 14.1642 14.9792 13.75 14.9792C13.3358 14.9792 13 15.315 13 15.7292V17H3.25C2.00736 17 1 15.9926 1 14.75V12.122C1 11.8041 1.20037 11.5208 1.50007 11.4148C2.08367 11.2086 2.5 10.6519 2.5 10C2.5 9.34806 2.08367 8.79143 1.50007 8.58516C1.20037 8.47923 1 8.19589 1 7.87803V5.25C1 4.00736 2.00736 3 3.25 3H13ZM14.5 7.39583C14.5 6.98162 14.1642 6.64583 13.75 6.64583C13.3358 6.64583 13 6.98162 13 7.39583V8.4375C13 8.85171 13.3358 9.1875 13.75 9.1875C14.1642 9.1875 14.5 8.85171 14.5 8.4375V7.39583ZM14.5 11.5625C14.5 11.1483 14.1642 10.8125 13.75 10.8125C13.3358 10.8125 13 11.1483 13 11.5625V12.6042C13 13.0184 13.3358 13.3542 13.75 13.3542C14.1642 13.3542 14.5 13.0184 14.5 12.6042V11.5625ZM6 10.75C6 10.3358 6.33579 10 6.75 10H10.25C10.6642 10 11 10.3358 11 10.75C11 11.1642 10.6642 11.5 10.25 11.5H6.75C6.33579 11.5 6 11.1642 6 10.75ZM6 13.25C6 12.8358 6.33579 12.5 6.75 12.5H8.25C8.66421 12.5 9 12.8358 9 13.25C9 13.6642 8.66421 14 8.25 14H6.75C6.33579 14 6 13.6642 6 13.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/trash.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.75 1C7.23122 1 6 2.23122 6 3.75V4.1927C5.20472 4.26972 4.41602 4.36947 3.63458 4.49129C3.22531 4.5551 2.94525 4.9386 3.00906 5.34787C3.07286 5.75714 3.45637 6.0372 3.86564 5.97339L4.01355 5.95062L4.85504 16.4693C4.96938 17.8985 6.16254 19 7.59629 19H12.4035C13.8372 19 15.0304 17.8985 15.1447 16.4693L15.9862 5.95055L16.1346 5.97339C16.5438 6.0372 16.9274 5.75714 16.9912 5.34787C17.055 4.9386 16.7749 4.5551 16.3656 4.49129C15.5841 4.36946 14.7954 4.2697 14 4.19268V3.75C14 2.23122 12.7688 1 11.25 1H8.75ZM10.0001 4C10.8395 4 11.673 4.02523 12.5 4.07499V3.75C12.5 3.05964 11.9404 2.5 11.25 2.5H8.75C8.05964 2.5 7.5 3.05964 7.5 3.75V4.075C8.32707 4.02524 9.16068 4 10.0001 4ZM8.57948 7.72002C8.56292 7.30614 8.21398 6.98404 7.8001 7.0006C7.38622 7.01716 7.06412 7.36609 7.08068 7.77998L7.38069 15.28C7.39725 15.6939 7.74619 16.016 8.16007 15.9994C8.57395 15.9828 8.89605 15.6339 8.87949 15.22L8.57948 7.72002ZM12.9195 7.77998C12.936 7.36609 12.614 7.01715 12.2001 7.0006C11.7862 6.98404 11.4372 7.30614 11.4207 7.72002L11.1207 15.22C11.1041 15.6339 11.4262 15.9828 11.8401 15.9994C12.254 16.016 12.6029 15.6939 12.6195 15.28L12.9195 7.77998Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.75 1C7.23122 1 6 2.23122 6 3.75V4.1927C5.20472 4.26972 4.41602 4.36947 3.63458 4.49129C3.22531 4.5551 2.94525 4.9386 3.00906 5.34787C3.07286 5.75714 3.45637 6.0372 3.86564 5.97339L4.01355 5.95062L4.85504 16.4693C4.96938 17.8985 6.16254 19 7.59629 19H12.4035C13.8372 19 15.0304 17.8985 15.1447 16.4693L15.9862 5.95055L16.1346 5.97339C16.5438 6.0372 16.9274 5.75714 16.9912 5.34787C17.055 4.9386 16.7749 4.5551 16.3656 4.49129C15.5841 4.36946 14.7954 4.2697 14 4.19268V3.75C14 2.23122 12.7688 1 11.25 1H8.75ZM10.0001 4C10.8395 4 11.673 4.02523 12.5 4.07499V3.75C12.5 3.05964 11.9404 2.5 11.25 2.5H8.75C8.05964 2.5 7.5 3.05964 7.5 3.75V4.075C8.32707 4.02524 9.16068 4 10.0001 4ZM8.57948 7.72002C8.56292 7.30614 8.21398 6.98404 7.8001 7.0006C7.38622 7.01716 7.06412 7.36609 7.08068 7.77998L7.38069 15.28C7.39725 15.6939 7.74619 16.016 8.16007 15.9994C8.57395 15.9828 8.89605 15.6339 8.87949 15.22L8.57948 7.72002ZM12.9195 7.77998C12.936 7.36609 12.614 7.01715 12.2001 7.0006C11.7862 6.98404 11.4372 7.30614 11.4207 7.72002L11.1207 15.22C11.1041 15.6339 11.4262 15.9828 11.8401 15.9994C12.254 16.016 12.6029 15.6939 12.6195 15.28L12.9195 7.77998Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/truck.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.5 3C5.4488 3 4.40669 3.03958 3.37512 3.11734C2.58952 3.17656 2 3.83452 2 4.60628V10.5H11V4.60628C11 3.83452 10.4105 3.17656 9.62488 3.11734C8.59331 3.03958 7.5512 3 6.5 3Z" fill="#0F172A"/>
    <path d="M2 12V14.5C2 15.3284 2.67157 16 3.5 16H3.54148C3.77952 14.5811 5.0135 13.5 6.5 13.5C7.9865 13.5 9.22048 14.5811 9.45852 16H10.25C10.6642 16 11 15.6642 11 15.25V12H2Z" fill="#0F172A"/>
    <path d="M6.5 18C7.32843 18 8 17.3284 8 16.5C8 15.6716 7.32843 15 6.5 15C5.67157 15 5 15.6716 5 16.5C5 17.3284 5.67157 18 6.5 18Z" fill="#0F172A"/>
    <path d="M13.25 5C12.8358 5 12.5 5.33579 12.5 5.75V14.2639C13.0308 13.7889 13.7316 13.5 14.5 13.5C15.8814 13.5 17.0447 14.4336 17.3933 15.7043C17.7639 15.4289 18.0037 14.9852 17.9883 14.4772C17.8967 11.4639 17.2717 8.58345 16.204 5.92808C15.9743 5.35688 15.4206 5 14.8229 5H13.25Z" fill="#0F172A"/>
    <path d="M14.5 18C15.3284 18 16 17.3284 16 16.5C16 15.6716 15.3284 15 14.5 15C13.6716 15 13 15.6716 13 16.5C13 17.3284 13.6716 18 14.5 18Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6.5 3C5.4488 3 4.40669 3.03958 3.37512 3.11734C2.58952 3.17656 2 3.83452 2 4.60628V10.5H11V4.60628C11 3.83452 10.4105 3.17656 9.62488 3.11734C8.59331 3.03958 7.5512 3 6.5 3Z\" fill=\"#0F172A\"/>\n<path d=\"M2 12V14.5C2 15.3284 2.67157 16 3.5 16H3.54148C3.77952 14.5811 5.0135 13.5 6.5 13.5C7.9865 13.5 9.22048 14.5811 9.45852 16H10.25C10.6642 16 11 15.6642 11 15.25V12H2Z\" fill=\"#0F172A\"/>\n<path d=\"M6.5 18C7.32843 18 8 17.3284 8 16.5C8 15.6716 7.32843 15 6.5 15C5.67157 15 5 15.6716 5 16.5C5 17.3284 5.67157 18 6.5 18Z\" fill=\"#0F172A\"/>\n<path d=\"M13.25 5C12.8358 5 12.5 5.33579 12.5 5.75V14.2639C13.0308 13.7889 13.7316 13.5 14.5 13.5C15.8814 13.5 17.0447 14.4336 17.3933 15.7043C17.7639 15.4289 18.0037 14.9852 17.9883 14.4772C17.8967 11.4639 17.2717 8.58345 16.204 5.92808C15.9743 5.35688 15.4206 5 14.8229 5H13.25Z\" fill=\"#0F172A\"/>\n<path d=\"M14.5 18C15.3284 18 16 17.3284 16 16.5C16 15.6716 15.3284 15 14.5 15C13.6716 15 13 15.6716 13 16.5C13 17.3284 13.6716 18 14.5 18Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/user-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM12.5 7.5C12.5 8.88071 11.3807 10 10 10C8.61929 10 7.5 8.88071 7.5 7.5C7.5 6.11929 8.61929 5 10 5C11.3807 5 12.5 6.11929 12.5 7.5ZM10 12C8.04133 12 6.30187 12.9385 5.20679 14.3904C6.39509 15.687 8.1026 16.5 10 16.5C11.8974 16.5 13.6049 15.687 14.7932 14.3904C13.6981 12.9385 11.9587 12 10 12Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18 10C18 14.4183 14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10ZM12.5 7.5C12.5 8.88071 11.3807 10 10 10C8.61929 10 7.5 8.88071 7.5 7.5C7.5 6.11929 8.61929 5 10 5C11.3807 5 12.5 6.11929 12.5 7.5ZM10 12C8.04133 12 6.30187 12.9385 5.20679 14.3904C6.39509 15.687 8.1026 16.5 10 16.5C11.8974 16.5 13.6049 15.687 14.7932 14.3904C13.6981 12.9385 11.9587 12 10 12Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/user-group.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 9C11.6569 9 13 7.65685 13 6C13 4.34315 11.6569 3 10 3C8.34315 3 7 4.34315 7 6C7 7.65685 8.34315 9 10 9Z" fill="#0F172A"/>
    <path d="M6 8C6 9.10457 5.10457 10 4 10C2.89543 10 2 9.10457 2 8C2 6.89543 2.89543 6 4 6C5.10457 6 6 6.89543 6 8Z" fill="#0F172A"/>
    <path d="M1.49064 15.3257C1.32107 15.2271 1.19021 15.0718 1.13247 14.8843C1.04636 14.6048 1 14.3078 1 14C1 12.3431 2.34315 11 4 11C4.522 11 5.01287 11.1333 5.4404 11.3678C4.39329 12.3989 3.69414 13.7825 3.53478 15.3267C3.5118 15.5494 3.52139 15.7692 3.55996 15.9809C2.81061 15.9156 2.10861 15.6849 1.49064 15.3257Z" fill="#0F172A"/>
    <path d="M16.4405 15.9809C17.1897 15.9155 17.8915 15.6849 18.5094 15.3257C18.6789 15.2271 18.8098 15.0718 18.8675 14.8843C18.9536 14.6048 19 14.3078 19 14C19 12.3431 17.6569 11 16 11C15.4781 11 14.9873 11.1333 14.5599 11.3676C15.6071 12.3987 16.3063 13.7824 16.4656 15.3267C16.4886 15.5494 16.479 15.7692 16.4405 15.9809Z" fill="#0F172A"/>
    <path d="M18 8C18 9.10457 17.1046 10 16 10C14.8954 10 14 9.10457 14 8C14 6.89543 14.8954 6 16 6C17.1046 6 18 6.89543 18 8Z" fill="#0F172A"/>
    <path d="M5.30383 16.1909C5.10473 16.0106 4.99922 15.7478 5.02679 15.4807C5.28657 12.9633 7.41408 11 10.0001 11C12.5862 11 14.7137 12.9633 14.9735 15.4807C15.0011 15.7478 14.8956 16.0107 14.6965 16.1909C13.4545 17.3152 11.8073 18 10.0001 18C8.19298 18 6.54576 17.3152 5.30383 16.1909Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10 9C11.6569 9 13 7.65685 13 6C13 4.34315 11.6569 3 10 3C8.34315 3 7 4.34315 7 6C7 7.65685 8.34315 9 10 9Z\" fill=\"#0F172A\"/>\n<path d=\"M6 8C6 9.10457 5.10457 10 4 10C2.89543 10 2 9.10457 2 8C2 6.89543 2.89543 6 4 6C5.10457 6 6 6.89543 6 8Z\" fill=\"#0F172A\"/>\n<path d=\"M1.49064 15.3257C1.32107 15.2271 1.19021 15.0718 1.13247 14.8843C1.04636 14.6048 1 14.3078 1 14C1 12.3431 2.34315 11 4 11C4.522 11 5.01287 11.1333 5.4404 11.3678C4.39329 12.3989 3.69414 13.7825 3.53478 15.3267C3.5118 15.5494 3.52139 15.7692 3.55996 15.9809C2.81061 15.9156 2.10861 15.6849 1.49064 15.3257Z\" fill=\"#0F172A\"/>\n<path d=\"M16.4405 15.9809C17.1897 15.9155 17.8915 15.6849 18.5094 15.3257C18.6789 15.2271 18.8098 15.0718 18.8675 14.8843C18.9536 14.6048 19 14.3078 19 14C19 12.3431 17.6569 11 16 11C15.4781 11 14.9873 11.1333 14.5599 11.3676C15.6071 12.3987 16.3063 13.7824 16.4656 15.3267C16.4886 15.5494 16.479 15.7692 16.4405 15.9809Z\" fill=\"#0F172A\"/>\n<path d=\"M18 8C18 9.10457 17.1046 10 16 10C14.8954 10 14 9.10457 14 8C14 6.89543 14.8954 6 16 6C17.1046 6 18 6.89543 18 8Z\" fill=\"#0F172A\"/>\n<path d=\"M5.30383 16.1909C5.10473 16.0106 4.99922 15.7478 5.02679 15.4807C5.28657 12.9633 7.41408 11 10.0001 11C12.5862 11 14.7137 12.9633 14.9735 15.4807C15.0011 15.7478 14.8956 16.0107 14.6965 16.1909C13.4545 17.3152 11.8073 18 10.0001 18C8.19298 18 6.54576 17.3152 5.30383 16.1909Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/user-minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user_minus />

      <.user_minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user_minus() %>

      <%= user_minus(class: "h-6 w-6 text-gray-500") %>
  """
  def user_minus(assigns_or_opts \\ [])

  def user_minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M11 5C11 6.65685 9.65685 8 8 8C6.34315 8 5 6.65685 5 5C5 3.34315 6.34315 2 8 2C9.65685 2 11 3.34315 11 5Z" fill="#0F172A"/>
    <path d="M2.04605 15.2529C1.98785 15.721 2.21798 16.1736 2.61528 16.428C4.16959 17.4231 6.01737 18 7.9999 18C9.98243 18 11.8302 17.4225 13.3845 16.4273C13.7818 16.1729 14.012 15.7203 13.9537 15.2522C13.5856 12.2914 11.0604 10 7.9999 10C4.93944 10 2.41416 12.292 2.04605 15.2529Z" fill="#0F172A"/>
    <path d="M12.75 7.75C12.3358 7.75 12 8.08579 12 8.5C12 8.91421 12.3358 9.25 12.75 9.25H18.25C18.6642 9.25 19 8.91421 19 8.5C19 8.08579 18.6642 7.75 18.25 7.75H12.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def user_minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11 5C11 6.65685 9.65685 8 8 8C6.34315 8 5 6.65685 5 5C5 3.34315 6.34315 2 8 2C9.65685 2 11 3.34315 11 5Z\" fill=\"#0F172A\"/>\n<path d=\"M2.04605 15.2529C1.98785 15.721 2.21798 16.1736 2.61528 16.428C4.16959 17.4231 6.01737 18 7.9999 18C9.98243 18 11.8302 17.4225 13.3845 16.4273C13.7818 16.1729 14.012 15.7203 13.9537 15.2522C13.5856 12.2914 11.0604 10 7.9999 10C4.93944 10 2.41416 12.292 2.04605 15.2529Z\" fill=\"#0F172A\"/>\n<path d=\"M12.75 7.75C12.3358 7.75 12 8.08579 12 8.5C12 8.91421 12.3358 9.25 12.75 9.25H18.25C18.6642 9.25 19 8.91421 19 8.5C19 8.08579 18.6642 7.75 18.25 7.75H12.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/user-plus.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M11 5C11 6.65685 9.65685 8 8 8C6.34315 8 5 6.65685 5 5C5 3.34315 6.34315 2 8 2C9.65685 2 11 3.34315 11 5Z" fill="#0F172A"/>
    <path d="M2.61528 16.428C2.21798 16.1736 1.98785 15.721 2.04605 15.2529C2.41416 12.292 4.93944 10 7.9999 10C11.0604 10 13.5856 12.2914 13.9537 15.2522C14.012 15.7203 13.7818 16.1729 13.3845 16.4273C11.8302 17.4225 9.98243 18 7.9999 18C6.01737 18 4.16959 17.4231 2.61528 16.428Z" fill="#0F172A"/>
    <path d="M16.25 5.75C16.25 5.33579 15.9142 5 15.5 5C15.0858 5 14.75 5.33579 14.75 5.75V7.75H12.75C12.3358 7.75 12 8.08579 12 8.5C12 8.91421 12.3358 9.25 12.75 9.25H14.75V11.25C14.75 11.6642 15.0858 12 15.5 12C15.9142 12 16.25 11.6642 16.25 11.25V9.25H18.25C18.6642 9.25 19 8.91421 19 8.5C19 8.08579 18.6642 7.75 18.25 7.75H16.25V5.75Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11 5C11 6.65685 9.65685 8 8 8C6.34315 8 5 6.65685 5 5C5 3.34315 6.34315 2 8 2C9.65685 2 11 3.34315 11 5Z\" fill=\"#0F172A\"/>\n<path d=\"M2.61528 16.428C2.21798 16.1736 1.98785 15.721 2.04605 15.2529C2.41416 12.292 4.93944 10 7.9999 10C11.0604 10 13.5856 12.2914 13.9537 15.2522C14.012 15.7203 13.7818 16.1729 13.3845 16.4273C11.8302 17.4225 9.98243 18 7.9999 18C6.01737 18 4.16959 17.4231 2.61528 16.428Z\" fill=\"#0F172A\"/>\n<path d=\"M16.25 5.75C16.25 5.33579 15.9142 5 15.5 5C15.0858 5 14.75 5.33579 14.75 5.75V7.75H12.75C12.3358 7.75 12 8.08579 12 8.5C12 8.91421 12.3358 9.25 12.75 9.25H14.75V11.25C14.75 11.6642 15.0858 12 15.5 12C15.9142 12 16.25 11.6642 16.25 11.25V9.25H18.25C18.6642 9.25 19 8.91421 19 8.5C19 8.08579 18.6642 7.75 18.25 7.75H16.25V5.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/user.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 8C11.6569 8 13 6.65685 13 5C13 3.34315 11.6569 2 10 2C8.34315 2 7 3.34315 7 5C7 6.65685 8.34315 8 10 8Z" fill="#0F172A"/>
    <path d="M3.46517 14.4935C3.27029 15.0016 3.44435 15.571 3.8742 15.9046C5.56656 17.218 7.69202 18 10.0001 18C12.3106 18 14.438 17.2164 16.1312 15.9006C16.5608 15.5667 16.7345 14.9971 16.5393 14.4892C15.5301 11.8635 12.9842 10 10.0031 10C7.02032 10 4.47329 11.8656 3.46517 14.4935Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10 8C11.6569 8 13 6.65685 13 5C13 3.34315 11.6569 2 10 2C8.34315 2 7 3.34315 7 5C7 6.65685 8.34315 8 10 8Z\" fill=\"#0F172A\"/>\n<path d=\"M3.46517 14.4935C3.27029 15.0016 3.44435 15.571 3.8742 15.9046C5.56656 17.218 7.69202 18 10.0001 18C12.3106 18 14.438 17.2164 16.1312 15.9006C16.5608 15.5667 16.7345 14.9971 16.5393 14.4892C15.5301 11.8635 12.9842 10 10.0031 10C7.02032 10 4.47329 11.8656 3.46517 14.4935Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/users.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M7 8C8.65685 8 10 6.65685 10 5C10 3.34315 8.65685 2 7 2C5.34315 2 4 3.34315 4 5C4 6.65685 5.34315 8 7 8Z" fill="#0F172A"/>
    <path d="M14.5 9C15.8807 9 17 7.88071 17 6.5C17 5.11929 15.8807 4 14.5 4C13.1193 4 12 5.11929 12 6.5C12 7.88071 13.1193 9 14.5 9Z" fill="#0F172A"/>
    <path d="M1.61528 16.428C1.21798 16.1736 0.987847 15.721 1.04605 15.2529C1.41416 12.292 3.93944 10 6.9999 10C10.0604 10 12.5856 12.2914 12.9537 15.2522C13.012 15.7203 12.7818 16.1729 12.3845 16.4273C10.8302 17.4225 8.98243 18 6.9999 18C5.01737 18 3.16959 17.4231 1.61528 16.428Z" fill="#0F172A"/>
    <path d="M14.5001 16C14.4647 16 14.4295 15.9998 14.3943 15.9993C14.4631 15.7025 14.4822 15.3885 14.4423 15.0671C14.2668 13.6562 13.7001 12.367 12.854 11.3116C13.3646 11.1105 13.9208 11 14.5028 11C16.4426 11 18.0956 12.2273 18.7279 13.9478C18.8638 14.3176 18.7045 14.7241 18.3671 14.9275C17.2379 15.6083 15.9147 16 14.5001 16Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M7 8C8.65685 8 10 6.65685 10 5C10 3.34315 8.65685 2 7 2C5.34315 2 4 3.34315 4 5C4 6.65685 5.34315 8 7 8Z\" fill=\"#0F172A\"/>\n<path d=\"M14.5 9C15.8807 9 17 7.88071 17 6.5C17 5.11929 15.8807 4 14.5 4C13.1193 4 12 5.11929 12 6.5C12 7.88071 13.1193 9 14.5 9Z\" fill=\"#0F172A\"/>\n<path d=\"M1.61528 16.428C1.21798 16.1736 0.987847 15.721 1.04605 15.2529C1.41416 12.292 3.93944 10 6.9999 10C10.0604 10 12.5856 12.2914 12.9537 15.2522C13.012 15.7203 12.7818 16.1729 12.3845 16.4273C10.8302 17.4225 8.98243 18 6.9999 18C5.01737 18 3.16959 17.4231 1.61528 16.428Z\" fill=\"#0F172A\"/>\n<path d=\"M14.5001 16C14.4647 16 14.4295 15.9998 14.3943 15.9993C14.4631 15.7025 14.4822 15.3885 14.4423 15.0671C14.2668 13.6562 13.7001 12.367 12.854 11.3116C13.3646 11.1105 13.9208 11 14.5028 11C16.4426 11 18.0956 12.2273 18.7279 13.9478C18.8638 14.3176 18.7045 14.7241 18.3671 14.9275C17.2379 15.6083 15.9147 16 14.5001 16Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/video-camera-slash.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M1 13.75V7.18198L9.81802 16H3.25C2.00736 16 1 14.9926 1 13.75Z" fill="#0F172A"/>
    <path d="M13 6.25V12.818L4.18198 4H10.75C11.9926 4 13 5.00736 13 6.25Z" fill="#0F172A"/>
    <path d="M19 4.75002C19 4.44668 18.8173 4.1732 18.537 4.05711C18.2568 3.94103 17.9342 4.00519 17.7197 4.21969L14.7197 7.21969C14.579 7.36034 14.5 7.55111 14.5 7.75002V12.25C14.5 12.4489 14.579 12.6397 14.7197 12.7804L17.7197 15.7804C17.9342 15.9949 18.2568 16.059 18.537 15.9429C18.8173 15.8268 19 15.5534 19 15.25V4.75002Z" fill="#0F172A"/>
    <path d="M2.28033 4.21967C1.98744 3.92678 1.51256 3.92678 1.21967 4.21967C0.926777 4.51256 0.926777 4.98744 1.21967 5.28033L11.7197 15.7803C12.0126 16.0732 12.4874 16.0732 12.7803 15.7803C13.0732 15.4874 13.0732 15.0126 12.7803 14.7197L2.28033 4.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M1 13.75V7.18198L9.81802 16H3.25C2.00736 16 1 14.9926 1 13.75Z\" fill=\"#0F172A\"/>\n<path d=\"M13 6.25V12.818L4.18198 4H10.75C11.9926 4 13 5.00736 13 6.25Z\" fill=\"#0F172A\"/>\n<path d=\"M19 4.75002C19 4.44668 18.8173 4.1732 18.537 4.05711C18.2568 3.94103 17.9342 4.00519 17.7197 4.21969L14.7197 7.21969C14.579 7.36034 14.5 7.55111 14.5 7.75002V12.25C14.5 12.4489 14.579 12.6397 14.7197 12.7804L17.7197 15.7804C17.9342 15.9949 18.2568 16.059 18.537 15.9429C18.8173 15.8268 19 15.5534 19 15.25V4.75002Z\" fill=\"#0F172A\"/>\n<path d=\"M2.28033 4.21967C1.98744 3.92678 1.51256 3.92678 1.21967 4.21967C0.926777 4.51256 0.926777 4.98744 1.21967 5.28033L11.7197 15.7803C12.0126 16.0732 12.4874 16.0732 12.7803 15.7803C13.0732 15.4874 13.0732 15.0126 12.7803 14.7197L2.28033 4.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/video-camera.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.25 4C2.00736 4 1 5.00736 1 6.25V13.75C1 14.9926 2.00736 16 3.25 16H10.75C11.9926 16 13 14.9926 13 13.75V6.25C13 5.00736 11.9926 4 10.75 4H3.25Z" fill="#0F172A"/>
    <path d="M19 4.75002C19 4.44668 18.8173 4.1732 18.537 4.05711C18.2568 3.94103 17.9342 4.00519 17.7197 4.21969L14.7197 7.21969C14.579 7.36034 14.5 7.55111 14.5 7.75002V12.25C14.5 12.4489 14.579 12.6397 14.7197 12.7804L17.7197 15.7804C17.9342 15.9949 18.2568 16.059 18.537 15.9429C18.8173 15.8268 19 15.5534 19 15.25V4.75002Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.25 4C2.00736 4 1 5.00736 1 6.25V13.75C1 14.9926 2.00736 16 3.25 16H10.75C11.9926 16 13 14.9926 13 13.75V6.25C13 5.00736 11.9926 4 10.75 4H3.25Z\" fill=\"#0F172A\"/>\n<path d=\"M19 4.75002C19 4.44668 18.8173 4.1732 18.537 4.05711C18.2568 3.94103 17.9342 4.00519 17.7197 4.21969L14.7197 7.21969C14.579 7.36034 14.5 7.55111 14.5 7.75002V12.25C14.5 12.4489 14.579 12.6397 14.7197 12.7804L17.7197 15.7804C17.9342 15.9949 18.2568 16.059 18.537 15.9429C18.8173 15.8268 19 15.5534 19 15.25V4.75002Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/view-columns.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14 18H16.75C17.9926 18 19 16.9926 19 15.75V4.25C19 3.00736 17.9926 2 16.75 2H14V18ZM12.5 2H7.5V18H12.5V2ZM3.25 2H6V18H3.25C2.00736 18 1 16.9926 1 15.75V4.25C1 3.00736 2.00736 2 3.25 2Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14 18H16.75C17.9926 18 19 16.9926 19 15.75V4.25C19 3.00736 17.9926 2 16.75 2H14V18ZM12.5 2H7.5V18H12.5V2ZM3.25 2H6V18H3.25C2.00736 18 1 16.9926 1 15.75V4.25C1 3.00736 2.00736 2 3.25 2Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/wifi.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M0.675986 6.94117C3.03728 4.51116 6.34284 3 10 3C13.6572 3 16.9628 4.51116 19.3241 6.94117C19.6098 7.23522 19.6064 7.70424 19.3165 7.99417L18.9629 8.34776C18.8209 8.48979 18.6278 8.56891 18.427 8.56741C18.2261 8.56591 18.0343 8.48391 17.8944 8.33977C15.8944 6.27907 13.0973 5 10 5C6.90281 5 4.10564 6.27907 2.10566 8.33977C1.96577 8.48391 1.77392 8.56591 1.57307 8.56741C1.37222 8.56891 1.17916 8.48979 1.03713 8.34776L0.683537 7.99417C0.39361 7.70424 0.390247 7.23522 0.675986 6.94117ZM3.50123 9.77378C5.13848 8.06527 7.44548 7 10 7C12.5546 7 14.8616 8.06527 16.4988 9.77378C16.7811 10.0684 16.7762 10.5345 16.4877 10.823L16.134 11.1767C15.9913 11.3194 15.797 11.3986 15.5952 11.3963C15.3933 11.394 15.2009 11.3104 15.0615 11.1645C13.786 9.82985 11.9906 9 10 9C8.00951 9 6.21406 9.82985 4.93858 11.1645C4.79912 11.3104 4.60672 11.394 4.40487 11.3963C4.20302 11.3986 4.00877 11.3194 3.86604 11.1767L3.5124 10.823C3.22391 10.5345 3.21894 10.0684 3.50123 9.77378ZM6.32061 12.6144C7.23335 11.6229 8.5445 11 10 11C11.4556 11 12.7667 11.6229 13.6794 12.6144C13.9518 12.9103 13.9423 13.3683 13.658 13.6527L13.3041 14.0066C13.1591 14.1516 12.9611 14.2309 12.7562 14.2261C12.5512 14.2213 12.3572 14.1328 12.2192 13.9812C11.6694 13.3773 10.8793 13 10 13C9.12075 13 8.33066 13.3773 7.7809 13.9812C7.64289 14.1328 7.44884 14.2213 7.24388 14.2261C7.03893 14.2309 6.84094 14.1516 6.69598 14.0066L6.34208 13.6527C6.05771 13.3683 6.04824 12.9103 6.32061 12.6144ZM9.11615 15.3661C9.34153 15.1407 9.65506 15 10 15C10.345 15 10.6585 15.1407 10.8839 15.3661C11.1768 15.659 11.1768 16.1339 10.8839 16.4268L10.5304 16.7803C10.2375 17.0732 9.76259 17.0732 9.4697 16.7803L9.11615 16.4268C8.82325 16.1339 8.82325 15.659 9.11615 15.3661Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M0.675986 6.94117C3.03728 4.51116 6.34284 3 10 3C13.6572 3 16.9628 4.51116 19.3241 6.94117C19.6098 7.23522 19.6064 7.70424 19.3165 7.99417L18.9629 8.34776C18.8209 8.48979 18.6278 8.56891 18.427 8.56741C18.2261 8.56591 18.0343 8.48391 17.8944 8.33977C15.8944 6.27907 13.0973 5 10 5C6.90281 5 4.10564 6.27907 2.10566 8.33977C1.96577 8.48391 1.77392 8.56591 1.57307 8.56741C1.37222 8.56891 1.17916 8.48979 1.03713 8.34776L0.683537 7.99417C0.39361 7.70424 0.390247 7.23522 0.675986 6.94117ZM3.50123 9.77378C5.13848 8.06527 7.44548 7 10 7C12.5546 7 14.8616 8.06527 16.4988 9.77378C16.7811 10.0684 16.7762 10.5345 16.4877 10.823L16.134 11.1767C15.9913 11.3194 15.797 11.3986 15.5952 11.3963C15.3933 11.394 15.2009 11.3104 15.0615 11.1645C13.786 9.82985 11.9906 9 10 9C8.00951 9 6.21406 9.82985 4.93858 11.1645C4.79912 11.3104 4.60672 11.394 4.40487 11.3963C4.20302 11.3986 4.00877 11.3194 3.86604 11.1767L3.5124 10.823C3.22391 10.5345 3.21894 10.0684 3.50123 9.77378ZM6.32061 12.6144C7.23335 11.6229 8.5445 11 10 11C11.4556 11 12.7667 11.6229 13.6794 12.6144C13.9518 12.9103 13.9423 13.3683 13.658 13.6527L13.3041 14.0066C13.1591 14.1516 12.9611 14.2309 12.7562 14.2261C12.5512 14.2213 12.3572 14.1328 12.2192 13.9812C11.6694 13.3773 10.8793 13 10 13C9.12075 13 8.33066 13.3773 7.7809 13.9812C7.64289 14.1328 7.44884 14.2213 7.24388 14.2261C7.03893 14.2309 6.84094 14.1516 6.69598 14.0066L6.34208 13.6527C6.05771 13.3683 6.04824 12.9103 6.32061 12.6144ZM9.11615 15.3661C9.34153 15.1407 9.65506 15 10 15C10.345 15 10.6585 15.1407 10.8839 15.3661C11.1768 15.659 11.1768 16.1339 10.8839 16.4268L10.5304 16.7803C10.2375 17.0732 9.76259 17.0732 9.4697 16.7803L9.11615 16.4268C8.82325 16.1339 8.82325 15.659 9.11615 15.3661Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/wrench-screwdriver.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.5 10C16.9853 10 19 7.98528 19 5.5C19 5.01783 18.9242 4.55338 18.7838 4.11791C18.6792 3.79367 18.2734 3.72683 18.0325 3.96772L15.3402 6.66002C15.2098 6.79041 15.0168 6.84163 14.8466 6.77074C14.1172 6.46695 13.5334 5.88351 13.2292 5.15431C13.1582 4.98403 13.2094 4.79088 13.3398 4.66042L16.0327 1.9676C16.2735 1.72672 16.2067 1.32092 15.8825 1.21636C15.4469 1.07588 14.9823 1 14.5 1C12.0147 1 10 3.01472 10 5.5C10 5.59783 10.0031 5.69494 10.0093 5.79122C10.065 6.66418 9.88174 7.59855 9.20974 8.15855L1.98017 14.1832C1.3591 14.7008 1 15.4674 1 16.2759C1 17.7804 2.21962 19 3.7241 19C4.53256 19 5.29925 18.6409 5.81681 18.0198L11.8414 10.7903C12.4014 10.1183 13.3358 9.93497 14.2088 9.99073C14.3051 9.99688 14.4022 10 14.5 10ZM5 16C5 16.5523 4.55228 17 4 17C3.44772 17 3 16.5523 3 16C3 15.4477 3.44772 15 4 15C4.55228 15 5 15.4477 5 16Z" fill="#0F172A"/>
    <path d="M14.5 11.5C14.6731 11.5 14.8445 11.4927 15.0138 11.4783L18.7678 15.2323C19.7441 16.2086 19.7441 17.7915 18.7678 18.7678C17.7915 19.7441 16.2086 19.7441 15.2323 18.7678L10.8216 14.3571L12.9938 11.7505C13.0455 11.6885 13.1413 11.6131 13.3357 11.5552C13.5378 11.4951 13.805 11.468 14.1132 11.4877C14.2413 11.4959 14.3702 11.5 14.5 11.5Z" fill="#0F172A"/>
    <path d="M6.00003 4.58582L8.33056 6.91635C8.3027 6.95627 8.27496 6.98497 8.24946 7.00622L6.79994 8.21415L4.58582 6.00003H3.30905C3.11966 6.00003 2.94653 5.89303 2.86184 5.72364L1.1612 2.32237C1.06495 2.12987 1.10268 1.89739 1.25486 1.74521L1.74521 1.25486C1.89739 1.10268 2.12987 1.06495 2.32237 1.1612L5.72364 2.86184C5.89303 2.94653 6.00003 3.11966 6.00003 3.30905V4.58582Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.5 10C16.9853 10 19 7.98528 19 5.5C19 5.01783 18.9242 4.55338 18.7838 4.11791C18.6792 3.79367 18.2734 3.72683 18.0325 3.96772L15.3402 6.66002C15.2098 6.79041 15.0168 6.84163 14.8466 6.77074C14.1172 6.46695 13.5334 5.88351 13.2292 5.15431C13.1582 4.98403 13.2094 4.79088 13.3398 4.66042L16.0327 1.9676C16.2735 1.72672 16.2067 1.32092 15.8825 1.21636C15.4469 1.07588 14.9823 1 14.5 1C12.0147 1 10 3.01472 10 5.5C10 5.59783 10.0031 5.69494 10.0093 5.79122C10.065 6.66418 9.88174 7.59855 9.20974 8.15855L1.98017 14.1832C1.3591 14.7008 1 15.4674 1 16.2759C1 17.7804 2.21962 19 3.7241 19C4.53256 19 5.29925 18.6409 5.81681 18.0198L11.8414 10.7903C12.4014 10.1183 13.3358 9.93497 14.2088 9.99073C14.3051 9.99688 14.4022 10 14.5 10ZM5 16C5 16.5523 4.55228 17 4 17C3.44772 17 3 16.5523 3 16C3 15.4477 3.44772 15 4 15C4.55228 15 5 15.4477 5 16Z\" fill=\"#0F172A\"/>\n<path d=\"M14.5 11.5C14.6731 11.5 14.8445 11.4927 15.0138 11.4783L18.7678 15.2323C19.7441 16.2086 19.7441 17.7915 18.7678 18.7678C17.7915 19.7441 16.2086 19.7441 15.2323 18.7678L10.8216 14.3571L12.9938 11.7505C13.0455 11.6885 13.1413 11.6131 13.3357 11.5552C13.5378 11.4951 13.805 11.468 14.1132 11.4877C14.2413 11.4959 14.3702 11.5 14.5 11.5Z\" fill=\"#0F172A\"/>\n<path d=\"M6.00003 4.58582L8.33056 6.91635C8.3027 6.95627 8.27496 6.98497 8.24946 7.00622L6.79994 8.21415L4.58582 6.00003H3.30905C3.11966 6.00003 2.94653 5.89303 2.86184 5.72364L1.1612 2.32237C1.06495 2.12987 1.10268 1.89739 1.25486 1.74521L1.74521 1.25486C1.89739 1.10268 2.12987 1.06495 2.32237 1.1612L5.72364 2.86184C5.89303 2.94653 6.00003 3.11966 6.00003 3.30905V4.58582Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/wrench.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19 5.5C19 7.98528 16.9853 10 14.5 10C14.4022 10 14.3051 9.99688 14.2088 9.99073C13.3358 9.93497 12.4014 10.1183 11.8414 10.7903L5.81681 18.0198C5.29925 18.6409 4.53256 19 3.7241 19C2.21962 19 1 17.7804 1 16.2759C1 15.4674 1.3591 14.7008 1.98017 14.1832L9.20974 8.15855C9.88173 7.59855 10.065 6.66418 10.0093 5.79122C10.0031 5.69494 10 5.59783 10 5.5C10 3.01472 12.0147 1 14.5 1C14.9823 1 15.4469 1.07588 15.8825 1.21636C16.2067 1.32092 16.2735 1.72672 16.0327 1.9676L13.3398 4.66042C13.2094 4.79088 13.1582 4.98403 13.2292 5.15431C13.5334 5.88351 14.1172 6.46695 14.8466 6.77074C15.0168 6.84163 15.2098 6.79041 15.3402 6.66002L18.0325 3.96772C18.2734 3.72683 18.6792 3.79367 18.7838 4.11791C18.9242 4.55338 19 5.01783 19 5.5ZM4 17C4.55228 17 5 16.5523 5 16C5 15.4477 4.55228 15 4 15C3.44772 15 3 15.4477 3 16C3 16.5523 3.44772 17 4 17Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19 5.5C19 7.98528 16.9853 10 14.5 10C14.4022 10 14.3051 9.99688 14.2088 9.99073C13.3358 9.93497 12.4014 10.1183 11.8414 10.7903L5.81681 18.0198C5.29925 18.6409 4.53256 19 3.7241 19C2.21962 19 1 17.7804 1 16.2759C1 15.4674 1.3591 14.7008 1.98017 14.1832L9.20974 8.15855C9.88173 7.59855 10.065 6.66418 10.0093 5.79122C10.0031 5.69494 10 5.59783 10 5.5C10 3.01472 12.0147 1 14.5 1C14.9823 1 15.4469 1.07588 15.8825 1.21636C16.2067 1.32092 16.2735 1.72672 16.0327 1.9676L13.3398 4.66042C13.2094 4.79088 13.1582 4.98403 13.2292 5.15431C13.5334 5.88351 14.1172 6.46695 14.8466 6.77074C15.0168 6.84163 15.2098 6.79041 15.3402 6.66002L18.0325 3.96772C18.2734 3.72683 18.6792 3.79367 18.7838 4.11791C18.9242 4.55338 19 5.01783 19 5.5ZM4 17C4.55228 17 5 16.5523 5 16C5 15.4477 4.55228 15 4 15C3.44772 15 3 15.4477 3 16C3 16.5523 3.44772 17 4 17Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/x-circle.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM8.28033 7.21967C7.98744 6.92678 7.51256 6.92678 7.21967 7.21967C6.92678 7.51256 6.92678 7.98744 7.21967 8.28033L8.93934 10L7.21967 11.7197C6.92678 12.0126 6.92678 12.4874 7.21967 12.7803C7.51256 13.0732 7.98744 13.0732 8.28033 12.7803L10 11.0607L11.7197 12.7803C12.0126 13.0732 12.4874 13.0732 12.7803 12.7803C13.0732 12.4874 13.0732 12.0126 12.7803 11.7197L11.0607 10L12.7803 8.28033C13.0732 7.98744 13.0732 7.51256 12.7803 7.21967C12.4874 6.92678 12.0126 6.92678 11.7197 7.21967L10 8.93934L8.28033 7.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM8.28033 7.21967C7.98744 6.92678 7.51256 6.92678 7.21967 7.21967C6.92678 7.51256 6.92678 7.98744 7.21967 8.28033L8.93934 10L7.21967 11.7197C6.92678 12.0126 6.92678 12.4874 7.21967 12.7803C7.51256 13.0732 7.98744 13.0732 8.28033 12.7803L10 11.0607L11.7197 12.7803C12.0126 13.0732 12.4874 13.0732 12.7803 12.7803C13.0732 12.4874 13.0732 12.0126 12.7803 11.7197L11.0607 10L12.7803 8.28033C13.0732 7.98744 13.0732 7.51256 12.7803 7.21967C12.4874 6.92678 12.0126 6.92678 11.7197 7.21967L10 8.93934L8.28033 7.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/mini/x-mark.svg) {: width=24px}

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
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.28033 5.21967C5.98744 4.92678 5.51256 4.92678 5.21967 5.21967C4.92678 5.51256 4.92678 5.98744 5.21967 6.28033L8.93934 10L5.21967 13.7197C4.92678 14.0126 4.92678 14.4874 5.21967 14.7803C5.51256 15.0732 5.98744 15.0732 6.28033 14.7803L10 11.0607L13.7197 14.7803C14.0126 15.0732 14.4874 15.0732 14.7803 14.7803C15.0732 14.4874 15.0732 14.0126 14.7803 13.7197L11.0607 10L14.7803 6.28033C15.0732 5.98744 15.0732 5.51256 14.7803 5.21967C14.4874 4.92678 14.0126 4.92678 13.7197 5.21967L10 8.93934L6.28033 5.21967Z" fill="#0F172A"/>
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

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6.28033 5.21967C5.98744 4.92678 5.51256 4.92678 5.21967 5.21967C4.92678 5.51256 4.92678 5.98744 5.21967 6.28033L8.93934 10L5.21967 13.7197C4.92678 14.0126 4.92678 14.4874 5.21967 14.7803C5.51256 15.0732 5.98744 15.0732 6.28033 14.7803L10 11.0607L13.7197 14.7803C14.0126 15.0732 14.4874 15.0732 14.7803 14.7803C15.0732 14.4874 15.0732 14.0126 14.7803 13.7197L11.0607 10L14.7803 6.28033C15.0732 5.98744 15.0732 5.51256 14.7803 5.21967C14.4874 4.92678 14.0126 4.92678 13.7197 5.21967L10 8.93934L6.28033 5.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

end
