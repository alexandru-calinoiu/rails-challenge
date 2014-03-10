# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customer_1 = Customer.find_or_create_by(first_name: :Johny,   last_name: :Flow)
customer_2 = Customer.find_or_create_by(first_name: :Raj,     last_name: :Jamnis)
customer_3 = Customer.find_or_create_by(first_name: :Andrew,  last_name: :Chung)
customer_4 = Customer.find_or_create_by(first_name: :Mike,    last_name: :Smith)

transactions = [
  {customer: customer_1, qty: 5, status: :successful},
  {customer: customer_2, qty: 3, status: :successful},
  {customer: customer_3, qty: 1, status: :successful},
  {customer: customer_4, qty: 1, status: :successful},
  {customer: customer_3, qty: 3, status: :failed},
  {customer: customer_4, qty: 2, status: :failed},
  {customer: customer_1, qty: 3, status: :disputed},
  {customer: customer_2, qty: 2, status: :disputed},
]

transactions.each do |transaction_data|
  transaction_data[:qty].times do
    Transaction.create! do |transaction|
      transaction.customer    = transaction_data[:customer]
      transaction.amount      = rand(900..10000) * 0.3
      transaction.paid        = true unless transaction_data[:status] == :failed
      transaction.refunded    = true if transaction_data[:status] == :disputed
    end
  end
end