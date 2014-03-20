# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Customer.create([
	{ :first_name => 'Johny',  :last_name => 'Flow' },
	{ :first_name => 'Raj',    :last_name => 'Jamnis' },
	{ :first_name => 'Andrew', :last_name => 'Chung' },
	{ :first_name => 'Mike',   :last_name => 'Smith' }
])

Charge.create([
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 1 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 1 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 1 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 1 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 1 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 2 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 2 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 2 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 3 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 4 },
	{ :paid => false, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 3 },
	{ :paid => false, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 3 },
	{ :paid => false, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 3 },
	{ :paid => false, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 4 },
	{ :paid => false, :amount => 100, :currency => 'usd', :refunded => false, :customer_id => 4 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => true, :customer_id => 1 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => true, :customer_id => 1 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => true, :customer_id => 1 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => true, :customer_id => 2 },
	{ :paid => true, :amount => 100, :currency => 'usd', :refunded => true, :customer_id => 2 }
])