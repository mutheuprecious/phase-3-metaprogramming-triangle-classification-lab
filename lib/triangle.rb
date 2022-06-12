class Triangle
  # write code here
  def initialize(side, side1, side2)
    @side = side
    @side1 = side1
    @side2 = side2
  end

  def kind
    triangle = [@side, @side1, @side2].uniq
    p triangle
    if(@side > 0 && @side1 > 0 && @side2 > 0) && ((@side + @side1) > @side2 && (@side + @side2) >  @side1 && (@side1 + @side2) > @side)
      if triangle.length == 1
        :equilateral
      elsif triangle.length == 2
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
  end
end

Triangle.new(5, 4, 2).kind

