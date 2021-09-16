require "test_helper"

class CartsItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carts_item = carts_items(:one)
  end

  test "should get index" do
    get carts_items_url, as: :json
    assert_response :success
  end

  test "should create carts_item" do
    assert_difference('CartsItem.count') do
      post carts_items_url, params: { carts_item: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show carts_item" do
    get carts_item_url(@carts_item), as: :json
    assert_response :success
  end

  test "should update carts_item" do
    patch carts_item_url(@carts_item), params: { carts_item: {  } }, as: :json
    assert_response 200
  end

  test "should destroy carts_item" do
    assert_difference('CartsItem.count', -1) do
      delete carts_item_url(@carts_item), as: :json
    end

    assert_response 204
  end
end
