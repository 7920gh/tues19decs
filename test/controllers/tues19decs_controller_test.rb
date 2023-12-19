require "test_helper"

class Tues19decsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tues19dec = tues19decs(:one)
  end

  test "should get index" do
    get tues19decs_url
    assert_response :success
  end

  test "should get new" do
    get new_tues19dec_url
    assert_response :success
  end

  test "should create tues19dec" do
    assert_difference("Tues19dec.count") do
      post tues19decs_url, params: { tues19dec: { address: @tues19dec.address, description: @tues19dec.description, email: @tues19dec.email, location: @tues19dec.location, name: @tues19dec.name, personaldata: @tues19dec.personaldata, phone: @tues19dec.phone, showemail: @tues19dec.showemail, trade: @tues19dec.trade } }
    end

    assert_redirected_to tues19dec_url(Tues19dec.last)
  end

  test "should show tues19dec" do
    get tues19dec_url(@tues19dec)
    assert_response :success
  end

  test "should get edit" do
    get edit_tues19dec_url(@tues19dec)
    assert_response :success
  end

  test "should update tues19dec" do
    patch tues19dec_url(@tues19dec), params: { tues19dec: { address: @tues19dec.address, description: @tues19dec.description, email: @tues19dec.email, location: @tues19dec.location, name: @tues19dec.name, personaldata: @tues19dec.personaldata, phone: @tues19dec.phone, showemail: @tues19dec.showemail, trade: @tues19dec.trade } }
    assert_redirected_to tues19dec_url(@tues19dec)
  end

  test "should destroy tues19dec" do
    assert_difference("Tues19dec.count", -1) do
      delete tues19dec_url(@tues19dec)
    end

    assert_redirected_to tues19decs_url
  end
end
