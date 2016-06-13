require 'test_helper'

class QualificationpositionsControllerTest < ActionController::TestCase
  setup do
    @qualificationposition = qualificationpositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualificationpositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualificationposition" do
    assert_difference('Qualificationposition.count') do
      post :create, qualificationposition: { name: @qualificationposition.name }
    end

    assert_redirected_to qualificationposition_path(assigns(:qualificationposition))
  end

  test "should show qualificationposition" do
    get :show, id: @qualificationposition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualificationposition
    assert_response :success
  end

  test "should update qualificationposition" do
    patch :update, id: @qualificationposition, qualificationposition: { name: @qualificationposition.name }
    assert_redirected_to qualificationposition_path(assigns(:qualificationposition))
  end

  test "should destroy qualificationposition" do
    assert_difference('Qualificationposition.count', -1) do
      delete :destroy, id: @qualificationposition
    end

    assert_redirected_to qualificationpositions_path
  end
end
