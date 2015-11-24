require "singleton"

=begin
This example uses the default Singleton module given by ruby.
The module overrides the methods required to exhibit the Singleton pattern.
=end

class SingletonPatternExample1
  include Singleton

  def initialize
    puts "Calling initialize"
  end

  def method
    puts "Singleton module handles the overrides of methods necessary to create a singleton pattern"
    puts "instance object #{self}"
  end
end

instance1 = SingletonPatternExample1.instance
instance2 = SingletonPatternExample1.instance
instance1.method
instance2.method

if(instance1 == instance2)
  puts "instance1 and instance2 are same instance"
end
