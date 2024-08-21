require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get product_listing" do
    get products_product_listing_url
    assert_response :success
  end
end
