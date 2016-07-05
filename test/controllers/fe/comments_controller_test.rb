require 'test_helper'

class Fe::CommentsControllerTest < ActionController::TestCase
  setup do
    @fe_comment = fe_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fe_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fe_comment" do
    assert_difference('Fe::Comment.count') do
      post :create, fe_comment: { description: @fe_comment.description, title: @fe_comment.title, users_id: @fe_comment.users_id }
    end

    assert_redirected_to fe_comment_path(assigns(:fe_comment))
  end

  test "should show fe_comment" do
    get :show, id: @fe_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fe_comment
    assert_response :success
  end

  test "should update fe_comment" do
    patch :update, id: @fe_comment, fe_comment: { description: @fe_comment.description, title: @fe_comment.title, users_id: @fe_comment.users_id }
    assert_redirected_to fe_comment_path(assigns(:fe_comment))
  end

  test "should destroy fe_comment" do
    assert_difference('Fe::Comment.count', -1) do
      delete :destroy, id: @fe_comment
    end

    assert_redirected_to fe_comments_path
  end
end
