class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1.to_i
    @side2 = side2.to_i
    @side3 = side3.to_i
  end

  define_method(:triangle?) do
    dimensions = [@side1, @side2, @side3].sort
    dimensions[2].<(dimensions[0].+(dimensions[1]))
  end

  define_method(:equilateral?) do
    [@side1, @side2, @side3].uniq.length.==(1)
  end

  define_method(:isoceles?) do
    [@side1, @side2, @side3].uniq.length.==(2)
  end

end
