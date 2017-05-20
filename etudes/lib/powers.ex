defmodule Powers do
  import Kernel, except: [raise: 2]
  @moduledoc false

  def raise(_x, 0) do
    1
  end

  def raise(x, 1) do
    x
  end

  def raise(x, n) when n > 0 do
    x * raise(x, n - 1)
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, (-1) * n)
  end
end