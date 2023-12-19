require "application_system_test_case"

class Tues19decsTest < ApplicationSystemTestCase
  setup do
    @tues19dec = tues19decs(:one)
  end

  test "visiting the index" do
    visit tues19decs_url
    assert_selector "h1", text: "Tues19decs"
  end

  test "should create tues19dec" do
    visit tues19decs_url
    click_on "New tues19dec"

    fill_in "Address", with: @tues19dec.address
    fill_in "Description", with: @tues19dec.description
    fill_in "Email", with: @tues19dec.email
    fill_in "Location", with: @tues19dec.location
    fill_in "Name", with: @tues19dec.name
    check "Personaldata" if @tues19dec.personaldata
    fill_in "Phone", with: @tues19dec.phone
    check "Showemail" if @tues19dec.showemail
    fill_in "Trade", with: @tues19dec.trade
    click_on "Create Tues19dec"

    assert_text "Tues19dec was successfully created"
    click_on "Back"
  end

  test "should update Tues19dec" do
    visit tues19dec_url(@tues19dec)
    click_on "Edit this tues19dec", match: :first

    fill_in "Address", with: @tues19dec.address
    fill_in "Description", with: @tues19dec.description
    fill_in "Email", with: @tues19dec.email
    fill_in "Location", with: @tues19dec.location
    fill_in "Name", with: @tues19dec.name
    check "Personaldata" if @tues19dec.personaldata
    fill_in "Phone", with: @tues19dec.phone
    check "Showemail" if @tues19dec.showemail
    fill_in "Trade", with: @tues19dec.trade
    click_on "Update Tues19dec"

    assert_text "Tues19dec was successfully updated"
    click_on "Back"
  end

  test "should destroy Tues19dec" do
    visit tues19dec_url(@tues19dec)
    click_on "Destroy this tues19dec", match: :first

    assert_text "Tues19dec was successfully destroyed"
  end
end
