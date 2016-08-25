class CreateNewests < ActiveRecord::Migration
  def change
    create_table :newests do |t|
      t.integer :prototype_id
      t.timestamps null: false
    end
  end
end
