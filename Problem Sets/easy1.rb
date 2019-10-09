# Easy 1 - OO Programming
# -------------------------

# 1 - Banner Class 
# class Banner
#   def initialize(message, width=0)
#     @message = message
#     @width = width
#   end

#   def to_s
#     if @width > 80
#       "Your width is too big!"
#     elsif @width < @message.size
#       "Your width is too small!"
#     else
#       [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#     end
#   end

#   private

#   def horizontal_rule
#     if @width > 0
#       "+#{'-' * @width}+"
#     else
#       "+#{'-' * (@message.length + 2)}+"
#     end
#   end

#   def empty_line
#     if @width > 0
#       "|#{' ' * @width}|"
#     else
#       "| #{' ' * (@message.length)} |"
#     end
#   end

#   def message_line
#     if @width > 0
#       "|#{@message.center(@width)}|"
#     else
#       "| #{@message} |"
#     end
#   end
# end

# banner = Banner.new('I like turtles.', 10)
# puts banner

# 2 - What's the Output
# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     "My name is #{@name.upcase}."
#   end
# end

# name = 42
# fluffy = Pet.new(name)
# name += 1
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

# 3 - Fix the Program - Books (Part 1)
# class Book
#   attr_reader :author, :title

#   def initialize(author, title)
#     @author = author
#     @title = title
#   end

#   def to_s
#     %("#{self.title}", by #{self.author})
#   end
# end

# book = Book.new("Neil Stephenson", "Snow Crash")
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)

# 4 - Fix the Program - Books (Part 2)
# class Book
#   attr_accessor :author, :title
#   def to_s
#     %("#{self.title}", by #{self.author})
#   end
# end

# book = Book.new
# book.author = "Neil Stephenson"
# book.title = "Snow Crash"
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)

# 5 - Fix the Program - Persons
# class Person
#   def initialize(first_name, last_name)
#     @first_name = first_name.capitalize
#     @last_name = last_name.capitalize
#   end

#   def first_name=(first_name)
#     @first_name = first_name.capitalize
#   end

#   def last_name=(last_name)
#     @last_name = last_name.capitalize
#   end

#   def to_s
#     "#{@first_name} #{@last_name}"
#   end
# end

# person = Person.new('john', 'doe')
# puts person

# person.first_name = 'jane'
# person.last_name = 'smith'
# puts person

# 6 - Fix the Program - Flight Data

# 7 - Buggy Code - Car Mileage 
# class Car
#   attr_accessor :mileage

#   def initialize
#     self.mileage = 0
#   end

#   def increment_mileage(miles)
#     total = mileage + miles
#     self.mileage = total
#   end

#   def print_mileage
#     puts mileage
#   end
# end

# car = Car.new
# car.mileage = 5000
# car.increment_mileage(678)
# car.print_mileage  # should print 5678

# 8 - Rectangles and Squares 
# class Rectangle
#   def initialize(height, width)
#     @height = height
#     @width = width
#   end

#   def area
#     @height * @width
#   end
# end

# class Square < Rectangle
#   def initialize(height_width)
#     super(height_width, height_width)
#   end
# end

# square = Square.new(5)
# puts "area of square = #{square.area}"

# 9 - Complete the Program - Cats!
# class Pet
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# class Cat < Pet
#   def initialize(name, age, colors)
#     super(name, age)
#     @colors = colors
#   end

#   def to_s
#     "My cat #{@name} is #{@age} years old and has #{@colors} fur."
#   end
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch

# 10 - Refactoring Vehicles
# class Vehicle
#   attr_reader :make, :model

#   def initialize(make, model)
#     @make = make
#     @model = model
#   end
  
#   def to_s
#     "#{make} #{model}"
#   end
# end

# class Car < Vehicle
#   def wheels
#     4
#   end
# end

# class Motorcycle < Vehicle
#   def wheels
#     2
#   end
# end

# class Truck < Vehicle
#   attr_reader :payload

#   def initialize(make, model, payload)
#     super(make, model)
#     @payload = payload
#   end

#   def wheels
#     6
#   end
# end