class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :art, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
