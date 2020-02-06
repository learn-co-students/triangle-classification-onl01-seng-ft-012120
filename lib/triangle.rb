class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if @a > 0 && @b > 0 && @c > 0
      if (@a + @b) > @c && (@a + @c) > @b && (@b + @c) > @a
        if ((@a == @b) && (@a == @c) && (@b == @c))
          :equilateral
        elsif ((@a == @b) || (@a == @c) || (@b == @c))
          :isosceles
        else
          :scalene
        end
      else
        raise TriangleError
      end
    end
  end
  
  class TriangleError < StandardError
  end
end