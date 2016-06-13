require 'test_helper'

class StartupWinnersControllerTest < ActionController::TestCase
  setup do
    @startup_winner = startup_winners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startup_winners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup_winner" do
    assert_difference('StartupWinner.count') do
      post :create, startup_winner: { startup_id: @startup_winner.startup_id, winner_id: @startup_winner.winner_id }
    end

    assert_redirected_to startup_winner_path(assigns(:startup_winner))
  end

  test "should show startup_winner" do
    get :show, id: @startup_winner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup_winner
    assert_response :success
  end

  test "should update startup_winner" do
    patch :update, id: @startup_winner, startup_winner: { startup_id: @startup_winner.startup_id, winner_id: @startup_winner.winner_id }
    assert_redirected_to startup_winner_path(assigns(:startup_winner))
  end

  test "should destroy startup_winner" do
    assert_difference('StartupWinner.count', -1) do
      delete :destroy, id: @startup_winner
    end

    assert_redirected_to startup_winners_path
  end
end
