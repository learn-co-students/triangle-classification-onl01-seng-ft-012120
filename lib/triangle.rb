class Triangle
 
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2 
    @side3 = side3 

  end

  def kind
    #check for valid triangle
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2 
      raise TriangleError
    end

    #return triangle type
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 != @side2 && @side2 != @side3 && @side3 != @side1
      :scalene 
    else 
      :isosceles
    end 
  end

  class TriangleError < StandardError
    def message
      "That is not a valid triangle!"
    end
  end

end
