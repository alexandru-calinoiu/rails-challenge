# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.delete_all

customer_list = [
  ["Johny", "Flow"],
  ["Raj", "Jemis"],
  ["Andrew", "Chung"],
  ["Mike", "Smith"]
]

customer_list.each do |first, last|
  Customer.create(firstname: first, lastname: last)
end

Charge.delete_all

charge_list = [
  ["1389618241", true, 2000, "usd", false, 1, 1],
  ["1389618241", true, 2000, "usd", false, 1, 1],
  ["1389618241", true, 2000, "usd", false, 1, 1],
  ["1389618241", true, 2000, "usd", false, 1, 1],
  ["1389618241", true, 2000, "usd", false, 1, 1],
  ["1389618241", true, 2000, "usd", false, 2, 1],
  ["1389618241", true, 3000, "usd", false, 2, 1],
  ["1389618241", true, 3000, "usd", false, 2, 1],
  ["1389618241", true, 3000, "usd", false, 3, 1],
  ["1389618241", true, 3000, "usd", false, 4, 1],
  ["1389618241", true, 4000, "usd", false, 3, 2],
  ["1389618241", true, 4000, "usd", false, 3, 2],
  ["1389618241", true, 4000, "usd", false, 3, 2],
  ["1389618241", true, 4000, "usd", false, 4, 2],
  ["1389618241", true, 4000, "usd", false, 4, 2],
  ["1389618241", true, 2000, "usd", false, 1, 3],
  ["1389618241", true, 2000, "usd", false, 1, 3],
  ["1389618241", true, 2000, "usd", false, 1, 3],
  ["1389618241", true, 2000, "usd", false, 2, 3],
  ["1389618241", true, 2000, "usd", false, 2, 3]
]

charge_list.each do |created, paid, amount, currency, refunded, customer_id, status|
  Charge.create(paid: paid, amount: amount, currency: currency, refunded: refunded, customer_id: customer_id, status: status)
end
