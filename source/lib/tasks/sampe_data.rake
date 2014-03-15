namespace :db do
	desc "Fill database with sample charges data"
	task populate: :environment do
		make_charges
	end
end

def make_charges
	5.times do |n|
		amount = 1000 * (n + 1)
		Charge.create!(paid: true,
						amount: amount,
						currency: "usd",
						refunded: false,
						customer_id: 1)
	end

	3.times do |n|
		amount = 1000 * (n + 1)
		Charge.create!(paid: true,
						amount: amount,
						currency: "usd",
						refunded: false,
						customer_id: 2)
	end

	1.times do |n|
		amount = 1000 * (n + 1)
		Charge.create!(paid: true,
						amount: amount,
						currency: "usd",
						refunded: false,
						customer_id: 3)
	end

	1.times do |n|
		amount = 1000 * (n + 1)
		Charge.create!(paid: true,
						amount: amount,
						currency: "usd",
						refunded: false,
						customer_id: 4)
	end

	3.times do |n|
		amount = 1000 * (n + 1)
		Charge.create!(paid: false,
						amount: amount,
						currency: "usd",
						refunded: false,
						customer_id: 3)
	end

	2.times do |n|
		amount = 1000 * (n + 1)
		Charge.create!(paid: false,
						amount: amount,
						currency: "usd",
						refunded: false,
						customer_id: 4)
	end

	3.times do |n|
		amount = 1000 * (n + 1)
		Charge.create!(paid: true,
						amount: amount,
						currency: "usd",
						refunded: true,
						customer_id: 1)
	end
	
	2.times do |n|
		amount = 1000 * (n + 1)
		Charge.create!(paid: true,
						amount: amount,
						currency: "usd",
						refunded: true,
						customer_id: 2)
	end


end