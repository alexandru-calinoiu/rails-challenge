# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Customers
customer1 = Customer.find_or_create_by(first_name: 'Johny', last_name: 'Flow' )

customer2 = Customer.find_or_create_by(first_name: 'Raj', last_name: 'Jamnis' )

customer3 = Customer.find_or_create_by(first_name: 'Andrew', last_name: 'Chung' )

customer4 = Customer.find_or_create_by(first_name: 'Mike', last_name: 'Smith' )


# Seed successful charges

Transaction.find_or_create_by(id: 1, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer1.id, created: Time.now)

Transaction.find_or_create_by(id: 2, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer1.id, created: Time.now)
Transaction.find_or_create_by(id: 3, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer1.id, created: Time.now)
Transaction.find_or_create_by(id: 4, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer1.id, created: Time.now)
Transaction.find_or_create_by(id: 5, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer1.id, created: Time.now)

Transaction.find_or_create_by(id: 6, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer2.id, created: Time.now)
Transaction.find_or_create_by(id: 7, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer2.id, created: Time.now)
Transaction.find_or_create_by(id: 8, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer2.id, created: Time.now)
Transaction.find_or_create_by(id: 9, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer3.id, created: Time.now)
Transaction.find_or_create_by(id: 10, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: customer4.id, created: Time.now)



Transaction.find_or_create_by(id: 11, paid: false, amount: 3, currency: 'usd', refunded: false, customer_id: customer3.id, created: Time.now)
Transaction.find_or_create_by(id: 12, paid: false, amount: 1, currency: 'usd', refunded: false, customer_id: customer3.id, created: Time.now)
Transaction.find_or_create_by(id: 13, paid: false, amount: 1, currency: 'usd', refunded: false, customer_id: customer3.id, created: Time.now)

Transaction.find_or_create_by(id: 14, paid: false, amount: 3, currency: 'usd', refunded: false, customer_id: customer4.id, created: Time.now)
Transaction.find_or_create_by(id: 15, paid: false, amount: 1, currency: 'usd', refunded: false, customer_id: customer4.id, created: Time.now)

Transaction.find_or_create_by(id: 16, paid: true, amount: 3, currency: 'usd', refunded: true, customer_id: customer1.id, created: Time.now)
Transaction.find_or_create_by(id: 17, paid: true, amount: 2, currency: 'usd', refunded: true, customer_id: customer1.id, created: Time.now)
Transaction.find_or_create_by(id: 18, paid: true, amount: 2, currency: 'usd', refunded: true, customer_id: customer1.id, created: Time.now)

Transaction.find_or_create_by(id: 19, paid: true, amount: 3, currency: 'usd', refunded: true, customer_id: customer2.id, created: Time.now)
Transaction.find_or_create_by(id: 20, paid: true, amount: 2, currency: 'usd', refunded: true, customer_id: customer2.id, created: Time.now)















# # Seed successful charges
# 5.times do
#   tras = Transaction.new
#   tras.customer_id = customer1.id
#   tras.paid = true 
#   tras.refunded = false 
#   tras.save
# end
# 3.times do
#   tras = Transaction.new
#   tras.customer_id = customer2.id
#   tras.paid = true
#   tras.refunded = false   
#   tras.save
# end
# 1.times do
#   tras = Transaction.new
#   tras.customer_id = customer3.id
#   tras.paid = true  
#   tras.refunded = false 
#   tras.save
# end
# 1.times do
#   tras = Transaction.new
#   tras.customer_id = customer4.id
#   tras.paid = true  
#   tras.refunded = false 
#   tras.save
# end

# # Seed failed charges
# 3.times do
#   tras = Transaction.new
#   tras.customer_id = customer3.id
#   tras.paid = false  
#   tras.refunded = false 
#   tras.save
# end
# 2.times do
#   tras = Transaction.new
#   tras.customer_id = customer4.id
#   tras.paid = false  
#   tras.refunded = false 
#   tras.save
# end


# # Seed disputed charges
# 3.times do
#   tras = Transaction.new
#   tras.customer_id = customer1.id
#   tras.paid = true  
#   tras.refunded = true 
#   tras.save
# end
# 2.times do
#   tras = Transaction.new
#   tras.customer_id = customer2.id
#   tras.paid = true  
#   tras.refunded = true
#   tras.save
# end


