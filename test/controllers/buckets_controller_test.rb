require 'test_helper'

class BucketsControllerTest < ActionController::TestCase
  setup do
    @bucket = buckets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buckets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bucket" do
    assert_difference('Bucket.count') do
      post :create, bucket: { budget_amount: @bucket.budget_amount, name: @bucket.name, starting_amount: @bucket.starting_amount }
    end

    assert_redirected_to bucket_path(assigns(:bucket))
  end

  test "should show bucket" do
    get :show, id: @bucket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bucket
    assert_response :success
  end

  test "should update bucket" do
    patch :update, id: @bucket, bucket: { budget_amount: @bucket.budget_amount, name: @bucket.name, starting_amount: @bucket.starting_amount }
    assert_redirected_to bucket_path(assigns(:bucket))
  end

  test "should destroy bucket" do
    assert_difference('Bucket.count', -1) do
      delete :destroy, id: @bucket
    end

    assert_redirected_to buckets_path
  end
end
