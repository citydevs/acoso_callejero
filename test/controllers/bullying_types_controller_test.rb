require 'test_helper'

class BullyingTypesControllerTest < ActionController::TestCase
  setup do
    @bullying_type = bullying_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bullying_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bullying_type" do
    assert_difference('BullyingType.count') do
      post :create, bullying_type: { name: @bullying_type.name }
    end

    assert_redirected_to bullying_type_path(assigns(:bullying_type))
  end

  test "should show bullying_type" do
    get :show, id: @bullying_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bullying_type
    assert_response :success
  end

  test "should update bullying_type" do
    patch :update, id: @bullying_type, bullying_type: { name: @bullying_type.name }
    assert_redirected_to bullying_type_path(assigns(:bullying_type))
  end

  test "should destroy bullying_type" do
    assert_difference('BullyingType.count', -1) do
      delete :destroy, id: @bullying_type
    end

    assert_redirected_to bullying_types_path
  end
end
