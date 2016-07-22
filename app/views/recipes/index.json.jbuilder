json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :recipe_name, :ingredient_id, :recipe_level, :recipte_progress, :recipe_difficulty, :recipe_quality, :recipe_durability, :recipe_yield, :quick_synth, :control_requirement, :craft_requirement, :specialist
  json.url recipe_url(recipe, format: :json)
end
