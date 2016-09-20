defmodule TestApp.Handler do
  use GenServer
  alias TestApp.Models

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, Keyword.merge(opts, name: __MODULE__))
  end

  def init(:ok) do
    db = :ets.new(:numbers, [:public, :named_table, read_concurrency: true])
    {:ok, db}
  end

  def add_two_numbers(a, b) do
    id = :ets.info(:numbers, :size)
    new_number = Models.Number.new(sum: a + b)
    :ets.insert_new(:numbers, {id, new_number})
  end
end
