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
puts "What is her cohort?"
cohort = gets.chomp
2.times do
if cohort != "november"
puts ("please put a valid cohort name")
cohort = gets.chomp
end
end
cohort = "november"
while !name.empty? do
# add the student hash to the array
students << {name: name, hobby:hobby, age:age, cohort: cohort.to_sym}
puts "Now we have #{students.count} students"
#get another name from the user
name = gets.chomp
puts "hobby?"
hobby = gets.chomp
puts "age?"
age = gets.chomp
puts "cohort"
cohort = gets.chomp
if !name.empty?
2.times do
if cohort != "november"
puts ("please put a valid cohort name")
cohort = gets.chomp
end
end
cohort = "november"
end
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
  puts "#{(students[i][:name]).center(20)} #{('hobby:' + students[i][:hobby]).center(20)} #{('age:' + students[i][:age]).center(10)} (#{((students[i][:cohort]).to_s + ' cohort').center(20)})"
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
