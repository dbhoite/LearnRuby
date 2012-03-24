# Comments begin with pound symbol, everything after pound is ignored
=begin
  multiline comments can be nested within =begin and =end 
  and these need to be at the beginning of the line
=end

# each line ends with \n instead of ; as in java
# if the line is incomplete ruby will continue to parse even after line break

# print command prints string without \n
print "Enter your name: "

# gets command gets a string until user hits return key
name = gets()

# puts command adds \n to the string
# #{} evaluates the expression
puts "Hello, #{name}"

print "Enter price of item: "

# get rid of the parenthesis for readability
str = gets

# to_f function converts to a string to float, returns 0.0 if string is invalid number
price = str.to_f

# function is enclosed in def/end
# parameters can appear after the function name with or without parenthesis
def calcTaxes price
  taxrate = 0.95
  return taxrate * price
end

# call function to calculate taxes
# needs to be defined before using
taxes = calcTaxes(price)

puts "total is #{taxes + price}"
