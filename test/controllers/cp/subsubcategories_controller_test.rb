require 'test_helper'

class Cp::SubsubcategoriesControllerTest < ActionController::TestCase
  setup do
    @cp_subsubcategory = cp_subsubcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_subsubcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_subsubcategory" do
    assert_difference('Cp::Subsubcategory.count') do
      post :create, cp_subsubcategory: { description: @cp_subsubcategory.description, name: @cp_subsubcategory.name, subcategories_id: @cp_subsubcategory.subcategories_id }
    end

    assert_redirected_to cp_subsubcategory_path(assigns(:cp_subsubcategory))
  end

  test "should show cp_subsubcategory" do
    get :show, id: @cp_subsubcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_subsubcategory
    assert_response :success
  end

  test "should update cp_subsubcategory" do
    patch :update, id: @cp_subsubcategory, cp_subsubcategory: { description: @cp_subsubcategory.description, name: @cp_subsubcategory.name, subcategories_id: @cp_subsubcategory.subcategories_id }
    assert_redirected_to cp_subsubcategory_path(assigns(:cp_subsubcategory))
  end

  test "should destroy cp_subsubcategory" do
    assert_difference('Cp::Subsubcategory.count', -1) do
      delete :destroy, id: @cp_subsubcategory
    end

    assert_redirected_to cp_subsubcategories_path
  end
end
