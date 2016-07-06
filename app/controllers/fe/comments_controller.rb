class Fe::CommentsController < ApplicationController
  before_action :set_fe_comment, only: [:show, :edit, :update, :destroy]

  # GET /fe/comments
  # GET /fe/comments.json
  def index
    @fe_comments = Comment.all
  end

  # GET /fe/comments/1
  # GET /fe/comments/1.json
  def show
  end

  # GET /fe/comments/new
  def new
    @fe_comment = Comment.new
  end

  # GET /fe/comments/1/edit
  def edit
  end

  # POST /fe/comments
  # POST /fe/comments.json
  def create
    @fe_comment = Comment.new(fe_comment_params)

    respond_to do |format|
      if @fe_comment.save
        format.html { redirect_to @fe_comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @fe_comment }
      else
        format.html { render :new }
        format.json { render json: @fe_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fe/comments/1
  # PATCH/PUT /fe/comments/1.json
  def update
    respond_to do |format|
      if @fe_comment.update(fe_comment_params)
        format.html { redirect_to @fe_comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @fe_comment }
      else
        format.html { render :edit }
        format.json { render json: @fe_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fe/comments/1
  # DELETE /fe/comments/1.json
  def destroy
    @fe_comment.destroy
    respond_to do |format|
      format.html { redirect_to fe_comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fe_comment
      @fe_comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fe_comment_params
      params.require(:comment).permit(:users_id, :title, :description)
    end
end
