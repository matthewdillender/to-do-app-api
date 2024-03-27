class ListsController < ApplicationController
  def index
    @lists = List.all
    render :index
  end

  def show
    @list = List.find_by(id: params[:id])
    render :show
  end

  def create
    @list = List.create(
      name: params[:name],
    )
    if @list.valid?
      render json: { message: "List created!" }
    else
      render json: { errors: @list.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    @list = List.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @list.name,
      completed: params[:completed] || @list.completed,
      item_id: params[:item_id] || @list.item_id,
    )
    if @list.valid?
      render :show
    else
      render json: { errors: @list.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find_by(id: params[:id])
    @list.destroy
  end
end
