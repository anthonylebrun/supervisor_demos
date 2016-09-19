defmodule RestForOne.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [], [name: __MODULE__])
  end

  def init([]) do
    children = [
      worker(RestForOne.Stack, [[], [name:   :one]], [id: 1]),
      worker(RestForOne.Stack, [[], [name:   :two]], [id: 2]),
      worker(RestForOne.Stack, [[], [name: :three]], [id: 3])
    ]

    supervise(children, strategy: :rest_for_one)
  end
end
