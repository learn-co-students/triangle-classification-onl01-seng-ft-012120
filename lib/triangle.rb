class Triangle
  
  attr_accessor :equilateral, :scalene, :isosceles
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def kind 
     
    if @side_1 <= 0 || @side_2 <= 0 ||@side_3 <= 0 #each side must be >= 0
      raise TriangleError
    elsif @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3<= @side_1 #sum of 2 side length <= 1 side length 
      raise TriangleError
    end 
     
    
    if @side_1 == @side_2 && @side_2 == @side_3 #equilateral: all sides are the same length side != side  
      :equilateral
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3 #scalene: no sides are the same length side == side
      :scalene
    else @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3  #isosceles: 2 sides are the same length
      :isosceles
    end 
    
  end   
  
  class TriangleError < StandardError
  end  
  
end
