json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :ingredient_name, :vendor_id, :botany_id, :mining_id, :fishing_id, :monster_id, :ingredient_type
  json.url ingredient_url(ingredient, format: :json)
end
