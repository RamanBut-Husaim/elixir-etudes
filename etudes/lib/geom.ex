defmodule Geom do
  @moduledoc """
  Module with functions to calculate area for a geometric shape.
  """

  @doc """
  Calculates the area of a rectangle, given the length and width.
  Returns the product of its arguments. The default value for
  both arguments is 1.
  """
  @spec area(number(), number()) :: number()
  def area(length \\ 1, width \\ 1) when is_number(length) and is_number(width) do
    length * width
  end
end