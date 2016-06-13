require 'test_helper'

class SemifinalgroupsControllerTest < ActionController::TestCase
  setup do
    @semifinalgroup = semifinalgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:semifinalgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create semifinalgroup" do
    assert_difference('Semifinalgroup.count') do
      post :create, semifinalgroup: { semifinalposition_id: @semifinalgroup.semifinalposition_id, startup_id: @semifinalgroup.startup_id }
    end

    assert_redirected_to semifinalgroup_path(assigns(:semifinalgroup))
  end

  test "should show semifinalgroup" do
    get :show, id: @semifinalgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @semifinalgroup
    assert_response :success
  end

  test "should update semifinalgroup" do
    patch :update, id: @semifinalgroup, semifinalgroup: { semifinalposition_id: @semifinalgroup.semifinalposition_id, startup_id: @semifinalgroup.startup_id }
    assert_redirected_to semifinalgroup_path(assigns(:semifinalgroup))
  end

  test "should destroy semifinalgroup" do
    assert_difference('Semifinalgroup.count', -1) do
      delete :destroy, id: @semifinalgroup
    end

    assert_redirected_to semifinalgroups_path
  end
end
