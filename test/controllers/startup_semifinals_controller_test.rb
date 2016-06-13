require 'test_helper'

class StartupSemifinalsControllerTest < ActionController::TestCase
  setup do
    @startup_semifinal = startup_semifinals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startup_semifinals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup_semifinal" do
    assert_difference('StartupSemifinal.count') do
      post :create, startup_semifinal: { semifinal_positions_id: @startup_semifinal.semifinal_positions_id, startup_id: @startup_semifinal.startup_id }
    end

    assert_redirected_to startup_semifinal_path(assigns(:startup_semifinal))
  end

  test "should show startup_semifinal" do
    get :show, id: @startup_semifinal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup_semifinal
    assert_response :success
  end

  test "should update startup_semifinal" do
    patch :update, id: @startup_semifinal, startup_semifinal: { semifinal_positions_id: @startup_semifinal.semifinal_positions_id, startup_id: @startup_semifinal.startup_id }
    assert_redirected_to startup_semifinal_path(assigns(:startup_semifinal))
  end

  test "should destroy startup_semifinal" do
    assert_difference('StartupSemifinal.count', -1) do
      delete :destroy, id: @startup_semifinal
    end

    assert_redirected_to startup_semifinals_path
  end
end
