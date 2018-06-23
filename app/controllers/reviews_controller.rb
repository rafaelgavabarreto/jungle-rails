class ReviewsController < ApplicationController
  before_filter :authorize

  def create
    @review = Review.new(review_params)
    @review.user_id = user.id
    @review.product_id = params[:product_id]
    if @review.save
      redirect_to :back
    end
  end

  def destroy
    @delete_review = Review.find(params[:id]).destroy
      redirect_to :back
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description, :product_id)
  end

end