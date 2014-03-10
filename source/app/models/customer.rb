class Customer < ActiveRecord::Base
  has_many :transactions

  def full_name
    "#{first_name} #{last_name}"
  end

  def to_s
    full_name
  end
end
