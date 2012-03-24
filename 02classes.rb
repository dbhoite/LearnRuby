# global variables begin with $
$talk = 'Woof!'

# classes
class Dog
  def set_name name
    @name = name  # instance variables begin with @ and need not be declared
  end
  
  def get_name
    return @name
  end
  
  def talk
    return $talk
  end
end

class Cat
  # constructor
  def initialize (name, talk)
    @name = name
    @talk = talk
  end
  # override default to_s method
  def to_s
    "#{@name} says #{@talk}"
  end
end

# new method to create new instance
mydog = Dog.new
mydog.set_name('Buddy')
yourcat = Cat.new("Julie","Meow!")

puts "My dog #{mydog.get_name} says #{mydog.talk}"
puts "Your cat #{yourcat}"
# inspect dumps internal state of object
puts "#{mydog.inspect}"
# shortcut to 
p(yourcat)
