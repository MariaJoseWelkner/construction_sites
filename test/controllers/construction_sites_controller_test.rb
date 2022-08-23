require "test_helper"

class ConstructionSitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @construction_site = construction_sites(:one)
  end

  test "should get index" do
    get construction_sites_url
    assert_response :success
  end

  test "should get new" do
    get new_construction_site_url
    assert_response :success
  end

  test "should create construction_site" do
    assert_difference("ConstructionSite.count") do
      post construction_sites_url, params: { construction_site: { city: @construction_site.city, cost: @construction_site.cost, end_date: @construction_site.end_date, name: @construction_site.name, number: @construction_site.number, starting_date: @construction_site.starting_date, state: @construction_site.state, street: @construction_site.street, zip_code: @construction_site.zip_code } }
    end

    assert_redirected_to construction_site_url(ConstructionSite.last)
  end

  test "should show construction_site" do
    get construction_site_url(@construction_site)
    assert_response :success
  end

  test "should get edit" do
    get edit_construction_site_url(@construction_site)
    assert_response :success
  end

  test "should update construction_site" do
    patch construction_site_url(@construction_site), params: { construction_site: { city: @construction_site.city, cost: @construction_site.cost, end_date: @construction_site.end_date, name: @construction_site.name, number: @construction_site.number, starting_date: @construction_site.starting_date, state: @construction_site.state, street: @construction_site.street, zip_code: @construction_site.zip_code } }
    assert_redirected_to construction_site_url(@construction_site)
  end

  test "should destroy construction_site" do
    assert_difference("ConstructionSite.count", -1) do
      delete construction_site_url(@construction_site)
    end

    assert_redirected_to construction_sites_url
  end
end
