require "test_helper"

class ConstructionMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @construction_material = construction_materials(:one)
  end

  test "should get index" do
    get construction_materials_url
    assert_response :success
  end

  test "should get new" do
    get new_construction_material_url
    assert_response :success
  end

  test "should create construction_material" do
    assert_difference("ConstructionMaterial.count") do
      post construction_materials_url, params: { construction_material: { amount: @construction_material.amount, construction_site_id: @construction_material.construction_site_id, material_id: @construction_material.material_id } }
    end

    assert_redirected_to construction_material_url(ConstructionMaterial.last)
  end

  test "should show construction_material" do
    get construction_material_url(@construction_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_construction_material_url(@construction_material)
    assert_response :success
  end

  test "should update construction_material" do
    patch construction_material_url(@construction_material), params: { construction_material: { amount: @construction_material.amount, construction_site_id: @construction_material.construction_site_id, material_id: @construction_material.material_id } }
    assert_redirected_to construction_material_url(@construction_material)
  end

  test "should destroy construction_material" do
    assert_difference("ConstructionMaterial.count", -1) do
      delete construction_material_url(@construction_material)
    end

    assert_redirected_to construction_materials_url
  end
end
