require 'test_helper'

class FinalgroupsControllerTest < ActionController::TestCase
  setup do
    @finalgroup = finalgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finalgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finalgroup" do
    assert_difference('Finalgroup.count') do
      post :create, finalgroup: { finalposition_id: @finalgroup.finalposition_id, startup_id: @finalgroup.startup_id }
    end

    assert_redirected_to finalgroup_path(assigns(:finalgroup))
  end

  test "should show finalgroup" do
    get :show, id: @finalgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finalgroup
    assert_response :success
  end

  test "should update finalgroup" do
    patch :update, id: @finalgroup, finalgroup: { finalposition_id: @finalgroup.finalposition_id, startup_id: @finalgroup.startup_id }
    assert_redirected_to finalgroup_path(assigns(:finalgroup))
  end

  test "should destroy finalgroup" do
    assert_difference('Finalgroup.count', -1) do
      delete :destroy, id: @finalgroup
    end

    assert_redirected_to finalgroups_path
  end
end
