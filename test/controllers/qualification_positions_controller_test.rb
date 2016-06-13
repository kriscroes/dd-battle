require 'test_helper'

class QualificationPositionsControllerTest < ActionController::TestCase
  setup do
    @qualification_position = qualification_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualification_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualification_position" do
    assert_difference('QualificationPosition.count') do
      post :create, qualification_position: { position: @qualification_position.position }
    end

    assert_redirected_to qualification_position_path(assigns(:qualification_position))
  end

  test "should show qualification_position" do
    get :show, id: @qualification_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualification_position
    assert_response :success
  end

  test "should update qualification_position" do
    patch :update, id: @qualification_position, qualification_position: { position: @qualification_position.position }
    assert_redirected_to qualification_position_path(assigns(:qualification_position))
  end

  test "should destroy qualification_position" do
    assert_difference('QualificationPosition.count', -1) do
      delete :destroy, id: @qualification_position
    end

    assert_redirected_to qualification_positions_path
  end
end
