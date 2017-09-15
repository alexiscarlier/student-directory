def input_students
  puts "Please enter the names of the students and their cohorts"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp
  cohort = gets.chomp
  possible_cohorts = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  while !name.empty? do
    cohort = "No cohort" unless possible_cohorts.include?(cohort)
    students << { name: name.to_sym, cohort: cohort.to_sym }
    puts "Now we have #{students.count} students"
    name = gets.chomp
    break if name.empty?
    cohort = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
