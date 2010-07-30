require 'test_helper'

class HundredsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hundreds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hundred" do
    assert_difference('Hundred.count') do
      post :create, :hundred => { }
    end

    assert_redirected_to hundred_path(assigns(:hundred))
  end

  test "should show hundred" do
    get :show, :id => hundreds(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hundreds(:one).to_param
    assert_response :success
  end

  test "should update hundred" do
    put :update, :id => hundreds(:one).to_param, :hundred => { }
    assert_redirected_to hundred_path(assigns(:hundred))
  end

  test "should destroy hundred" do
    assert_difference('Hundred.count', -1) do
      delete :destroy, :id => hundreds(:one).to_param
    end

    assert_redirected_to hundreds_path
  end
end
