class ConstructionMaterialsController < ApplicationController
  before_action :set_construction_material, only: %i[ show edit update destroy ]

  # GET /construction_materials or /construction_materials.json
  def index
    @construction_materials = ConstructionMaterial.all
  end

  # GET /construction_materials/1 or /construction_materials/1.json
  def show
  end

  # GET /construction_materials/new
  def new
    @construction_material = ConstructionMaterial.new
  end

  # GET /construction_materials/1/edit
  def edit
  end

  # POST /construction_materials or /construction_materials.json
  def create
    @construction_material = ConstructionMaterial.new(construction_material_params)

    respond_to do |format|
      if @construction_material.save
        format.html { redirect_to construction_material_url(@construction_material), notice: "Construction material was successfully created." }
        format.json { render :show, status: :created, location: @construction_material }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @construction_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /construction_materials/1 or /construction_materials/1.json
  def update
    respond_to do |format|
      if @construction_material.update(construction_material_params)
        format.html { redirect_to construction_material_url(@construction_material), notice: "Construction material was successfully updated." }
        format.json { render :show, status: :ok, location: @construction_material }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @construction_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /construction_materials/1 or /construction_materials/1.json
  def destroy
    @construction_material.destroy

    respond_to do |format|
      format.html { redirect_to construction_materials_url, notice: "Construction material was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_construction_material
      @construction_material = ConstructionMaterial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def construction_material_params
      params.require(:construction_material).permit(:amount, :material_id, :construction_site_id)
    end
end
