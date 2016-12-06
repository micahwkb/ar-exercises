require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

Store.find(3).destroy

puts "Now you have #{Store.count} stores in the database"
puts '-------------------------'