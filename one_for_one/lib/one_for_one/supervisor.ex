defmodule OneForOne.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [], [name: __MODULE__])
  end

  def init([]) do
    children = [
      worker(OneForOne.Stack, [[], [name:   :one]], [id: 1]),
      worker(OneForOne.Stack, [[], [name:   :two]], [id: 2]),
      worker(OneForOne.Stack, [[], [name: :three]], [id: 3])
    ]

    supervise(children, strategy: :one_for_one)
  end
end
