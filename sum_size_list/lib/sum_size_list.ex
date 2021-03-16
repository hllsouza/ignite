defmodule SumSizeList do
  def call(list), do: count(list)

  defp count([]) do
    0
  end

  defp count([_head | tail]) do
    1 + count(tail)
  end
end
