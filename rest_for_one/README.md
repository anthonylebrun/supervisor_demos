# RestForOne

$ iex -S mix

```elixir
iex> Supervisor.which_children(RestForOne.Supervisor)
iex> Process.whereis(:two) |> Process.exit(:kill)
iex> Supervisor.which_children(RestForOne.Supervisor)
```