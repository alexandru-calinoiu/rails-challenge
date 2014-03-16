class ChargesController < ApplicationController
  respond_to :json

  def index
    respond_with Charge.all.collect{|charge| {name: "#{charge.customer.first_name} #{charge.customer.last_name}",
                                              amount: charge.amount,
                                              duedate: charge.created_at,
                                              paid: charge.paid,
                                              refunded: charge.refunded} }
  end
end
