class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.integer :vendor_id
      t.integer :botany_id
      t.integer :mining_id
      t.integer :fishing_id
      t.integer :monster_id
      t.string :ingredient_type

      t.timestamps null: false
    end
    add_index :ingredients, :ingredient_name
    add_index :ingredients, :vendor_id
    add_index :ingredients, :mining_id
    add_index :ingredients, :fishing_id
    add_index :ingredients, :monster_id
  end
end
