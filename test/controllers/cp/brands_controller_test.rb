require 'test_helper'

class Cp::BrandsControllerTest < ActionController::TestCase
  setup do
    @cp_brand = cp_brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_brand" do
    assert_difference('Cp::Brand.count') do
      post :create, cp_brand: { description: @cp_brand.description, name: @cp_brand.name }
    end

    assert_redirected_to cp_brand_path(assigns(:cp_brand))
  end

  test "should show cp_brand" do
    get :show, id: @cp_brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_brand
    assert_response :success
  end

  test "should update cp_brand" do
    patch :update, id: @cp_brand, cp_brand: { description: @cp_brand.description, name: @cp_brand.name }
    assert_redirected_to cp_brand_path(assigns(:cp_brand))
  end

  test "should destroy cp_brand" do
    assert_difference('Cp::Brand.count', -1) do
      delete :destroy, id: @cp_brand
    end

    assert_redirected_to cp_brands_path
  end
end
