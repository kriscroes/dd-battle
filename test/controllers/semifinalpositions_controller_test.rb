require 'test_helper'

class SemifinalpositionsControllerTest < ActionController::TestCase
  setup do
    @semifinalposition = semifinalpositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:semifinalpositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create semifinalposition" do
    assert_difference('Semifinalposition.count') do
      post :create, semifinalposition: { name: @semifinalposition.name }
    end

    assert_redirected_to semifinalposition_path(assigns(:semifinalposition))
  end

  test "should show semifinalposition" do
    get :show, id: @semifinalposition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @semifinalposition
    assert_response :success
  end

  test "should update semifinalposition" do
    patch :update, id: @semifinalposition, semifinalposition: { name: @semifinalposition.name }
    assert_redirected_to semifinalposition_path(assigns(:semifinalposition))
  end

  test "should destroy semifinalposition" do
    assert_difference('Semifinalposition.count', -1) do
      delete :destroy, id: @semifinalposition
    end

    assert_redirected_to semifinalpositions_path
  end
end
