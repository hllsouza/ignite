defmodule ListFilter do
  require Integer

  def call(list), do: count(list)

  defp count([]) do
    0
  end

  defp count(list) do
    list
    list_filtered = Enum.filter(list, fn x -> match?({_numero, ""}, Integer.parse(x)) end)
    list_collected = Enum.map(list_filtered, fn x -> String.to_integer(x) end)
    list_filtered_integer = Enum.filter(list_collected, fn x -> Integer.is_odd(x) end)
    Enum.count(list_filtered_integer)
  end
end
