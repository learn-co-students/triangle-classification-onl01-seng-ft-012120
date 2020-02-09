require 'pry'
class Triangle
  class TriangleError < StandardError
    def message
      "The current side lengths do not currently create a triangle. Please make sure side lengths are \n 1/) Greater than 0 \n 2/) That the sum of any two sides is greater than the third side."
    end
  end
  
  attr_accessor :a, :b, :c
  
 
  @@sides = []
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c
    @@sides = [a,b,c]
  end
  
  def kind
    if @@sides.max < @@sides.sum/2.0 && @@sides.each{|side| side > 0}
      if a == b && b == c 
        :equilateral
      elsif a == b && b != c 
        :isosceles
      elsif b == c && c != a
        :isosceles
      elsif a == c && c != b 
        :isosceles
      elsif a != b && b != c 
        :scalene
      end
    else
        raise TriangleError
    end
  end
end

