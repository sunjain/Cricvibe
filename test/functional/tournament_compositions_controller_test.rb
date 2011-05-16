require 'test_helper'

class TournamentCompositionsControllerTest < ActionController::TestCase
  setup do
    @tournament_composition = tournament_compositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tournament_compositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tournament_composition" do
    assert_difference('TournamentComposition.count') do
      post :create, :tournament_composition => @tournament_composition.attributes
    end

    assert_redirected_to tournament_composition_path(assigns(:tournament_composition))
  end

  test "should show tournament_composition" do
    get :show, :id => @tournament_composition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tournament_composition.to_param
    assert_response :success
  end

  test "should update tournament_composition" do
    put :update, :id => @tournament_composition.to_param, :tournament_composition => @tournament_composition.attributes
    assert_redirected_to tournament_composition_path(assigns(:tournament_composition))
  end

  test "should destroy tournament_composition" do
    assert_difference('TournamentComposition.count', -1) do
      delete :destroy, :id => @tournament_composition.to_param
    end

    assert_redirected_to tournament_compositions_path
  end
end
