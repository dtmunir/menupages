class MenusController < ApplicationController
    before_filter :authenticate_user!, except: [:index, :show]

    def index
        @menus = Menu.all
    end

    def new
        @menu = Menu.new
        @restaurants = Restaurant.all
    end

    def create
        @menu = Menu.new(params[:menu])
        @menu.save
        redirect_to menus_path
    end

    def edit
    end

    def update
    end

    def destroy
    end

    def show
        @menu = Menu.find(params[:id])
    end

end
