defmodule OneForAll.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [], [name: __MODULE__])
  end

  def init([]) do
    children = [
      worker(OneForAll.Stack, [[], [name:   :one]], [id: 1]),
      worker(OneForAll.Stack, [[], [name:   :two]], [id: 2]),
      worker(OneForAll.Stack, [[], [name: :three]], [id: 3])
    ]

    supervise(children, strategy: :one_for_all)
  end
end
