require 'test_helper'

class FinalPositionsControllerTest < ActionController::TestCase
  setup do
    @final_position = final_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:final_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create final_position" do
    assert_difference('FinalPosition.count') do
      post :create, final_position: { position: @final_position.position }
    end

    assert_redirected_to final_position_path(assigns(:final_position))
  end

  test "should show final_position" do
    get :show, id: @final_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @final_position
    assert_response :success
  end

  test "should update final_position" do
    patch :update, id: @final_position, final_position: { position: @final_position.position }
    assert_redirected_to final_position_path(assigns(:final_position))
  end

  test "should destroy final_position" do
    assert_difference('FinalPosition.count', -1) do
      delete :destroy, id: @final_position
    end

    assert_redirected_to final_positions_path
  end
end
