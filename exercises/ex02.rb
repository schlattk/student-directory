def input_students
puts "Please enter the names of the student"
puts "to finish, just hit return twice"
#create an empty array
students = []
#get the first names
name = gets.chomp
puts "what is her hobby?"
hobby = gets.chomp
puts "what is the age"
age = gets.chomp
puts "What is her cohort?"
cohort = gets.chomp
if cohort == "november" || cohort == "december" || cohort == "january"
else
2.times do
puts ("please put a valid cohort name")
cohort = gets.chomp
end
cohort = "november"
end
while !name.empty? do
# add the student hash to the array
students << {name: name, hobby:hobby, age:age, cohort: cohort.to_sym}
if students.count == 1
puts "Now we have 1 student"
else
puts "Now we have #{students.count} students"
end
#get another name from the user
name = gets.chomp
puts "hobby?"
hobby = gets.chomp
puts "age?"
age = gets.chomp
puts "cohort"
cohort = gets.chomp
if !name.empty?
if cohort == "november" || cohort == "december" || cohort == "january"
else
2.times do
puts ("please put a valid cohort name")
cohort = gets.chomp
end
cohort = "november"
end
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
  puts "which cohort would you like to print"
  group = gets.chomp.to_sym
  group_list = []
  students.each do |students|
  if students[:cohort] == group
      group_list.push(students)
    end
  end


  i = 0
  while i < group_list.length do
  puts "#{(group_list[i][:name]).center(20)} #{('hobby:' + group_list[i][:hobby]).center(20)} #{('age:' + group_list[i][:age]).center(10)} (#{((group_list[i][:cohort]).to_s + ' cohort').center(20)})"
    i = i + 1
  end
end


def print_footer(students)
if students.count == 1
puts "Overall, we have #{students.count} great student"
else
puts "Overall, we have #{students.count} great students"
end
end

students = input_students
if students.count > 0
print_header
print(students)
print_footer(students)
else
puts "There are no students"
end
