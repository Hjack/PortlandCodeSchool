Item 1

push code to github done as first step.

demonstrate syntax:

class Class

  def initialize
    @instance_variable = [] #instance variable here is set to empty array
  end

  variable_scoped_to_class_points_to_hash = { "key" => "value", "key2" => "value2"}

  @instance_variable = [1,2,3] # now array has some integers

  def self.method_name
    variable_scoped_to_method = 0 #variable local to method
    10.times do
      puts "not related"
    end
    return variable_scoped_to_method  #explicit return instead of default
  end

  def instance_method_name
    do
      instance method stuff here
    end
    do
      other instance method stuff here
    end
  end # will return last process by default

  case optional_case input
  when this is true then do this code
  when this is true then do this code
  when this is true then do this code
  else do this
  end

  if this is true
    do this code
    else do this code
  end

  @instance_variable.each {|e| puts e} # will log each of the items in array to console

end

some common iterators:

  .each, .each_char, .scan,

boolean:

  puts true != true #will return false
  puts true != false #will return true
  puts true == true #will return true
  puts true == true && true == false #will return false
  puts true == true || true == false #will return true

  ArgumentError can let you know you have too many or few arguments input to your methods or classes or if they are of the wrong type altogether
  NoMethodError will often let you know that you have no method

example = Class.new(argument_error_creator) #lets create an argument error of to many arguments
example.instance_method_name #an example of calling an instance method

puts Class.method_name #calling a class method
puts Class.instance_method_name #will throw an error i think



some testing:

class TestingSuite < Minitest::Unit::TestCase

  def test_case_name
    assert_equal 1, 2-1
  end

    def test_case_name_2
      assert 1 != 2
    end
end
_______________________

# things i know i need to work on:

# memorizing the different steps for algorithm creating and pairing strategies and troubleshooting steps
# i also will be cracking into gbd debuggers.
# when i get nil:NilClass errors i can get a bit thrown.
# having the list from chuck that related to money.rb errors really helped
____________________

all above without looking anything up - time to double check myself :)

i still struggle with unless for some reason:

code unless conditional
________________________





