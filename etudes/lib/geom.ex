defmodule Geom do
  @moduledoc """
  Module with functions to calculate area for a geometric shape.
  """

  @doc """
  Calculates the area of a shape, given the shape and two of the
  dimensions. Returns the product of its arguments for a rectangle,
  one half the product of the arguments for a triangle, and
  :math.pi times the product of the arguments for an ellipse.
  """
  @spec area({atom(), number(), number()}) :: number()
  def area({shape, a, b}) do
    area(shape, a , b)
  end

  @spec area(atom(), number(), number()) :: number()
  defp area(:rectangle, length, width) when length >= 0 and width >= 0 do
    length * width
  end

  defp area(:triangle, base, height) when base >= 0 and height >= 0 do
    base * height / 2.0
  end
  
  defp area(:ellipse, major_radius, minor_radius) when major_radius >= 0 and minor_radius >= 0 do
    :math.pi() * major_radius * minor_radius
  end
end