require "test_helper"

class PProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @p_product = p_products(:one)
  end

  test "should get index" do
    get p_products_url
    assert_response :success
  end

  test "should get new" do
    get new_p_product_url
    assert_response :success
  end

  test "should create p_product" do
    assert_difference("PProduct.count") do
      post p_products_url, params: { p_product: { description: @p_product.description, image_url: @p_product.image_url, price: @p_product.price, title: @p_product.title } }
    end

    assert_redirected_to p_product_url(PProduct.last)
  end

  test "should show p_product" do
    get p_product_url(@p_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_p_product_url(@p_product)
    assert_response :success
  end

  test "should update p_product" do
    patch p_product_url(@p_product), params: { p_product: { description: @p_product.description, image_url: @p_product.image_url, price: @p_product.price, title: @p_product.title } }
    assert_redirected_to p_product_url(@p_product)
  end

  test "should destroy p_product" do
    assert_difference("PProduct.count", -1) do
      delete p_product_url(@p_product)
    end

    assert_redirected_to p_products_url
  end
end
