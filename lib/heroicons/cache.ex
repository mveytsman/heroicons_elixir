defmodule Heroicons.Cache do
  @moduledoc """
  An ETS-backed cache for icons. We cache both pre-compiled Phoenix Components and icon bodies as strings.

  Uses the icon's path on disk as a key.
  """

  use GenServer

  @name __MODULE__

  @doc false
  def start_link(_), do: GenServer.start_link(__MODULE__, [], name: @name)

  @doc "Fetch a pre-compiled Phoenix Component from the cache or disk, given a `path`"
  def fetch_component(path) do
    case :ets.lookup(@name.Components, path) do
      [{^path, component}] ->
        component

      [] ->
        GenServer.call(@name, {:cache_component, path})
    end
  end

  @doc "Fetch a icon's body from the cache or disk, given a `path`"
  def fetch_body(path) do
    case :ets.lookup(@name, path) do
      [{^path, body}] ->
        body

      [] ->
        GenServer.call(@name, {:cache_body, path})
    end
  end

  @impl true
  def init(_) do
    :ets.new(@name, [:set, :protected, :named_table])
    :ets.new(@name.Components, [:set, :protected, :named_table])

    {:ok, []}
  end

  @impl true
  def handle_call({:cache_body, path}, _ref, state) do
    body = read_body(path)

    :ets.insert_new(@name, {path, body})

    {:reply, body, state}
  end

  def handle_call({:cache_component, path}, _ref, state) do
    body = read_body(path)

    component =
      EEx.compile_string("<svg {@attrs}" <> body,
        engine: Phoenix.LiveView.HTMLEngine,
        file: __ENV__.file,
        line: __ENV__.line + 1,
        module: __ENV__.module,
        indentation: 0
      )

    :ets.insert_new(@name.Components, {path, component})

    {:reply, component, state}
  end

  defp read_body(path) do
    icon = File.read!(path)

    <<"<svg ", body::binary>> = icon

    body
  end
end
