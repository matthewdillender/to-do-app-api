class TodosController < ApplicationController
  before_action :authenticate_user

  def index
    @todos = Todo.includes(:category).all
    render json: @todos.as_json(include: { category: { only: [:id, :name] } })
  end
  
    def show
      @todo = Todo.find_by(id: params[:id])
      render :show
    end
  
    def create
      @todo = Todo.create(
        title: params[:title],
        description: params[:description],
        deadline: params[:deadline],
        user_id: current_user.id,
        category_id: params[:category_id]
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
      @todo.update(
        title: params[:title] || @todo.title,
        completed: params[:completed] || @todo.completed,
        category_id: params[:category_id] || @todo.category_id,
        description: params[:description] || @todo.description,
        deadline: params[:deadline] || @todo.deadline,
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

