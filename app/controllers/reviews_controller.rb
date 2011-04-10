class ReviewsController < ApplicationController
  def create
    @review = Review.new(params[:review])
    @restaurant = @review.restaurant
    if(@review.save)
      flash[:notice]="New review created"
      redirect_to @review.restaurant
    else
      render :action=>"restaurants/show"
    end
  end
end
