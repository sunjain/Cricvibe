require 'test_helper'

class BattingPerformancesControllerTest < ActionController::TestCase
  setup do
    @batting_performance = batting_performances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batting_performances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batting_performance" do
    assert_difference('BattingPerformance.count') do
      post :create, :batting_performance => @batting_performance.attributes
    end

    assert_redirected_to batting_performance_path(assigns(:batting_performance))
  end

  test "should show batting_performance" do
    get :show, :id => @batting_performance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @batting_performance.to_param
    assert_response :success
  end

  test "should update batting_performance" do
    put :update, :id => @batting_performance.to_param, :batting_performance => @batting_performance.attributes
    assert_redirected_to batting_performance_path(assigns(:batting_performance))
  end

  test "should destroy batting_performance" do
    assert_difference('BattingPerformance.count', -1) do
      delete :destroy, :id => @batting_performance.to_param
    end

    assert_redirected_to batting_performances_path
  end
end
