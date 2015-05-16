require 'test_helper'

class CommnentsControllerTest < ActionController::TestCase
  setup do
    @commnent = commnents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commnents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commnent" do
    assert_difference('Commnent.count') do
      post :create, commnent: { body: @commnent.body, idea_Id: @commnent.idea_Id, user_name: @commnent.user_name }
    end

    assert_redirected_to commnent_path(assigns(:commnent))
  end

  test "should show commnent" do
    get :show, id: @commnent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commnent
    assert_response :success
  end

  test "should update commnent" do
    patch :update, id: @commnent, commnent: { body: @commnent.body, idea_Id: @commnent.idea_Id, user_name: @commnent.user_name }
    assert_redirected_to commnent_path(assigns(:commnent))
  end

  test "should destroy commnent" do
    assert_difference('Commnent.count', -1) do
      delete :destroy, id: @commnent
    end

    assert_redirected_to commnents_path
  end
end
