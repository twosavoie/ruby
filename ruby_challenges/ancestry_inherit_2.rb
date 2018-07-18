class Pet

	def set_name=(pet_name)
		@name = pet_name
	end

	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

  def set_sound=(pet_sound) #in sk script, they used parent/child class see ancestry_inherit_3_sk.rb
    @pet_sound = pet_sound
  end

	def get_sound
		return @pet_sound
	end

end



my_ferret = Pet.new
my_ferret.set_name= "Fredo"
ferretname = my_ferret.get_name
my_ferret.set_sound= "squeeee"
ferret_sound = my_ferret.get_sound

my_parrot = Pet.new
my_parrot.set_name= "Budgie"
parrotname = my_parrot.get_name
my_parrot.set_sound= "tweet"
parrot_sound = my_parrot.get_sound

my_chinchilla = Pet.new
my_chinchilla.set_name= "Dali"
chinchillaname = my_chinchilla.get_name
my_chinchilla.set_sound= "eeeep"
chinchilla_sound = my_chinchilla.get_sound

puts "#{ferretname} says #{ferret_sound},
#{parrotname} says #{parrot_sound},
and #{chinchillaname} says #{chinchilla_sound}."

puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect
