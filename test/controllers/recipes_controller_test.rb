require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post :create, recipe: { control_requirement: @recipe.control_requirement, craft_requirement: @recipe.craft_requirement, ingredient_id: @recipe.ingredient_id, quick_synth: @recipe.quick_synth, recipe_difficulty: @recipe.recipe_difficulty, recipe_durability: @recipe.recipe_durability, recipe_level: @recipe.recipe_level, recipe_name: @recipe.recipe_name, recipe_quality: @recipe.recipe_quality, recipe_yield: @recipe.recipe_yield, recipte_progress: @recipe.recipte_progress, specialist: @recipe.specialist }
    end

    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should show recipe" do
    get :show, id: @recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe
    assert_response :success
  end

  test "should update recipe" do
    patch :update, id: @recipe, recipe: { control_requirement: @recipe.control_requirement, craft_requirement: @recipe.craft_requirement, ingredient_id: @recipe.ingredient_id, quick_synth: @recipe.quick_synth, recipe_difficulty: @recipe.recipe_difficulty, recipe_durability: @recipe.recipe_durability, recipe_level: @recipe.recipe_level, recipe_name: @recipe.recipe_name, recipe_quality: @recipe.recipe_quality, recipe_yield: @recipe.recipe_yield, recipte_progress: @recipe.recipte_progress, specialist: @recipe.specialist }
    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete :destroy, id: @recipe
    end

    assert_redirected_to recipes_path
  end
end
