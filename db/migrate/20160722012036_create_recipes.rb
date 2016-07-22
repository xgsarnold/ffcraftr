class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.integer :ingredient_id
      t.integer :recipe_level
      t.integer :recipte_progress
      t.integer :recipe_difficulty
      t.integer :recipe_quality
      t.integer :recipe_durability
      t.integer :recipe_yield
      t.boolean :quick_synth
      t.integer :control_requirement
      t.integer :craft_requirement
      t.boolean :specialist

      t.timestamps null: false
    end
    add_index :recipes, :recipe_name
    add_index :recipes, :ingredient_id
  end
end
