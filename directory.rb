def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  puts "First enter your name, then your hobbies, then your country of birth, and finally your height"

  students = []
  name, hobbies, country_of_birth, height = gets.chomp, gets.chomp, gets.chomp, gets.chomp

  while !name.empty? do
    students << {name: name, hobbies: hobbies, country_of_birth: country_of_birth, height: height, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    break if name.empty?
    hobbies, country_of_birth, height = gets.chomp, gets.chomp, gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, hobbies are #{student[:hobbies]}, country of birth is #{student[:country_of_birth]}, height is #{student[:height]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
