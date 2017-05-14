defmodule Geom do
  @moduledoc false

  def area(length \\ 1, width \\ 1) when is_number(length) and is_number(width) do
    length * width
  end
end