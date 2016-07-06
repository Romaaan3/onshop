require 'test_helper'

class Cp::SubcategoriesControllerTest < ActionController::TestCase
  setup do
    @cp_subcategory = cp_subcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_subcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_subcategory" do
    assert_difference('Cp::Subcategory.count') do
      post :create, cp_subcategory: { categories_id: @cp_subcategory.categories_id, description: @cp_subcategory.description, name: @cp_subcategory.name }
    end

    assert_redirected_to cp_subcategory_path(assigns(:cp_subcategory))
  end

  test "should show cp_subcategory" do
    get :show, id: @cp_subcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_subcategory
    assert_response :success
  end

  test "should update cp_subcategory" do
    patch :update, id: @cp_subcategory, cp_subcategory: { categories_id: @cp_subcategory.categories_id, description: @cp_subcategory.description, name: @cp_subcategory.name }
    assert_redirected_to cp_subcategory_path(assigns(:cp_subcategory))
  end

  test "should destroy cp_subcategory" do
    assert_difference('Cp::Subcategory.count', -1) do
      delete :destroy, id: @cp_subcategory
    end

    assert_redirected_to cp_subcategories_path
  end
end
