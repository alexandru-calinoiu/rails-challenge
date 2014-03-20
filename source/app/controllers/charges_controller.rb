class ChargesController < ApplicationController

  def index
    @f_transactions = Transaction.where(['paid=? and refunded=?', false, false])
    @d_transactions = Transaction.where(['paid=? and refunded=?', true, true])
    @s_transactions = Transaction.where(['paid=? and refunded=?', true, false]) 
  end

end
