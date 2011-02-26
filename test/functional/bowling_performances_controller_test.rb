require 'test_helper'

class BowlingPerformancesControllerTest < ActionController::TestCase
  setup do
    @bowling_performance = bowling_performances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bowling_performances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bowling_performance" do
    assert_difference('BowlingPerformance.count') do
      post :create, :bowling_performance => @bowling_performance.attributes
    end

    assert_redirected_to bowling_performance_path(assigns(:bowling_performance))
  end

  test "should show bowling_performance" do
    get :show, :id => @bowling_performance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bowling_performance.to_param
    assert_response :success
  end

  test "should update bowling_performance" do
    put :update, :id => @bowling_performance.to_param, :bowling_performance => @bowling_performance.attributes
    assert_redirected_to bowling_performance_path(assigns(:bowling_performance))
  end

  test "should destroy bowling_performance" do
    assert_difference('BowlingPerformance.count', -1) do
      delete :destroy, :id => @bowling_performance.to_param
    end

    assert_redirected_to bowling_performances_path
  end
end
