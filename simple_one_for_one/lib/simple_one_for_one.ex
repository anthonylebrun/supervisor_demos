defmodule SimpleOneForOne do
  use Application

  def start(_type, _args) do
    SimpleOneForOne.Supervisor.start_link
  end
end
