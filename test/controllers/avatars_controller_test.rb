require 'test_helper'

class AvatarsControllerTest < ActionController::TestCase
  setup do
    @avatar = avatars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avatars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avatar" do
    assert_difference('Avatar.count') do
      post :create, avatar: { desc: @avatar.desc, name: @avatar.name, picture: @avatar.picture }
    end

    assert_redirected_to avatar_path(assigns(:avatar))
  end

  test "should show avatar" do
    get :show, id: @avatar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avatar
    assert_response :success
  end

  test "should update avatar" do
    patch :update, id: @avatar, avatar: { desc: @avatar.desc, name: @avatar.name, picture: @avatar.picture }
    assert_redirected_to avatar_path(assigns(:avatar))
  end

  test "should destroy avatar" do
    assert_difference('Avatar.count', -1) do
      delete :destroy, id: @avatar
    end

    assert_redirected_to avatars_path
  end
end
