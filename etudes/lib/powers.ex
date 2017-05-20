defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]
  @moduledoc false

  def raise(_x, 0) do
    1
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end

  def raise(x, n) do
    raise(x, n, 1)
  end

  defp raise(_x, n, accumulator) when n == 0 do
    accumulator
  end

  defp raise(x, n, accumulator) do
    raise(x, n - 1, accumulator * x)
  end
end