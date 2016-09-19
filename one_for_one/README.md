# OneForOne

$ iex -S mix

```elixir
iex> Supervisor.which_children(OneForOne.Supervisor)
iex> Process.whereis(:two) |> Process.exit(:kill)
iex> Supervisor.which_children(OneForOne.Supervisor)
```