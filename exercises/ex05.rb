@students = []

def interactive_menu
  loop do
  print_menu
  process(STDIN.gets.chomp)
  end
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students(ask_file_name)
    when "4"
      load_students(ask_file_name)
    when "9"
    exit # this will cause the program to terminate
    else
    puts "I don't know what you meant, try again"
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # because we'll be adding more items
end

def show_students
  # show the students
    print_header
    print_students_list
    print_footer
end

def input_students
puts "Please enter the names of the student"
puts "to finish, just hit return twice"
#get the first names
name = STDIN.gets.chomp
#while the name is not empty repeat this code
while !name.empty? do
# add the student hash to the array
update_students(name,"november")
puts "Now we have #{@students.count} students"
#get another name from the user
name = STDIN.gets.chomp
end
end

def save_students(filename)
  # open the file for writing
   file = File.open("students.csv", "w")
   # iterate over the array of students
   @students.each do |student|
     student_data = [student[:name], student[:cohort]]
     csv_line = student_data.join(",")
     file.puts csv_line
   end
   file.close
end




def update_students(name,cohort)
    @students << {name: name, cohort: cohort.to_sym}
end

def ask_file_name
  puts "which file would you like to use"
  filename = STDIN.gets.chomp
end

def load_students(filename = "students.csv")
  if @students.empty?
  lines = []
  file = File.open(filename, "r") do |line|
  line.readlines.each do |items|
  name, cohort = items.chomp.split(',')
  update_students(name,cohort)
    end
  end
  puts "loaded #{@students.count} students from #{filename}"
  else
  puts "#{@students.count}students have already been loaded"
  end
end

def try_load_students
  filename = ARGV.first #first argument from the command line
 return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
  else
    puts "Sorry, #{filename} does not exist."
    exit
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "------------"
end

def print_students_list
  @students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
puts "Overall, we have #{@students.count} great students"
end

try_load_students
interactive_menu
