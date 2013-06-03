class MenusController < ApplicationController
    def index
        @menus = Menu.all
    end

    def new
        @menu = Menu.new
    end

    def create
        @menu = Menu.new(params[:menu])
        @menu.save
    end

    def edit
    end

    def update
    end

    def destroy
    end

    def show
    end

end
