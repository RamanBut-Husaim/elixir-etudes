defmodule Geom do
  @moduledoc false

  def area(x, y) when is_number(x) and is_number(y) do
    x * y
  end
end