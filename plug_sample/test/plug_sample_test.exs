defmodule PlugSampleTest do
  use ExUnit.Case
  doctest PlugSample

  test "greets the world" do
    assert PlugSample.hello() == :world
  end
end
