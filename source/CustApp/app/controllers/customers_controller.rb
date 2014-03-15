class CustomersController < ApplicationController
  def index

    @failed_transactions    = Transaction.where(refunded: false, paid: false)
    @disputed_transactions  = Transaction.where(refunded: true)
    @succeed_transactions   = Transaction.where(refunded: false, paid: true)
  end
end
