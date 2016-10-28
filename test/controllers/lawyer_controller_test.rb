require 'test_helper'

class LawyerControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get insert" do
    get :insert
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
