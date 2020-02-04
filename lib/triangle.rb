class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    valid = true
    type = " "

    if side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      valid = false
      type = nil
    elsif side_1 + side_2 <= side_3 || 
      side_2 + side_3 <= side_1 || side_3 + side_1 <= side_2
      valid = false
      type = nil
    else 
      valid = true
    end

    if valid == false
      raise TriangleError
    end

    if side_1 == side_2 && side_2 == side_3
      type = :equilateral
    elsif side_1 == side_2 && side_2 != side_3 || 
          side_2 == side_3 && side_3 != side_1 ||
          side_3 == side_1 && side_1 != side_2
          # a == b || b == c || a == c
      type = :isosceles
    else
      type = :scalene
    end
    valid 
    type 
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
