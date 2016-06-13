require 'test_helper'

class StartupFinalsControllerTest < ActionController::TestCase
  setup do
    @startup_final = startup_finals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startup_finals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup_final" do
    assert_difference('StartupFinal.count') do
      post :create, startup_final: { final_positions_id: @startup_final.final_positions_id, startup_id: @startup_final.startup_id }
    end

    assert_redirected_to startup_final_path(assigns(:startup_final))
  end

  test "should show startup_final" do
    get :show, id: @startup_final
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup_final
    assert_response :success
  end

  test "should update startup_final" do
    patch :update, id: @startup_final, startup_final: { final_positions_id: @startup_final.final_positions_id, startup_id: @startup_final.startup_id }
    assert_redirected_to startup_final_path(assigns(:startup_final))
  end

  test "should destroy startup_final" do
    assert_difference('StartupFinal.count', -1) do
      delete :destroy, id: @startup_final
    end

    assert_redirected_to startup_finals_path
  end
end
