defmodule DijkstraTest do
  use ExUnit.Case, async: true
  use ExUnit.Parameterized

  test_with_params "gcd - when the values are specified should return correct result",
    fn (m, n, expected) ->
      assert Dijkstra.gcd(m, n) == expected
    end do
      [
        {8, 4, 4},
        {3, 2, 1},
        {99, 31, 1},
        {16, 48, 16},
        {9, 15, 3}
      ]
    end
end