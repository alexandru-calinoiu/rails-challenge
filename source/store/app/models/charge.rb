class Charge < ActiveRecord::Base
	belongs_to :customer
	attr_accessible :paid, :amount, :currency, :refunded, :customer_id
	before_create :set_created_property

	private
	def set_created_property
		self.created = DateTime.now.to_i
	end
end
