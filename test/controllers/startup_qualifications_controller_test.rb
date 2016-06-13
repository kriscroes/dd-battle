require 'test_helper'

class StartupQualificationsControllerTest < ActionController::TestCase
  setup do
    @startup_qualification = startup_qualifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startup_qualifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup_qualification" do
    assert_difference('StartupQualification.count') do
      post :create, startup_qualification: { qualification_positions_id: @startup_qualification.qualification_positions_id, startup_id: @startup_qualification.startup_id }
    end

    assert_redirected_to startup_qualification_path(assigns(:startup_qualification))
  end

  test "should show startup_qualification" do
    get :show, id: @startup_qualification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup_qualification
    assert_response :success
  end

  test "should update startup_qualification" do
    patch :update, id: @startup_qualification, startup_qualification: { qualification_positions_id: @startup_qualification.qualification_positions_id, startup_id: @startup_qualification.startup_id }
    assert_redirected_to startup_qualification_path(assigns(:startup_qualification))
  end

  test "should destroy startup_qualification" do
    assert_difference('StartupQualification.count', -1) do
      delete :destroy, id: @startup_qualification
    end

    assert_redirected_to startup_qualifications_path
  end
end
