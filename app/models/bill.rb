class Bill < ApplicationRecord
  belongs_to :person

  scope :unpaid, -> { where(paid: false) }
  scope :paid, -> { where(paid: true) }   

end
