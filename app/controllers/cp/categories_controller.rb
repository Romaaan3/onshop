class Cp::CategoriesController < ApplicationController
  before_action :set_cp_category, only: [:show, :edit, :update, :destroy]

  # GET /cp/categories
  # GET /cp/categories.json
  def index
    @cp_categories = Cp::Category.all
  end

  # GET /cp/categories/1
  # GET /cp/categories/1.json
  def show
  end

  # GET /cp/categories/new
  def new
    @cp_category = Cp::Category.new
  end

  # GET /cp/categories/1/edit
  def edit
  end

  # POST /cp/categories
  # POST /cp/categories.json
  def create
    @cp_category = Cp::Category.new(cp_category_params)

    respond_to do |format|
      if @cp_category.save
        format.html { redirect_to @cp_category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @cp_category }
      else
        format.html { render :new }
        format.json { render json: @cp_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cp/categories/1
  # PATCH/PUT /cp/categories/1.json
  def update
    respond_to do |format|
      if @cp_category.update(cp_category_params)
        format.html { redirect_to @cp_category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @cp_category }
      else
        format.html { render :edit }
        format.json { render json: @cp_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp/categories/1
  # DELETE /cp/categories/1.json
  def destroy
    @cp_category.destroy
    respond_to do |format|
      format.html { redirect_to cp_categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cp_category
      @cp_category = Cp::Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cp_category_params
      params.require(:cp_category).permit(:name, :description)
    end
end
