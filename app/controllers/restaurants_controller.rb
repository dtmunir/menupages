class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(params[:restaurant])
        @restaurant.save
    end

    def edit
    end

    def update
    end

    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        # redirect_to "/restaurants"
        redirect_to restaurants_path
    end

    def show
    end

end
