class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :image
      t.integer :prototype_id
      t.timestamps null: false
    end
  end
end
