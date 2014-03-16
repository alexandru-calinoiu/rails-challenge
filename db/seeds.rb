# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create 4 customer records:
Customer.create(first_name: 'Johny',  last_name: 'Flow')
Customer.create(first_name: 'Raj',    last_name: 'Jamnis')
Customer.create(first_name: 'Andrew', last_name: 'Chung')
Customer.create(first_name: 'Mike',   last_name: 'Smith')

customer1 = Customer.find(1)
customer2 = Customer.find(2)
customer3 = Customer.find(3)
customer4 = Customer.find(4)

puts "10 Should be successful transactions:"
  puts "\t- 5 Should be linked to Customer 1"
  customer1.charges.create(paid: true, amount: 1000, currency: "usd", refunded: false)
  customer1.charges.create(paid: true, amount: 1100, currency: "usd", refunded: false)
  customer1.charges.create(paid: true, amount: 1200, currency: "usd", refunded: false)
  customer1.charges.create(paid: true, amount: 1300, currency: "usd", refunded: false)
  customer1.charges.create(paid: true, amount: 1400, currency: "usd", refunded: false)

  puts "\t- 3 Should be linked to Customer 2"
  customer2.charges.create(paid: true, amount: 1500, currency: "usd", refunded: false)
  customer2.charges.create(paid: true, amount: 1600, currency: "usd", refunded: false)
  customer2.charges.create(paid: true, amount: 1700, currency: "usd", refunded: false)

  puts "\t- 1 Should be linked to Customer 3"
  customer3.charges.create(paid: true, amount: 1800, currency: "usd", refunded: false)

  puts "\t- 1 Should be linked to Customer 4"
  customer4.charges.create(paid: true, amount: 1900, currency: "usd", refunded: false)

puts "5 Should be transactions that failed:"
  puts "\t- 3 Should be linked to Customer 3"
  customer3.charges.create(paid: false, amount: 1000, currency: "usd", refunded: false)
  customer3.charges.create(paid: false, amount: 1100, currency: "usd", refunded: false)
  customer3.charges.create(paid: false, amount: 1200, currency: "usd", refunded: false)
  puts "\t- 2 Should be linked to Customer 4"
  customer4.charges.create(paid: false, amount: 1300, currency: "usd", refunded: false)
  customer4.charges.create(paid: false, amount: 2800, currency: "usd", refunded: false)

puts "5 should be disputed:"
  puts "\t- 3 should be linked to Customer 1"
  customer1.charges.create(paid: true, amount: 2800, currency: "usd", refunded: true)
  customer1.charges.create(paid: true, amount: 3800, currency: "usd", refunded: true)
  customer1.charges.create(paid: true, amount: 4800, currency: "usd", refunded: true)

  puts "\t- 2 should be linked to customer 2"
  customer2.charges.create(paid: true, amount: 5800, currency: "usd", refunded: true)
  customer2.charges.create(paid: true, amount: 3200, currency: "usd", refunded: true)