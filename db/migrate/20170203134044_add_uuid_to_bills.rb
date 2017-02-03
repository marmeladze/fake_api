class AddUuidToBills < ActiveRecord::Migration[5.0]
  def change
    add_column :bills, :uuid, :string, default: SecureRandom.uuid
  end
end
