require 'test_helper'

class QualificationgroupsControllerTest < ActionController::TestCase
  setup do
    @qualificationgroup = qualificationgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualificationgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualificationgroup" do
    assert_difference('Qualificationgroup.count') do
      post :create, qualificationgroup: { qualificationposition_id: @qualificationgroup.qualificationposition_id, startup_id: @qualificationgroup.startup_id }
    end

    assert_redirected_to qualificationgroup_path(assigns(:qualificationgroup))
  end

  test "should show qualificationgroup" do
    get :show, id: @qualificationgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualificationgroup
    assert_response :success
  end

  test "should update qualificationgroup" do
    patch :update, id: @qualificationgroup, qualificationgroup: { qualificationposition_id: @qualificationgroup.qualificationposition_id, startup_id: @qualificationgroup.startup_id }
    assert_redirected_to qualificationgroup_path(assigns(:qualificationgroup))
  end

  test "should destroy qualificationgroup" do
    assert_difference('Qualificationgroup.count', -1) do
      delete :destroy, id: @qualificationgroup
    end

    assert_redirected_to qualificationgroups_path
  end
end
