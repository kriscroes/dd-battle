require 'test_helper'

class SemifinalsControllerTest < ActionController::TestCase
  setup do
    @semifinal = semifinals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:semifinals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create semifinal" do
    assert_difference('Semifinal.count') do
      post :create, semifinal: { semifinalposition_id: @semifinal.semifinalposition_id, startup_id: @semifinal.startup_id }
    end

    assert_redirected_to semifinal_path(assigns(:semifinal))
  end

  test "should show semifinal" do
    get :show, id: @semifinal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @semifinal
    assert_response :success
  end

  test "should update semifinal" do
    patch :update, id: @semifinal, semifinal: { semifinalposition_id: @semifinal.semifinalposition_id, startup_id: @semifinal.startup_id }
    assert_redirected_to semifinal_path(assigns(:semifinal))
  end

  test "should destroy semifinal" do
    assert_difference('Semifinal.count', -1) do
      delete :destroy, id: @semifinal
    end

    assert_redirected_to semifinals_path
  end
end
