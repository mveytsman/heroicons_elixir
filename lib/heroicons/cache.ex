defmodule Heroicons.Cache do
  @moduledoc """
  An ETS-backed cache for icons. We cache both pre-compiled Phoenix Components and icon bodies as strings.

  Uses the icon's path on disk as a key.
  """

  use GenServer

  @name __MODULE__

  @doc false
  def start_link(_), do: GenServer.start_link(__MODULE__, [], name: @name)

  @doc "Fetch a icon's body and fingerprint from the cache or disk, given a `path`"
  def fetch_icon(path) do
    case :ets.lookup(@name, path) do
      [{^path, icon_body, fingerprint}] ->
        {icon_body, fingerprint}

      [] ->
        GenServer.call(@name, {:cache_icon, path})
    end
  end

  @impl true
  def init(_) do
    :ets.new(@name, [:set, :protected, :named_table])

    {:ok, []}
  end

  @impl true
  def handle_call({:cache_icon, path}, _ref, state) do
    {icon_body, fingerprint} = read_icon(path)

    :ets.insert_new(@name, {path, icon_body, fingerprint})

    {:reply, {icon_body, fingerprint}, state}
  end

  defp read_icon(path) do
    icon =
      Path.join(:code.priv_dir(:heroicons), path)
      |> File.read!()

    <<"<svg", icon_body::binary>> = icon

    <<fingerprint::8*16>> = :erlang.md5(icon)

    {icon_body, fingerprint}
  end
end
