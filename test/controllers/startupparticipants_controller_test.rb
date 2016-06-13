require 'test_helper'

class StartupparticipantsControllerTest < ActionController::TestCase
  setup do
    @startupparticipant = startupparticipants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startupparticipants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startupparticipant" do
    assert_difference('Startupparticipant.count') do
      post :create, startupparticipant: { participant_id: @startupparticipant.participant_id, role: @startupparticipant.role, startup_id: @startupparticipant.startup_id }
    end

    assert_redirected_to startupparticipant_path(assigns(:startupparticipant))
  end

  test "should show startupparticipant" do
    get :show, id: @startupparticipant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startupparticipant
    assert_response :success
  end

  test "should update startupparticipant" do
    patch :update, id: @startupparticipant, startupparticipant: { participant_id: @startupparticipant.participant_id, role: @startupparticipant.role, startup_id: @startupparticipant.startup_id }
    assert_redirected_to startupparticipant_path(assigns(:startupparticipant))
  end

  test "should destroy startupparticipant" do
    assert_difference('Startupparticipant.count', -1) do
      delete :destroy, id: @startupparticipant
    end

    assert_redirected_to startupparticipants_path
  end
end
