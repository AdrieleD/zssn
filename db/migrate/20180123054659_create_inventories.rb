class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :water
      t.integer :food
      t.integer :medication
      t.integer :ammunition
      t.references :survivor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
