require 'test_helper'

class BetsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bet" do
    assert_difference('Bet.count') do
      post :create, :bet => { }
    end

    assert_redirected_to bet_path(assigns(:bet))
  end

  test "should show bet" do
    get :show, :id => bets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bets(:one).to_param
    assert_response :success
  end

  test "should update bet" do
    put :update, :id => bets(:one).to_param, :bet => { }
    assert_redirected_to bet_path(assigns(:bet))
  end

  test "should destroy bet" do
    assert_difference('Bet.count', -1) do
      delete :destroy, :id => bets(:one).to_param
    end

    assert_redirected_to bets_path
  end
end
