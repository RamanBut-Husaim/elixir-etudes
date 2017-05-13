defmodule GeomTest do
  use ExUnit.Case

  test "when the values are specified should return correct result" do
    assert Geom.area(3, 4) == 12
    assert Geom.area(10, 8) == 80
    assert Geom.area(19, 0) == 0
  end
end