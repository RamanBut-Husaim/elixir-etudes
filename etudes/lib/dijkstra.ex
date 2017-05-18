defmodule Dijkstra do
  @moduledoc """
  Recursive function for calculating GCD of two numbers using
  Dijkstra's algorithm.
  """

  @doc """
  Calculates the greatest common divisor of two integers.
  Uses Dijkstra's algorithm, which does not require any division.
  """

  @spec gcd(number(), number()) :: number()

  def gcd(n, n) do
    n
  end

  def gcd(m, n) when m > n do
    gcd(m - n, n)
  end

  def gcd(m, n) do
    gcd(m, n - m)
  end
end