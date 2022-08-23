class ConstructionSitesController < ApplicationController
  before_action :set_construction_site, only: %i[ show edit update destroy ]

  # GET /construction_sites or /construction_sites.json
  def index
    query = "SELECT e.* FROM estudiantes e "
    if params[:name_query]

      name_search = params[:name_query]
      @construction_sites = ConstructionSite.where('UPPER(name) LIKE ?', "%#{name_search.upcase}%")
    else
      @construction_sites = ConstructionSite.all
    end
    
    # @construction_sites = @construction_sites.filter_by_name(params[:name]) if params[:status].present?

    # @q = ConstructionSite.ransack(params[:q])
    # @construction_sites = @q.result

  end

  # GET /construction_sites/1 or /construction_sites/1.json
  def show
  end


  # GET /construction_sites/new
  def new
    @construction_site = ConstructionSite.new
  end

  # GET /construction_sites/1/edit
  def edit
  end

  # POST /construction_sites or /construction_sites.json
  def create
    @construction_site = ConstructionSite.new(construction_site_params)

    respond_to do |format|
      if @construction_site.save
        format.html { redirect_to construction_site_url(@construction_site), notice: "Construction site was successfully created." }
        format.json { render :show, status: :created, location: @construction_site }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @construction_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /construction_sites/1 or /construction_sites/1.json
  def update
    respond_to do |format|
      if @construction_site.update(construction_site_params)
        format.html { redirect_to construction_site_url(@construction_site), notice: "Construction site was successfully updated." }
        format.json { render :show, status: :ok, location: @construction_site }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @construction_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /construction_sites/1 or /construction_sites/1.json
  def destroy
    @construction_site.destroy

    respond_to do |format|
      format.html { redirect_to construction_sites_url, notice: "Construction site was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_construction_site
      @construction_site = ConstructionSite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def construction_site_params
      params.require(:construction_site).permit(:name, :starting_date, :end_date, :cost, :street, :number, :city, :state, :zip_code)
    end
end
