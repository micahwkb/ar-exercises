require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum('annual_revenue')
number_stores = Store.count
high_volume_stores = Store.where("annual_revenue > ?", 1_000_000).size

puts "The total revenue for all stores is: #{total_revenue}"
puts "The average revenue per store is: #{total_revenue / number_stores}"
puts "High-volume stores earning > $1M annually: #{high_volume_stores}"