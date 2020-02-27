class Triangle
  # write code here
  
  def initialize(lenght_1, lenght_2,length_3)
    
    @length_3 = length_3
    @lenght_2 = lenght_2
    @lenght_1 = lenght_1
    
   end
  def kind ()
    
    if (@lenght_1 + @lenght_2 <= @length_3)||(@length_3 + @lenght_2 <= @lenght_1)||(@lenght_1 + @length_3 <= @lenght_2)
      
      raise TriangleError
      
      elsif (@lenght_2 <= 0) ||(@lenght_1 <= 0) || (@length_3 <= 0)
       
      raise TriangleError
       
      
    else
    
         if (@lenght_1== @lenght_2) && (@lenght_2==@length_3)
    
           :equilateral
           
         elsif   (@length_3 == @lenght_2)||(@lenght_2 == @lenght_1)||(@lenght_1==@length_3)
         
          :isosceles
          
         elsif (@length_3 !=@lenght_2)&&(@lenght_2 !=@lenght_1)&&(@lenght_1!=@length_3)
         
          
             :scalene
         end
    
    
  end

  end
  end 
    class TriangleError < StandardError
       
       
         end
