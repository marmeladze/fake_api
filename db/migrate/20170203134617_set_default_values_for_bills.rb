class SetDefaultValuesForBills < ActiveRecord::Migration[5.0]
  def change
    Bill.all.each do |bill|
      bill.update_column(:uuid, SecureRandom.uuid)
    end  
  end
end
