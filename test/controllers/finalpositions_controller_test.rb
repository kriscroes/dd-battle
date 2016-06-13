require 'test_helper'

class FinalpositionsControllerTest < ActionController::TestCase
  setup do
    @finalposition = finalpositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finalpositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finalposition" do
    assert_difference('Finalposition.count') do
      post :create, finalposition: { name: @finalposition.name }
    end

    assert_redirected_to finalposition_path(assigns(:finalposition))
  end

  test "should show finalposition" do
    get :show, id: @finalposition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finalposition
    assert_response :success
  end

  test "should update finalposition" do
    patch :update, id: @finalposition, finalposition: { name: @finalposition.name }
    assert_redirected_to finalposition_path(assigns(:finalposition))
  end

  test "should destroy finalposition" do
    assert_difference('Finalposition.count', -1) do
      delete :destroy, id: @finalposition
    end

    assert_redirected_to finalpositions_path
  end
end
