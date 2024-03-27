class ItemsController < ApplicationController

  def index
    @items = Item.all
    render :index
  end

  def show
    @item = Item.find_by(id: params[:id]) 
    render :show
  end

  def create
    @item = Item.create(
      name: params[:name]
    )
    render :show
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.update(
      name: params[:name] || @item.name
    )
    render :show
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    render json: { message: "Item destroyed successfully" }
  end
end
