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
    @restaurant = Restaurant.find(params[:id])
  end
  def update
    @restaurant = Restaurant.find(params[:id])
    if(@restaurant.update_attributes(params[:restaurant]))
      flash[:notice] = "Restaurant updated successfully"
      redirect_to @restaurant
    else
      render :action=>:edit
    end
  end
  def destroy
  end
end
