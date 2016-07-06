class Cp::BrandsController < Cp::AdminsController
  before_action :set_cp_brand, only: [:show, :edit, :update, :destroy]

  # GET /cp/brands
  # GET /cp/brands.json
  def index
    @cp_brands = Brand.all
    @title = "Brands"
  end

  # GET /cp/brands/1
  # GET /cp/brands/1.json
  def show
  end

  # GET /cp/brands/new
  def new
    @cp_brand = Brand.new
  end

  # GET /cp/brands/1/edit
  def edit
  end

  # POST /cp/brands
  # POST /cp/brands.json
  def create
    @cp_brand = Brand.new(cp_brand_params)

    respond_to do |format|
      if @cp_brand.save
        format.html { redirect_to @cp_brand, notice: 'Brand was successfully created.' }
        format.json { render :show, status: :created, location: @cp_brand }
      else
        format.html { render :new }
        format.json { render json: @cp_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cp/brands/1
  # PATCH/PUT /cp/brands/1.json
  def update
    respond_to do |format|
      if @cp_brand.update(cp_brand_params)
        format.html { redirect_to @cp_brand, notice: 'Brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @cp_brand }
      else
        format.html { render :edit }
        format.json { render json: @cp_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp/brands/1
  # DELETE /cp/brands/1.json
  def destroy
    @cp_brand.destroy
    respond_to do |format|
      format.html { redirect_to cp_brands_url, notice: 'Brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cp_brand
      @cp_brand = Brand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cp_brand_params
      params.require(:brand).permit(:name, :description)
    end
end
