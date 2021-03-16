defmodule FatorialTest do
  use ExUnit.Case
  doctest Fatorial

  test "greets the world" do
    assert Fatorial.hello() == :world
  end
end
