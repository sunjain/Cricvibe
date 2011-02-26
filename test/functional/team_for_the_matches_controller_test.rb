require 'test_helper'

class TeamForTheMatchesControllerTest < ActionController::TestCase
  setup do
    @team_for_the_match = team_for_the_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_for_the_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_for_the_match" do
    assert_difference('TeamForTheMatch.count') do
      post :create, :team_for_the_match => @team_for_the_match.attributes
    end

    assert_redirected_to team_for_the_match_path(assigns(:team_for_the_match))
  end

  test "should show team_for_the_match" do
    get :show, :id => @team_for_the_match.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @team_for_the_match.to_param
    assert_response :success
  end

  test "should update team_for_the_match" do
    put :update, :id => @team_for_the_match.to_param, :team_for_the_match => @team_for_the_match.attributes
    assert_redirected_to team_for_the_match_path(assigns(:team_for_the_match))
  end

  test "should destroy team_for_the_match" do
    assert_difference('TeamForTheMatch.count', -1) do
      delete :destroy, :id => @team_for_the_match.to_param
    end

    assert_redirected_to team_for_the_matches_path
  end
end
