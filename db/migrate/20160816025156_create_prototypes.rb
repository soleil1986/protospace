class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.integer :user_id
      t.text :image
      t.string :title
      t.string :catchcopy
      t.text :concept
      t.timestamps null: false
    end
  end
end
