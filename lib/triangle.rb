class Triangle
  # write code here
 attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    self.side1 + self.side2 > self.side3 &&
    self.side2 + self.side3 > self.side1 &&
    self.side3 + self.side1 > self.side2
  end
  def kind 
    if self.valid?
      if self.side1 == self.side2 && self.side2 == self.side3
        return :equilateral
      elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
        return :isosceles
      else
        return :scalene
      end

    else
      raise TriangleError
    end
  end



  class TriangleError < StandardError
  end

end

