defmodule RestForOne do
  use Application

  def start(_type, _args) do
    RestForOne.Supervisor.start_link
  end
end
