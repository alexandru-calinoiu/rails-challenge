class HomeController < ApplicationController
	def charge
		@success_trans = Charge.where(:paid => true, :refunded => false)
		@failed_trans = Charge.where(:paid => false)
		@dispute_trans = Charge.where(:paid => true, :refunded => true)
	end
end
