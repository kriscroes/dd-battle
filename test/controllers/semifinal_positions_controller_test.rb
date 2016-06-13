require 'test_helper'

class SemifinalPositionsControllerTest < ActionController::TestCase
  setup do
    @semifinal_position = semifinal_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:semifinal_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create semifinal_position" do
    assert_difference('SemifinalPosition.count') do
      post :create, semifinal_position: { position: @semifinal_position.position }
    end

    assert_redirected_to semifinal_position_path(assigns(:semifinal_position))
  end

  test "should show semifinal_position" do
    get :show, id: @semifinal_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @semifinal_position
    assert_response :success
  end

  test "should update semifinal_position" do
    patch :update, id: @semifinal_position, semifinal_position: { position: @semifinal_position.position }
    assert_redirected_to semifinal_position_path(assigns(:semifinal_position))
  end

  test "should destroy semifinal_position" do
    assert_difference('SemifinalPosition.count', -1) do
      delete :destroy, id: @semifinal_position
    end

    assert_redirected_to semifinal_positions_path
  end
end
