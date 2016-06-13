require 'test_helper'

class StartupQualificationPositionsControllerTest < ActionController::TestCase
  setup do
    @startup_qualification_position = startup_qualification_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startup_qualification_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup_qualification_position" do
    assert_difference('StartupQualificationPosition.count') do
      post :create, startup_qualification_position: { qualificationpositions_id: @startup_qualification_position.qualificationpositions_id, startup_id: @startup_qualification_position.startup_id }
    end

    assert_redirected_to startup_qualification_position_path(assigns(:startup_qualification_position))
  end

  test "should show startup_qualification_position" do
    get :show, id: @startup_qualification_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup_qualification_position
    assert_response :success
  end

  test "should update startup_qualification_position" do
    patch :update, id: @startup_qualification_position, startup_qualification_position: { qualificationpositions_id: @startup_qualification_position.qualificationpositions_id, startup_id: @startup_qualification_position.startup_id }
    assert_redirected_to startup_qualification_position_path(assigns(:startup_qualification_position))
  end

  test "should destroy startup_qualification_position" do
    assert_difference('StartupQualificationPosition.count', -1) do
      delete :destroy, id: @startup_qualification_position
    end

    assert_redirected_to startup_qualification_positions_path
  end
end
