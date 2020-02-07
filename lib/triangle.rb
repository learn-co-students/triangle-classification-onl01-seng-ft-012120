class Triangle
  # write code here	  # write code here
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind

    if !self.valid?
        raise TriangleError
    elsif length1 == length2 && length2 == length3 
      return :equilateral
    elsif length1 == length2 || length2 == length3 || length3 == length1
      return :isosceles
    elsif length1 != length2 && length2 != length3
      return :scalene
    end

  end

  def valid?
    length_array = [length1, length2, length3]
    length_array.sort!
    if length_array.any?{|i| i == 0}
      return false
    elsif length_array[0] + length_array[1] <= length_array[2]
      return false
    else 
      return true
    end
  end

  class TriangleError < StandardError
    def message
    "must give valid triangle lengths"
    end
  end


end