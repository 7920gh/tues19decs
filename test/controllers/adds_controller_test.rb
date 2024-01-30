require "test_helper"

class AddsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
   test "should get show" do
   get adds_show_url
   assert_response :success
   assert_select "title", "Home | Ruby"
  end
end
