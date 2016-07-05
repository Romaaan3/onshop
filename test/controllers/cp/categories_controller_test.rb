require 'test_helper'

class Cp::CategoriesControllerTest < ActionController::TestCase
  setup do
    @cp_category = cp_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_category" do
    assert_difference('Cp::Category.count') do
      post :create, cp_category: { description: @cp_category.description, name: @cp_category.name }
    end

    assert_redirected_to cp_category_path(assigns(:cp_category))
  end

  test "should show cp_category" do
    get :show, id: @cp_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_category
    assert_response :success
  end

  test "should update cp_category" do
    patch :update, id: @cp_category, cp_category: { description: @cp_category.description, name: @cp_category.name }
    assert_redirected_to cp_category_path(assigns(:cp_category))
  end

  test "should destroy cp_category" do
    assert_difference('Cp::Category.count', -1) do
      delete :destroy, id: @cp_category
    end

    assert_redirected_to cp_categories_path
  end
end
