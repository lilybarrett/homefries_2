class ReviewsController < ApplicationController
  def new
    @diner = Diner.find(params[:diner_id])
    @review = Review.new
  end

  def create
    @diner = Diner.find(params[:diner_id])
    @review = @diner.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      flash[:notice] = "Opinion noted!"
      redirect_to diner_path(@diner)
    else
      flash[:errors] = @review.errors.full_messages.join(". ")
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    @review.diner = @diner
  end

  def update
    @review = Review.find(params[:id])
    if @review.update_attributes(review_params)
      redirect_to diner_path(@review.diner)
    else
      render :edit
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :body, :diner_id)
  end
end
