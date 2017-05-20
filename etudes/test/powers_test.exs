defmodule PowersTest do
  use ExUnit.Case, async: true
  use ExUnit.Parameterized

  test_with_params "raise - when the value is positive - should calculate correctly",
    fn (number, power, expected) ->
      assert Powers.raise(number, power) == expected
    end do
      [
        {2, 5, 32},
        {3, 3, 27},
        {64, 4, :math.pow(64, 4)}
      ]
    end

  test_with_params "raise - when the power is zero - should return 1",
    fn (number) ->
      assert Powers.raise(number, 0) == 1
    end do
      [
        {4},
        {5},
        {7123},
        {8123912}
      ]
    end

  test_with_params "raise - when the power is negative - should calculate correctly",
      fn (number, power, expected) ->
        assert Powers.raise(number, power) == expected
      end do
        [
          {2, -4, :math.pow(2, -4)},
          {3, -3, :math.pow(3, -3)},
          {64, -4, :math.pow(64, -4)}
        ]
      end
end