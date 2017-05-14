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
  @spec area(atom(), number(), number()) :: number()
  def area(:rectangle, length, width) when is_number(length) and is_number(width) do
    length * width
  end

  def area(:triangle, base, height) when is_number(base) and is_number(height) do
    base * height / 2.0
  end
  
  def area(:ellipse, major_radius, minor_radius) when is_number(major_radius) and is_number(minor_radius) do
    :math.pi() * major_radius * minor_radius
  end
end