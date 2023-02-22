class ReviewsController < ApplicationController
  def new
    @reviews = Reviews.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save!
      redirect_to review_path(@review)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_reviews
    @review = Review.find(params[:id])
  end

end
