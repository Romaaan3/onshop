require 'test_helper'

class Cp::ProductsControllerTest < ActionController::TestCase
  setup do
    @cp_product = cp_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_product" do
    assert_difference('Cp::Product.count') do
      post :create, cp_product: { brands_id: @cp_product.brands_id, categories_id: @cp_product.categories_id, description: @cp_product.description, discount: @cp_product.discount, name: @cp_product.name, price: @cp_product.price }
    end

    assert_redirected_to cp_product_path(assigns(:cp_product))
  end

  test "should show cp_product" do
    get :show, id: @cp_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_product
    assert_response :success
  end

  test "should update cp_product" do
    patch :update, id: @cp_product, cp_product: { brands_id: @cp_product.brands_id, categories_id: @cp_product.categories_id, description: @cp_product.description, discount: @cp_product.discount, name: @cp_product.name, price: @cp_product.price }
    assert_redirected_to cp_product_path(assigns(:cp_product))
  end

  test "should destroy cp_product" do
    assert_difference('Cp::Product.count', -1) do
      delete :destroy, id: @cp_product
    end

    assert_redirected_to cp_products_path
  end
end
