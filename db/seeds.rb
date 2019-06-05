require('pry')
require_relative('../models/student')
require_relative('../models/house')

house1 = House.new({
  "name" => "Gryffindor"
  })

house2 = House.new({
  "name" => "Ravenclaw"
  })

house3 = House.new({
  "name" => "Hufflepuff"
  })

house4 = House.new({
  "name" => "Slytherin"
  })

house1.save
house2.save
house3.save
house4.save

Student.delete_all()

student1 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house" => house1.id,
  "age" => "13"
  })

student2 = Student.new({
  "first_name" => "Malfoy",
  "last_name" => "Draco",
  "house" => house4.id,
  "age" => "13"
  })

student3 = Student.new({
  "first_name" => "Luna",
  "last_name" => "Lovegood",
  "house" => house2.id,
  "age" => "12"
  })

student4 = Student.new({
  "first_name" => "Fred",
  "last_name" => "Weasley",
  "house" => house1.id,
  "age" => "14"
  })

student1.save
student2.save
student3.save
student4.save

binding.pry
nil

# "Gryffindor", "Ravenclaw", "Hufflepuff" "Slytherin"
