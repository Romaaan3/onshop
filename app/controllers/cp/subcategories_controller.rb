class Cp::SubcategoriesController < Cp::AdminsController
  before_action :set_cp_subcategory, only: [:show, :edit, :update, :destroy]

  # GET /cp/subcategories
  # GET /cp/subcategories.json
  def index
    @cp_subcategories = Subcategory.all
    @title = "Subcategories"
  end

  # GET /cp/subcategories/1
  # GET /cp/subcategories/1.json
  def show
  end

  # GET /cp/subcategories/new
  def new
    @cp_subcategory = Subcategory.new
  end

  # GET /cp/subcategories/1/edit
  def edit
  end

  # POST /cp/subcategories
  # POST /cp/subcategories.json
  def create
    @cp_subcategory = Subcategory.new(cp_subcategory_params)

    respond_to do |format|
      if @cp_subcategory.save
        format.html { redirect_to @cp_subcategory, notice: 'Subcategory was successfully created.' }
        format.json { render :show, status: :created, location: @cp_subcategory }
      else
        format.html { render :new }
        format.json { render json: @cp_subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cp/subcategories/1
  # PATCH/PUT /cp/subcategories/1.json
  def update
    respond_to do |format|
      if @cp_subcategory.update(cp_subcategory_params)
        format.html { redirect_to @cp_subcategory, notice: 'Subcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @cp_subcategory }
      else
        format.html { render :edit }
        format.json { render json: @cp_subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp/subcategories/1
  # DELETE /cp/subcategories/1.json
  def destroy
    @cp_subcategory.destroy
    respond_to do |format|
      format.html { redirect_to cp_subcategories_url, notice: 'Subcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cp_subcategory
      @cp_subcategory = Subcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cp_subcategory_params
      params.require(:subcategory).permit(:name, :description, :categories_id)
    end
end
