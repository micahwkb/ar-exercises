require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

@s4 = Store.create(
  name: 'Surrey',
  annual_revenue: 224_000,
  mens_apparel: false,
  womens_apparel: true
)
@s5 = Store.create(
  name: 'Whistler',
  annual_revenue: 1_900_000,
  mens_apparel: true,
  womens_apparel: false
)
@s6 = Store.create(
  name: 'Yaletown',
  annual_revenue: 430_000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each { |s| puts "#{s.name} - annual revenue: #{s.annual_revenue}" }

@womens_high_volume_stores = Store.where(
  womens_apparel: true,
  annual_revenue: 0..1000000
)
@womens_high_volume_stores.each do |s|
  puts "High-volume women's apparent stores:"
  puts"#{s.name} - annual revenue: #{s.annual_revenue}"
end
