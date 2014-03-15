# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create 4 customer records:
customers = [{first_name: 'Johny',  last_name: 'Flow'},
             {first_name: 'Raj',    last_name: 'Jamnis'},
             {first_name: 'Andrew', last_name: 'Chung'},
             {first_name: 'Mike',   last_name: 'Smith'}]

customers.each_with_index do |customer, i|
  Customer.find_or_create_by(:first_name => customer[:first_name], :last_name => customer[:last_name])
  puts "Customer #{i+1}:"
  puts "\tFirst Name: #{customer[:first_name]}"
  puts "\tLast Name: #{customer[:last_name]}"
end

# Create 20 transaction records:
customer1 = Customer.find_by(first_name: 'Johny')
customer2 = Customer.find_by(first_name: 'Raj')
customer3 = Customer.find_by(first_name: 'Andrew')
customer4 = Customer.find_by(first_name: 'Mike')

puts "10 Should be successful transactions:"
  puts "\t- 5 Should be linked to Customer 1"
  customer1.transactions.create(paid: true, amount: 1000, currency: "usd", refunded: false)
  customer1.transactions.create(paid: true, amount: 1100, currency: "usd", refunded: false)
  customer1.transactions.create(paid: true, amount: 1200, currency: "usd", refunded: false)
  customer1.transactions.create(paid: true, amount: 1300, currency: "usd", refunded: false)
  customer1.transactions.create(paid: true, amount: 1400, currency: "usd", refunded: false)

  puts "\t- 3 Should be linked to Customer 2"
  customer2.transactions.create(paid: true, amount: 1500, currency: "usd", refunded: false)
  customer2.transactions.create(paid: true, amount: 1600, currency: "usd", refunded: false)
  customer2.transactions.create(paid: true, amount: 1700, currency: "usd", refunded: false)

  puts "\t- 1 Should be linked to Customer 3"
  customer3.transactions.create(paid: true, amount: 1800, currency: "usd", refunded: false)

  puts "\t- 1 Should be linked to Customer 4"
  customer4.transactions.create(paid: true, amount: 1900, currency: "usd", refunded: false)

puts "5 Should be transactions that failed:"
  puts "\t- 3 Should be linked to Customer 3"
  customer3.transactions.create(paid: false, amount: 1000, currency: "usd", refunded: false)
  customer3.transactions.create(paid: false, amount: 1100, currency: "usd", refunded: false)
  customer3.transactions.create(paid: false, amount: 1200, currency: "usd", refunded: false)
  puts "\t- 2 Should be linked to Customer 4"
  customer4.transactions.create(paid: false, amount: 1300, currency: "usd", refunded: false)
  customer4.transactions.create(paid: false, amount: 2800, currency: "usd", refunded: false)

puts "5 should be disputed:"
  puts "\t- 3 should be linked to Customer 1"
  customer1.transactions.create(paid: true, amount: 2800, currency: "usd", refunded: true)  
  customer1.transactions.create(paid: true, amount: 3800, currency: "usd", refunded: true)  
  customer1.transactions.create(paid: true, amount: 4800, currency: "usd", refunded: true)  

  puts "\t- 2 should be linked to customer 2"
  customer2.transactions.create(paid: true, amount: 5800, currency: "usd", refunded: true)  
  customer2.transactions.create(paid: true, amount: 3200, currency: "usd", refunded: true)  