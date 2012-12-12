require 'test_helper'

class MicroposControllerTest < ActionController::TestCase
  setup do
    @micropo = micropos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropo" do
    assert_difference('Micropo.count') do
      post :create, micropo: { content: @micropo.content, userid: @micropo.userid }
    end

    assert_redirected_to micropo_path(assigns(:micropo))
  end

  test "should show micropo" do
    get :show, id: @micropo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropo
    assert_response :success
  end

  test "should update micropo" do
    put :update, id: @micropo, micropo: { content: @micropo.content, userid: @micropo.userid }
    assert_redirected_to micropo_path(assigns(:micropo))
  end

  test "should destroy micropo" do
    assert_difference('Micropo.count', -1) do
      delete :destroy, id: @micropo
    end

    assert_redirected_to micropos_path
  end
end
