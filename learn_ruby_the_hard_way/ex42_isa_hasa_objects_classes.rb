# In Ruby classes act as templates that "mint" new objects, similar to how coins were minted using a die (template).

## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a(n) Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a(n) Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a person
class Employee < Person

  def initialize(name, salary)
    ## Employee has-a super(name) ## ?? hmm what is this strange magic?
    super(name) # The super keyword checks all the way up the ancestry tree to find the inherited method.
    ## Employee has-a salary
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

class Salmon < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## Mary is-a Person
mary = Person.new("Mary")

# Mary has-a pet Satan is-a pet
mary.pet = satan

## Frank is-a(n) Employee, Frank has-a(n) income
frank = Employee.new("Frank", 120000)

## Frank has-a pet. Rover is-a pet
frank.pet = rover

## Flipper is-a fish
flipper = Fish.new()

## Crouse is-a Salmon
crouse = Salmon.new()

## Harry is-a halibut
harry = Halibut.new()
