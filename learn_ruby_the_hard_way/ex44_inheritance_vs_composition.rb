# https://learnrubythehardway.org/book/ex44.html

# In Ruby classes act as templates that "mint" new objects, similar to how coins were minted using a die (template).

# MOST OF THE USES OF INHERITANCE CAN BE SIMPLIFIED OR REPLACED WITH COMPOSITION, AND I'LL SHOW YOU HOW IN THIS EXERCISE.

# Inheritance
class Parent

  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()


#This is the same as the Child.altered example above, except I'm setting some variables in the initialize before having the Parent initialize with its Parent.initialize.
class Child < Parent
  def initialize(stuff)
    @stuff = stuff
    super()
  end
end

# Composition - replicated by just calling functions in a module
class Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child

  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

# I could then ask myself if I need this Other to be a class, and could I just make it into a module named other.rb?

# Ruby has another way to do composition using modules and a concept called mixins. You simply create a module with functions that are common to classes and then include them in your class similar to using a require. Here's this same composition example done using modules and mixins.

module Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child
  include Other # when run ready Other is not a module ???

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

#Use composition to package up code into modules that are used in many different unrelated places and situations.

#Use inheritance only when there are clearly related reusable pieces of code that fit under a single common concept or if you have to because of something you're using.
