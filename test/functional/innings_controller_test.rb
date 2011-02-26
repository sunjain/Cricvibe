require 'test_helper'

class InningsControllerTest < ActionController::TestCase
  setup do
    @inning = innings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:innings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inning" do
    assert_difference('Inning.count') do
      post :create, :inning => @inning.attributes
    end

    assert_redirected_to inning_path(assigns(:inning))
  end

  test "should show inning" do
    get :show, :id => @inning.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inning.to_param
    assert_response :success
  end

  test "should update inning" do
    put :update, :id => @inning.to_param, :inning => @inning.attributes
    assert_redirected_to inning_path(assigns(:inning))
  end

  test "should destroy inning" do
    assert_difference('Inning.count', -1) do
      delete :destroy, :id => @inning.to_param
    end

    assert_redirected_to innings_path
  end
end
