require 'test_helper'

class AggressorsControllerTest < ActionController::TestCase
  setup do
    @aggressor = aggressors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aggressors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aggressor" do
    assert_difference('Aggressor.count') do
      post :create, aggressor: { name: @aggressor.name }
    end

    assert_redirected_to aggressor_path(assigns(:aggressor))
  end

  test "should show aggressor" do
    get :show, id: @aggressor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aggressor
    assert_response :success
  end

  test "should update aggressor" do
    patch :update, id: @aggressor, aggressor: { name: @aggressor.name }
    assert_redirected_to aggressor_path(assigns(:aggressor))
  end

  test "should destroy aggressor" do
    assert_difference('Aggressor.count', -1) do
      delete :destroy, id: @aggressor
    end

    assert_redirected_to aggressors_path
  end
end
