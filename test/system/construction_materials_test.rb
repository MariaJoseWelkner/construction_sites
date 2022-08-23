require "application_system_test_case"

class ConstructionMaterialsTest < ApplicationSystemTestCase
  setup do
    @construction_material = construction_materials(:one)
  end

  test "visiting the index" do
    visit construction_materials_url
    assert_selector "h1", text: "Construction materials"
  end

  test "should create construction material" do
    visit construction_materials_url
    click_on "New construction material"

    fill_in "Amount", with: @construction_material.amount
    fill_in "Construction site", with: @construction_material.construction_site_id
    fill_in "Material", with: @construction_material.material_id
    click_on "Create Construction material"

    assert_text "Construction material was successfully created"
    click_on "Back"
  end

  test "should update Construction material" do
    visit construction_material_url(@construction_material)
    click_on "Edit this construction material", match: :first

    fill_in "Amount", with: @construction_material.amount
    fill_in "Construction site", with: @construction_material.construction_site_id
    fill_in "Material", with: @construction_material.material_id
    click_on "Update Construction material"

    assert_text "Construction material was successfully updated"
    click_on "Back"
  end

  test "should destroy Construction material" do
    visit construction_material_url(@construction_material)
    click_on "Destroy this construction material", match: :first

    assert_text "Construction material was successfully destroyed"
  end
end
