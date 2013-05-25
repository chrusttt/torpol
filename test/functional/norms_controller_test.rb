require 'test_helper'

class NormsControllerTest < ActionController::TestCase
  setup do
    @norm = norms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:norms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create norm" do
    assert_difference('Norm.count') do
      post :create, norm: { index: @norm.index, name: @norm.name, price: @norm.price }
    end

    assert_redirected_to norm_path(assigns(:norm))
  end

  test "should show norm" do
    get :show, id: @norm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @norm
    assert_response :success
  end

  test "should update norm" do
    put :update, id: @norm, norm: { index: @norm.index, name: @norm.name, price: @norm.price }
    assert_redirected_to norm_path(assigns(:norm))
  end

  test "should destroy norm" do
    assert_difference('Norm.count', -1) do
      delete :destroy, id: @norm
    end

    assert_redirected_to norms_path
  end
end
