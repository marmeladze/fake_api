class Person < ApplicationRecord
  has_many :bills

  def unpaid_bills
    bills.where(paid: false)
  end
end
