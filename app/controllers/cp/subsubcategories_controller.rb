class Cp::SubsubcategoriesController < Cp::AdminsController
  before_action :set_cp_subsubcategory, only: [:show, :edit, :update, :destroy]

  # GET /cp/subsubcategories
  # GET /cp/subsubcategories.json
  def index
    @cp_subsubcategories = Subsubcategory.all
    @title = "Subsubcategories"
  end

  # GET /cp/subsubcategories/1
  # GET /cp/subsubcategories/1.json
  def show
  end

  # GET /cp/subsubcategories/new
  def new
    @cp_subsubcategory = Subsubcategory.new
  end

  # GET /cp/subsubcategories/1/edit
  def edit
  end

  # POST /cp/subsubcategories
  # POST /cp/subsubcategories.json
  def create
    @cp_subsubcategory = Subsubcategory.new(cp_subsubcategory_params)

    respond_to do |format|
      if @cp_subsubcategory.save
        format.html { redirect_to @cp_subsubcategory, notice: 'Subsubcategory was successfully created.' }
        format.json { render :show, status: :created, location: @cp_subsubcategory }
      else
        format.html { render :new }
        format.json { render json: @cp_subsubcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cp/subsubcategories/1
  # PATCH/PUT /cp/subsubcategories/1.json
  def update
    respond_to do |format|
      if @cp_subsubcategory.update(cp_subsubcategory_params)
        format.html { redirect_to @cp_subsubcategory, notice: 'Subsubcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @cp_subsubcategory }
      else
        format.html { render :edit }
        format.json { render json: @cp_subsubcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp/subsubcategories/1
  # DELETE /cp/subsubcategories/1.json
  def destroy
    @cp_subsubcategory.destroy
    respond_to do |format|
      format.html { redirect_to cp_subsubcategories_url, notice: 'Subsubcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cp_subsubcategory
      @cp_subsubcategory = Subsubcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cp_subsubcategory_params
      params.require(:subsubcategory).permit(:subcategories_id, :name, :description)
    end
end
