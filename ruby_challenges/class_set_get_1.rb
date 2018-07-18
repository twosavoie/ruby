class Dog

  def set_name=(dog_name)
    @doggie_name = dog_name
  end

  def get_doggie_name
    return @doggie_name
  end

  def set_owner=(owner_name)
    @owner_name = owner_name
  end

  def get_owner
    return @owner_name
  end

  def bark
    return "ruff ruff ruff"
  end
end

my_dog = Dog.new
my_dog.set_name= "Barney"
dog_name = my_dog.get_doggie_name
puts "#{dog_name} says #{my_dog.bark}."
