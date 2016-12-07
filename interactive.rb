def interactive_menu
  students = []
  loop do
  # 1. print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
  # 2. read the input and save it into a variable
  selection = gets.chomp
  # 3. do what the user has asked
  case selection
    when "1"
      students = input_students
    # input the students
    when "2"
    # show the students
      print_header
      print(students)
      print_footer(students)
    when "9"
    exit # this will cause the program to terminate
    else
    puts "I don't know what you meant, try again"
  end
  # 4. repeat from step 1
end
end

def input_students
puts "Please enter the names of the student"
puts "to finish, just hit return twice"
#create an empty array
students = []
#get the first names
name = gets.chomp
#while the name is not empty repeat this code
while !name.empty? do
# add the student hash to the array
students << {name: name, cohort: :november}
puts "Now we have #{students.count} students"
#get another name from the user
name = gets.chomp
end
#return the array of students
students
end

def print_header
  puts "The students of Villains Academy"
  puts "------------"
end

def print(students)
  students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

interactive_menu