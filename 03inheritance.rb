class One

  # short cut to define accessors for last name
  # separate for reader and writer so you can have
  # some special behavior in reader/writer such
  # as validation or conversion if needed
  attr_reader :lastname
  attr_writer :lastname

  # static variable to keep track of number of instances
  @@num = 0
  
  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
    
    # increment number every time a new object is created
    # of this class or subclasses
    @@num += 1
  end
  
  # verbose accessors
  def firstname
    return @firstname
  end
  
  def firstname=(aFirstname)
    @firstname = aFirstname
  end
  
  def num
    return @@num
  end
  
end

# inheritance
class Two < One
  TEN = 10
  
  # one line way to define both read/write accessor
  attr_accessor :age
  
  def initialize(firstname, lastname, age)
    # call parent class constructer
    super(firstname, lastname)
    @age = age
  end
  
end

# each class is open and can be modified at any time
# this includes Ruby's own base classes
class One
  def to_s
    "So far #{num}"
  end
end

one = One.new("dave", "bhoite")
puts one.num

two = Two.new("archna", "yadav", 16)
puts one.num

puts one.inspect
puts "#{two.firstname} #{two.lastname} #{two.age}"
puts two
puts "Constant #{Two::TEN}"