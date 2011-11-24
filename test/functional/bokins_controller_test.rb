require 'test_helper'

class BokinsControllerTest < ActionController::TestCase
  setup do
    @bokin = bokins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bokins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bokin" do
    assert_difference('Bokin.count') do
      post :create, :bokin => @bokin.attributes
    end

    assert_redirected_to bokin_path(assigns(:bokin))
  end

  test "should show bokin" do
    get :show, :id => @bokin.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bokin.to_param
    assert_response :success
  end

  test "should update bokin" do
    put :update, :id => @bokin.to_param, :bokin => @bokin.attributes
    assert_redirected_to bokin_path(assigns(:bokin))
  end

  test "should destroy bokin" do
    assert_difference('Bokin.count', -1) do
      delete :destroy, :id => @bokin.to_param
    end

    assert_redirected_to bokins_path
  end
end
