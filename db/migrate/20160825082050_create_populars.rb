class CreatePopulars < ActiveRecord::Migration
  def change
    create_table :populars do |t|
      t.integer :prototype_id
      t.timestamps null: false
    end
  end
end
