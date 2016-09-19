defmodule OneForOne do
  use Application

  def start(_type, _args) do
    OneForOne.Supervisor.start_link
  end
end
