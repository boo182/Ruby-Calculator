 #! /usr/bin/env ruby

require_relative "calculator/version"
require_relative "Calculate.rb"


module Calculator
 

def calculator
  puts "Calculator 1.0 \nEnter 'q' to quit. Don't forget spaces between your entries"

  while true
    print "*/*/ "

    str = gets.chomp.split(" ")
  
   
    return if str[0] == 'quit'      # quit if first element is 'q'
    
    str.each_with_index do |v, i|
    	if /[a-z]/.match(v)
    		ope = v.split("(").first
    		nbr = v.split("(").last.chop.to_i
    		value = Math.send(ope, nbr)
    		str[i] = value
    		
   		 end

end
res = str.join(" ")
puts res.calc
   

 end
end
end






class Includer
  include Calculator
end

Includer.new.calculator





# def calculator
#   puts "Calculator 1.0 \nEnter 'q' to quit."

#   while true
#     print ">> "

#     str = gets.chomp.split(" ") # splits into array, rejects blanks
#     return if str[0] == 'q'      # quit if first element is 'q'

# 	print str.calculate



# end
   
  

# end


    # operand1 = str[0].to_i
    # operand2 = str[2].to_i
    # operator = str[1].to_sym

    # case operator
    # when :+ then puts operand1 + operand2
    # when :- then puts operand1 - operand2
    # when :* then puts operand1 * operand2
    # when :/ then puts operand1 / operand2
    # when :% then puts operand1 % operand2
    # else
    #   puts "invalid input"
    # end