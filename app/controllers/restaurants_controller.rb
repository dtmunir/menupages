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
    end

    def show
    end

end
