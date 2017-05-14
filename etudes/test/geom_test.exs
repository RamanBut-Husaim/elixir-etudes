defmodule GeomTest do
  use ExUnit.Case

  test "area - when the values are specified should return correct result" do
    assert Geom.area(3, 4) == 12
    assert Geom.area(10, 8) == 80
    assert Geom.area(19, 0) == 0
  end

  test "area - when the width is not specified should take 1 as width value" do
    assert Geom.area(6) == 6
    assert Geom.area(12) == 12
    assert Geom.area(33) == 33
  end

  test "area - when length and width are not specified should return 1" do
    assert Geom.area() == 1
  end
end