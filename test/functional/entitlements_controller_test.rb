require 'test_helper'

class EntitlementsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entitlements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entitlement" do
    assert_difference('Entitlement.count') do
      post :create, :entitlement => { }
    end

    assert_redirected_to entitlement_path(assigns(:entitlement))
  end

  test "should show entitlement" do
    get :show, :id => entitlements(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => entitlements(:one).to_param
    assert_response :success
  end

  test "should update entitlement" do
    put :update, :id => entitlements(:one).to_param, :entitlement => { }
    assert_redirected_to entitlement_path(assigns(:entitlement))
  end

  test "should destroy entitlement" do
    assert_difference('Entitlement.count', -1) do
      delete :destroy, :id => entitlements(:one).to_param
    end

    assert_redirected_to entitlements_path
  end
end
