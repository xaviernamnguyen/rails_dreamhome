require "application_system_test_case"

class RealestatesTest < ApplicationSystemTestCase
  setup do
    @realestate = realestates(:one)
  end

  test "visiting the index" do
    visit realestates_url
    assert_selector "h1", text: "Realestates"
  end

  test "creating a Realestate" do
    visit realestates_url
    click_on "New Realestate"

    fill_in "Address", with: @realestate.address
    fill_in "Desc", with: @realestate.desc
    check "Feat air conditioner" if @realestate.feat_air_conditioner
    check "Feat broadband" if @realestate.feat_broadband
    check "Feat garage" if @realestate.feat_garage
    check "Feat heater" if @realestate.feat_heater
    check "Feat hot water" if @realestate.feat_hot_water
    fill_in "Map", with: @realestate.map
    fill_in "Price", with: @realestate.price
    fill_in "Room", with: @realestate.room
    fill_in "Title", with: @realestate.title
    fill_in "Toilet", with: @realestate.toilet
    click_on "Create Realestate"

    assert_text "Realestate was successfully created"
    click_on "Back"
  end

  test "updating a Realestate" do
    visit realestates_url
    click_on "Edit", match: :first

    fill_in "Address", with: @realestate.address
    fill_in "Desc", with: @realestate.desc
    check "Feat air conditioner" if @realestate.feat_air_conditioner
    check "Feat broadband" if @realestate.feat_broadband
    check "Feat garage" if @realestate.feat_garage
    check "Feat heater" if @realestate.feat_heater
    check "Feat hot water" if @realestate.feat_hot_water
    fill_in "Map", with: @realestate.map
    fill_in "Price", with: @realestate.price
    fill_in "Room", with: @realestate.room
    fill_in "Title", with: @realestate.title
    fill_in "Toilet", with: @realestate.toilet
    click_on "Update Realestate"

    assert_text "Realestate was successfully updated"
    click_on "Back"
  end

  test "destroying a Realestate" do
    visit realestates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Realestate was successfully destroyed"
  end
end
