class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def legal?
    if side_one <= 0 || side_two <= 0 || side_three <= 0
      false
    elsif (side_one + side_two) <= side_three || (side_two + side_three) <= side_one || (side_one + side_three) <= side_two
      false
    else
      true 
    end
  end
      
  
  def kind
    if self.legal?
      if side_one == side_two && side_two == side_three
        :equilateral
      elsif side_one == side_two || side_one == side_three || side_two == side_three
        :isosceles
      else
        :scalene
      end
    else
      raise Triangle::TriangleError
    end
  end
  
  
  class TriangleError < StandardError
    
  end
end
