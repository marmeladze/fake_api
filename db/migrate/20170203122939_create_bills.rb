class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.integer :amount
      t.string :comment
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
