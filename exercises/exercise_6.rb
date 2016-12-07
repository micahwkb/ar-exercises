require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@s1.employees.create(
  first_name: 'Bob',
  last_name: 'Bobberson',
  hourly_rate: 60
)
@s1.employees.create(
  first_name: 'Billy',
  last_name: 'Bob',
  hourly_rate: 61
)
@s2.employees.create(
  first_name: 'Andy',
  last_name: 'Anderson',
  hourly_rate: 55
)
@s3.employees.create(
  first_name: 'Chris',
  last_name: 'Christerson',
  hourly_rate: 45
)
# expected to fail, hourly rate too low
@s3.employees.create(
  first_name: 'Tony',
  last_name: 'Antonerson',
  hourly_rate: 25
)

@s3.employees.each { |e| puts "#{e.first_name} #{e.last_name}" }

# puts Employee.find(id).where(first_name: 'Tony')