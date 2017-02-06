class Person < ApplicationRecord
  has_many :bills

  scope :active, -> { distinct.joins(:bills) } 

  def unpaid_bills
    bills.unpaid
  end

  def total_debt
    unpaid_bills.pluck(:amount).inject(&:+)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    find_by(ic_id: "AZE#{search}")
  end
end
