class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.string :name
      t.string :style
      t.float :price
      t.string :description
      t.string :photo
      t.string :artist
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
