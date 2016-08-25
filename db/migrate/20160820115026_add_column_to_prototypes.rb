class AddColumnToPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :likes_count, :integer
    add_column :prototypes, :comments_count, :integer
  end
end
