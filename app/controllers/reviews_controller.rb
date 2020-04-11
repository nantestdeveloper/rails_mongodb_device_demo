class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:create,:new]

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review  = current_user.reviews.new(review_params)
    respond_to do |format|
      if @review.save
        format.html { redirect_to @post, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end
    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:content,:rating, :post_id)
    end
end
