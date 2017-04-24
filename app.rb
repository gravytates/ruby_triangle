require('sinatra')
require('sinatra/reloader')
require('./lib/triangle.rb')
also_reload('/lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangle') do
  side1 = params.fetch('side1')
  side2 = params.fetch('side2')
  side3 = params.fetch('side3')
  @new_triangle = Triangle.new(side1, side2, side3)
  # case which
  #   when new_triangle.triangle?.==(false)
  #     'not a complete triangle'
  #   when new_triangle.equilateral?
  #     'equilateral'
  #   when dimensions.isoceles?
  #     'isoceles'
  #   else
  #     "scalene"
  # end
  erb(:triangle)
end

define_method(:which?) do
  result = 'scalene'
  dimensions = [@side1, @side2, @side3]
  if dimensions.triangle?
    if dimensions.equilateral?
      result = 'equilateral'
    elsif dimensions.isoceles?
      result = 'isoceles'
    end
  else
    result = 'not a triangle'
  end
  result
end
