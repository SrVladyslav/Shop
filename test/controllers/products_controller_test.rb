require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get catalog" do
    get products_catalog_url
    assert_response :success
  end

end
