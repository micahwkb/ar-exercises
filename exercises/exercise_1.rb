require_relative '../setup'

puts "Exercise 1"
puts "----------"

@s1 = Store.create(
  name: 'Burnaby',
  annual_revenue: 300_000,
  mens_apparel: true,
  womens_apparel: true
)
@s3 = Store.create(
  name: 'Gastown',
  annual_revenue: 140_000,
  mens_apparel: true,
  womens_apparel: false
)
@s2 = Store.create(
  name: 'Richmond',
  annual_revenue: 1_260_000,
  mens_apparel: false,
  womens_apparel: true
)

puts Store.count