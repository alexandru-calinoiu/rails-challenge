class Transaction < ActiveRecord::Base
  belongs_to :customer

  validates :amount, :presence => true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :customer_id, presence: true

  def status
    if !paid
      :failed
    elsif refunded
      :disputed
    else
      :successful
    end
  end

  def created
    created_at.to_i
  end

end
