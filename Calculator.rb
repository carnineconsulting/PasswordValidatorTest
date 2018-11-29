class Calculator

   def initialize()
      @sum = 0
   end
   

   def sum_array(ary,delimiter)
     stringInput=ary[0]
     stringInput = stringInput.gsub(" ", "#{delimiter}")
     printableString = stringInput.scan(/[[:print:]]/).join.split("#{delimiter}")
     
     printableString.each do |i|
        if not i.instance_of? Integer
          i = i.to_i
        end
        @sum = @sum + i    
     end
     return @sum
   end
end
