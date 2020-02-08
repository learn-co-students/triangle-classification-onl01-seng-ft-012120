class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end 
  
  def kind 
    is_the_triangle_valid
    if @side_a == @side_b && @side_a == @side_c
      return :equilateral
      
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      return :isosceles
      
    else
      return :scalene
    end 
  end 
  
  def is_the_triangle_valid 
    if !(@side_a + @side_b > @side_c) || !(@side_a + @side_c > @side_b) || !(@side_b + @side_c > @side_a)
      
      raise TriangleError
    end 
  end 
    
  
  class TriangleError < StandardError 
    
  end 
end
