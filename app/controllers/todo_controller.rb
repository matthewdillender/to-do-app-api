class TodoController < ApplicationController
  def index
    @todos = Todo.all
    render :index
  end

  def show
    @todo = Todo.find_by(id: params[:id])
    render :show
  end

  def create
    @todo = Todo.create(
      name: params[:name],
    )
    if @todo.valid?
      render json: { message: "todo created!" }
    else
      render json: { errors: @todo.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @todo.name,
      completed: params[:completed] || @todo.completed,
      item_id: params[:item_id] || @todo.item_id,
    )
    if @todo.valid?
      render :show
    else
      render json: { errors: @todo.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy
  end
end
