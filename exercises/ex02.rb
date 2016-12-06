def input_students
puts "Please enter the names of the student"
puts "to finish, just hit return twice"
#create an empty array
students = []
#get the first names
name = gets.chomp
#while the name is not empty repeat this code
puts "what is her hobby?"
hobby = gets.chomp
puts "what is the age"
age = gets.chomp
while !name.empty? do
# add the student hash to the array
students << {name: name, hobby:hobby, age:age, cohort: :november}
puts "Now we have #{students.count} students"
#get another name from the user
name = gets.chomp
puts "hobby?"
hobby = gets.chomp
puts "age?"
age = gets.chomp
end
#return the array of students
students
end

def print_header
  puts "The students of Villains Academy"
  puts "------------"
end

def print(students)
  i = 0
  while i < students.length do
  puts "#{students[i][:name]} hobby #{students[i][:hobby]} age #{students[i][:age]} (#{students[i][:cohort]} cohort)"
    i = i + 1
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
