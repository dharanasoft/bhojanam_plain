class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if(@restaurant.save)
      flash[:notice] = "Restaurant saved successfully"
      redirect_to @restaurant
    else
      render :action=>:new
    end
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    
  end
  def edit
  end
  def update
  end
  def destroy
  end
end
