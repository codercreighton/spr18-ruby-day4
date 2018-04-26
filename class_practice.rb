class Person

	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end	


##### No longer need these methods to read or change the values of our instant variables since we are using attribute accessors.#########
	# def name
	# 	@name
	# end
	
	# def age
	# 	@age
	# end	

	# def birthday
	# 	@age += 1
	# end
	
	# def change_name(name)	
	# 	@name = name	
	# end	

end


person_array = []

completion = false


puts "Enter information. Type done when complete."
while completion == false

	print "Name: "
	name = gets.chomp.upcase	

		if name == "DONE"
			completion == true
			break
		end
	print "Age: "
	age = gets.chomp.to_i	
	new_profile = Person.new(name,age)

	person_array.push(new_profile)
end	

puts "Entries have been recorded."


#puts person_array[0].name
person_array.each do |person|
	puts "This is #{person.name}, they are #{person.age} years old"
end	


# person1 = Person.new("Heather", 43)

# puts "My name is #{person1.name} and I am #{person1.age}-years-old."
# puts "Today I am #{person1.age} years old."
# person1.age = 44
# puts "Tomorrow is my birthday and I'll be #{person1.age} years old."

# puts "My name used to be #{person1.name}."
# person1.name = "Mrs. Creighton"

# puts "You may now call me #{person1.name}."












# class User
# 	def initialize(name, dob,location)
# 		@name = name
# 		@dob = dob
# 		@location = location
# 	end	

# end	

# user1 = User.new("Joe", "01/04/2000", "Atlanta")


# Create a method for the Pet class to return the animal's sound.

# class Pet

# 	attr_accessor :name, :breed, :age
# 	def initialize(name, breed, age)
# 		@name = name
# 		@breed = breed
# 		@age = age
# 	end


# 	def sound
# 		case @breed
# 			when "cat" then return "meow!"
# 			when "dog" then return "woof!"
# 			when "pig" then return "oink!"
# 			when "horse" then return "neigh!"
# 			when "wolf" then return "hooooowl!"	
# 			else 
# 				puts "I don't know that animal sound"	
# 		end		
# 	end	
# end



# 	pet1 = Pet.new("Fluffy", "cat", 3)
# 	pet2 = Pet.new("Rover", "dog", 4)
# 	pet3 = Pet.new("Oinky", "pig", 1)


# 	puts "#{pet1.name} is a #{pet1.breed} and makes the sound #{pet1.sound}"
# 	puts "#{pet2.name} is a #{pet2.breed} and make the sound #{pet2.sound}"






# class Product

# 	attr_reader :name, :category
# 	attr_accessor :quantity, :price

# 	def initialize(name, category,quantity, price)
# 		@name = name
# 		@category = category
# 		@price = price
# 		@quantity = quantity
# 	end

# 	def change_quantity(amount)
# 		@quantity = amount
# 	end	

# end		


# new_product = Product.new("chair", "furniture", 20, 19.99)

# puts "#{new_product.name}, #{new_product.category}, #{new_product.quantity}, $#{new_product.price}"

# new_product.change_quantity(15)

# puts "#{new_product.name}, #{new_product.category}, #{new_product.quantity}, $#{new_product.price}"


# class Vehicle

# 	attr_reader :make, :model, :year
# 	attr_accessor :color, :price
# 	def initialize(make, model, color, price, year)
# 		@make = make
# 		@model = model
# 		@color = color
# 		@price = price
# 		@year = year	
# 	end	

# 	def discount(amount)
# 		@price -= amount
# 	end
	
# 	def increase(amount)
# 		@price += amount
# 	end

# 	def new_color(new_color)
# 		@color = 	new_color
# 	end	

# end

# car1 = Vehicle.new("Honda", "Odyssey", "Gray", 1000000, 2018)

# puts " #{car1.make}, #{car1.model}, #{car1.color}, $#{car1.price}, #{car1.year}"

# puts "The price of the #{car1.model} has dropped to $#{car1.discount(100000)}."

# puts "The color or the #{car1.model} was #{car1.color}, now it's #{car1.new_color("blue")}."