require 'test_helper'

class KfcinfoControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get menu" do
    get :menu
    assert_response :success
  end

  test "should get contactus" do
    get :contactus
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
