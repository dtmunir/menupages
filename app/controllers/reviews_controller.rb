class ReviewsController < ApplicationController
	def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
        @review.restaurant_id = params[:restaurant_id] 
    end

    def create
        @review = Review.new(params[:review])
        @review.save
        redirect_to restaurant_path(@review.restaurant_id)
    end

    def edit
    end

    def update
    end

    def destroy
    	@review = Review.find(params[:id])
        @review.destroy
        redirect_to review(@review.restaurant)
    end

    def show
        @review = Review.find(params[:id])
    end


end
