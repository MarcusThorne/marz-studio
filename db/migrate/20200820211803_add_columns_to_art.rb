class AddColumnsToArt < ActiveRecord::Migration[6.0]
  def change
    add_column :arts, :category, :string
    add_column :arts, :subject, :string
  end
end
