defmodule OneForAll do
  use Application

  def start(_type, _args) do
    OneForAll.Supervisor.start_link
  end
end
