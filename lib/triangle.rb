class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    #self.valid?
    
  end

  def kind

    if !self.valid?
    # length_array = [length1, length2, length3]
    # length_array.sort!
    # if (length_array.any?{|i| i == 0}) || length_array[0] + length_array[1] <= length_array[2]
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
    #puts "length array is #{length_array}"
    #if (length1 <= 0 || length2 <= 0 || length3 <= 0) || (length1 + length2 <= length3 || length1 + length3 <= length2 || length2 + length3 <= length1)
    if length_array.any?{|i| i == 0}
      return false
    elsif length_array[0] + length_array[1] <= length_array[2]
      return false
      # begin
      #   raise TriangleError
      # rescue TriangleError => error 
      #   return error.message 
      # end
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
