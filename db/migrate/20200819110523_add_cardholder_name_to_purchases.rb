class AddCardholderNameToPurchases < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :card_holder_name, :string
  end
end
