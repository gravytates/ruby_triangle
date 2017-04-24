require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do

    it('check if three sides equal a triangle') do
      new_triangle = Triangle.new(5,5,7)
      expect(new_triangle.triangle?).to(eq(true))
    end

    it('check if triange is equilateral') do
      new_triangle = Triangle.new(5,5,5)
      expect(new_triangle.equilateral?).to(eq(true))
    end

  end
end
