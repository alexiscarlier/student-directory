def input_students
  puts "Please enter the names of the students and their cohorts"
  puts "To finish, just hit return twice"

  students = []
  name = gets.strip
  cohort = gets.strip
  possible_cohorts = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  while !name.empty? do
    cohort = "No cohort" unless possible_cohorts.include?(cohort)
    students << { name: name.to_sym, cohort: cohort.to_sym }
    puts "Now we have 1 student" if students.count == 1
    puts "Now we have #{students.count} students" if students.count != 1
    name = gets.strip
    break if name.empty?
    cohort = gets.strip
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  if students.count > 0
    grouped_cohorts = students.map { |student| student[:cohort] }.uniq
    grouped_cohorts.each do |cohort|
      students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)" if cohort == student[:cohort]
      end
    end
  end 
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
