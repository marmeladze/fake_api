class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :ic_id
      t.string :tax_num
      t.string :ssn
      t.string :first_name
      t.string :last_name
      t.string :birthdate
      t.string :img

      t.timestamps
    end
  end
end
