defmodule TestApp.Handler do
  use GenServer
  alias TestApp.Models

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, Keyword.merge(opts, name: __MODULE__))
  end

  def add_two_numbers(a, b) do
    Models.Number.new(sum: a + b)
  end
end
