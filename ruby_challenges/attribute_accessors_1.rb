class Dog

  attr_writer :dog_name, :owner_name
  attr_reader :dog_name, :owner_name

  def bark
    return "ruff ruff ruff"
  end
end

my_dog = Dog.new
my_dog.dog_name= "Barney"
dog_name = my_dog.dog_name
puts "#{dog_name} says #{my_dog.bark}."
