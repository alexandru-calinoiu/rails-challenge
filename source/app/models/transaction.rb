class Transaction < ActiveRecord::Base
  belongs_to :customer

  validates :amount, :presence => true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :customer_id, presence: true

  def created
    created_at.to_i
  end

end
