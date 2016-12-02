class AddColumnsToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :category, :string
    add_column :posts, :priority, :string
  end
end
