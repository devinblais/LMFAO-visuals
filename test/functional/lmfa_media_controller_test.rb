require 'test_helper'

class LmfaMediaControllerTest < ActionController::TestCase
  setup do
    @lmfa_medium = lmfa_media(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lmfa_media)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lmfa_medium" do
    assert_difference('LmfaMedium.count') do
      post :create, lmfa_medium: @lmfa_medium.attributes
    end

    assert_redirected_to lmfa_medium_path(assigns(:lmfa_medium))
  end

  test "should show lmfa_medium" do
    get :show, id: @lmfa_medium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lmfa_medium
    assert_response :success
  end

  test "should update lmfa_medium" do
    put :update, id: @lmfa_medium, lmfa_medium: @lmfa_medium.attributes
    assert_redirected_to lmfa_medium_path(assigns(:lmfa_medium))
  end

  test "should destroy lmfa_medium" do
    assert_difference('LmfaMedium.count', -1) do
      delete :destroy, id: @lmfa_medium
    end

    assert_redirected_to lmfa_media_path
  end
end
