class Customer < ActiveRecord::Base
	has_many :charges
	attr_accessible :first_name, :last_name
end
