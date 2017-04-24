class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
    dimensions = [@side1, @side2, @side3].sort
    dimensions[2].<(dimensions[0].+(dimensions[1]))
  end

end
