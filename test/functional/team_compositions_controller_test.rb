require 'test_helper'

class TeamCompositionsControllerTest < ActionController::TestCase
  setup do
    @team_composition = team_compositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_compositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_composition" do
    assert_difference('TeamComposition.count') do
      post :create, :team_composition => @team_composition.attributes
    end

    assert_redirected_to team_composition_path(assigns(:team_composition))
  end

  test "should show team_composition" do
    get :show, :id => @team_composition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @team_composition.to_param
    assert_response :success
  end

  test "should update team_composition" do
    put :update, :id => @team_composition.to_param, :team_composition => @team_composition.attributes
    assert_redirected_to team_composition_path(assigns(:team_composition))
  end

  test "should destroy team_composition" do
    assert_difference('TeamComposition.count', -1) do
      delete :destroy, :id => @team_composition.to_param
    end

    assert_redirected_to team_compositions_path
  end
end
