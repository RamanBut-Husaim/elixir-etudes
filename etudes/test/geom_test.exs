defmodule GeomTest do
  use ExUnit.Case, async: true
  use ExUnit.Parameterized

  test_with_params "area - when a rectangle is specified should return correct result",
    fn (length, width, expected) ->
      assert Geom.area(:rectangle, length, width) == expected
    end do
      [
        {4, 5, 20},
        {1, 5, 5},
        {8, 2, 16}
      ]
    end

  test_with_params "area - when a triangle is specified should return correct result",
    fn (base, height, expected) ->
      assert Geom.area(:triangle, base, height) == expected
    end do
      [
        {4, 5, 10.0},
        {2, 5, 5.0},
        {8, 2, 8.0}
      ]
    end

  test_with_params "area - when an ellipse is specified should return correct result",
    fn (major_radius, minor_radius, expected) ->
      assert_in_delta Geom.area(:ellipse, major_radius, minor_radius), expected, 0.1
    end do
      [
        {4, 5, 62.8},
        {2, 5, 31.4},
        {8, 2, 50.24}
      ]
    end
end