class AddColumnsToPurchases < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :card_number, :integer
    add_column :purchases, :expiration_date, :string
    add_column :purchases, :security_code, :integer
  end
end
