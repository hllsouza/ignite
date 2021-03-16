defmodule Fatorial do
  def f_fatorial(x) when x <= 1 do
    1
  end

  def f_fatorial(x) do
    IO.inspect(x)
    x * f_fatorial(x - 1)
  end
end
