require "application_system_test_case"

class PProductsTest < ApplicationSystemTestCase
  setup do
    @p_product = p_products(:one)
  end

  test "visiting the index" do
    visit p_products_url
    assert_selector "h1", text: "P products"
  end

  test "should create p product" do
    visit p_products_url
    click_on "New p product"

    fill_in "Description", with: @p_product.description
    fill_in "Image url", with: @p_product.image_url
    fill_in "Price", with: @p_product.price
    fill_in "Title", with: @p_product.title
    click_on "Create P product"

    assert_text "P product was successfully created"
    click_on "Back"
  end

  test "should update P product" do
    visit p_product_url(@p_product)
    click_on "Edit this p product", match: :first

    fill_in "Description", with: @p_product.description
    fill_in "Image url", with: @p_product.image_url
    fill_in "Price", with: @p_product.price
    fill_in "Title", with: @p_product.title
    click_on "Update P product"

    assert_text "P product was successfully updated"
    click_on "Back"
  end

  test "should destroy P product" do
    visit p_product_url(@p_product)
    click_on "Destroy this p product", match: :first

    assert_text "P product was successfully destroyed"
  end
end
