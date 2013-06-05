class MenuItemsController < ApplicationController

    def index
        @menu_items = MenuItems.all
    end

    def new
        @menu_item = MenuItem.new
        @menus = Menu.all
    end

    def create
        @menu_item = MenuItem.new(params[:menu_item])
        @menu_item.save
        redirect_to menu_path(@menu_item.menu)
    end

    def edit
    end

    def update
    end

    def destroy
        @menu_item = MenuItem.find(params[:id])
        @menu_item.destroy
        redirect_to menu_path(@menu_item.menu)
    end

    def show
        @menu_item = MenuItem.find(params[:id])
    end
end
