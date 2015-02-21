require 'test_helper'

class PaychecksControllerTest < ActionController::TestCase
  setup do
    @paycheck = paychecks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paychecks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paycheck" do
    assert_difference('Paycheck.count') do
      post :create, paycheck: { name: @paycheck.name, planned_amount: @paycheck.planned_amount }
    end

    assert_redirected_to paycheck_path(assigns(:paycheck))
  end

  test "should show paycheck" do
    get :show, id: @paycheck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paycheck
    assert_response :success
  end

  test "should update paycheck" do
    patch :update, id: @paycheck, paycheck: { name: @paycheck.name, planned_amount: @paycheck.planned_amount }
    assert_redirected_to paycheck_path(assigns(:paycheck))
  end

  test "should destroy paycheck" do
    assert_difference('Paycheck.count', -1) do
      delete :destroy, id: @paycheck
    end

    assert_redirected_to paychecks_path
  end
end
