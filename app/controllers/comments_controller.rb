class CommentsController < ApplicationController
  before_action :authenticate_user!
    before_action :set_comment, only: [:destroy]



  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
    def create
      @product = Product.find(params[:product_id])
      @comment = @product.comments.new(comment_params)
      @comment.user = current_user

      if @comment.save
        redirect_to product_path(@product), notice: 'Review was successfully created!'
      else
        redirect_to product_path(@product), alert: "Comment can't be blank!"
      end
    end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to product_path(@product), alert: "You have deleted the comment successfully"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:product_id, :body, :user_id)
    end
end