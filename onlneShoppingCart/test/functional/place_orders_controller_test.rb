require 'test_helper'

class PlaceOrdersControllerTest < ActionController::TestCase
  setup do
    @place_order = place_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:place_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place_order" do
    assert_difference('PlaceOrder.count') do
      post :create, place_order: { item: @place_order.item, mail: @place_order.mail }
    end

    assert_redirected_to place_order_path(assigns(:place_order))
  end

  test "should show place_order" do
    get :show, id: @place_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place_order
    assert_response :success
  end

  test "should update place_order" do
    put :update, id: @place_order, place_order: { item: @place_order.item, mail: @place_order.mail }
    assert_redirected_to place_order_path(assigns(:place_order))
  end

  test "should destroy place_order" do
    assert_difference('PlaceOrder.count', -1) do
      delete :destroy, id: @place_order
    end

    assert_redirected_to place_orders_path
  end
end
