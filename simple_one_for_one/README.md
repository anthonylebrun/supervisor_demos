# SimpleOneForOne

$ iex -S mix

```elixir
iex> Supervisor.start_child(SimpleOneForOne.Supervisor, [])
iex> Supervisor.start_child(SimpleOneForOne.Supervisor, [])
iex> Supervisor.start_child(SimpleOneForOne.Supervisor, [])
iex> Supervisor.which_children(SimpleOneForOne.Supervisor)
```