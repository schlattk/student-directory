student_count = 11
#first we print the list of students
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"]
#and then print them
puts "The students of Villains Academy"
puts "----------------"
students.each do |student|
  puts student
end

print "Overall, we have #{students.count} great students"
#it's important that print() doesn't add new line characters
