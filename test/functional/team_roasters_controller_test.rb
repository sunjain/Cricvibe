require 'test_helper'

class TeamRoastersControllerTest < ActionController::TestCase
  setup do
    @team_roaster = team_roasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_roasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_roaster" do
    assert_difference('TeamRoaster.count') do
      post :create, :team_roaster => @team_roaster.attributes
    end

    assert_redirected_to team_roaster_path(assigns(:team_roaster))
  end

  test "should show team_roaster" do
    get :show, :id => @team_roaster.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @team_roaster.to_param
    assert_response :success
  end

  test "should update team_roaster" do
    put :update, :id => @team_roaster.to_param, :team_roaster => @team_roaster.attributes
    assert_redirected_to team_roaster_path(assigns(:team_roaster))
  end

  test "should destroy team_roaster" do
    assert_difference('TeamRoaster.count', -1) do
      delete :destroy, :id => @team_roaster.to_param
    end

    assert_redirected_to team_roasters_path
  end
end
