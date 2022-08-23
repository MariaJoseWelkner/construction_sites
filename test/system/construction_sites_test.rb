require "application_system_test_case"

class ConstructionSitesTest < ApplicationSystemTestCase
  setup do
    @construction_site = construction_sites(:one)
  end

  test "visiting the index" do
    visit construction_sites_url
    assert_selector "h1", text: "Construction sites"
  end

  test "should create construction site" do
    visit construction_sites_url
    click_on "New construction site"

    fill_in "City", with: @construction_site.city
    fill_in "Cost", with: @construction_site.cost
    fill_in "End date", with: @construction_site.end_date
    fill_in "Name", with: @construction_site.name
    fill_in "Number", with: @construction_site.number
    fill_in "Starting date", with: @construction_site.starting_date
    fill_in "State", with: @construction_site.state
    fill_in "Street", with: @construction_site.street
    fill_in "Zip code", with: @construction_site.zip_code
    click_on "Create Construction site"

    assert_text "Construction site was successfully created"
    click_on "Back"
  end

  test "should update Construction site" do
    visit construction_site_url(@construction_site)
    click_on "Edit this construction site", match: :first

    fill_in "City", with: @construction_site.city
    fill_in "Cost", with: @construction_site.cost
    fill_in "End date", with: @construction_site.end_date
    fill_in "Name", with: @construction_site.name
    fill_in "Number", with: @construction_site.number
    fill_in "Starting date", with: @construction_site.starting_date
    fill_in "State", with: @construction_site.state
    fill_in "Street", with: @construction_site.street
    fill_in "Zip code", with: @construction_site.zip_code
    click_on "Update Construction site"

    assert_text "Construction site was successfully updated"
    click_on "Back"
  end

  test "should destroy Construction site" do
    visit construction_site_url(@construction_site)
    click_on "Destroy this construction site", match: :first

    assert_text "Construction site was successfully destroyed"
  end
end
