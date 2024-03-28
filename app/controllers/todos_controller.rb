class TodosController < ApplicationController

    def index
      @users = User.all
      render :index
    end
  
    def show
      @todo = Todo.find_by(id: params[:id])
      render :show
    end
  
    def create
      @todo = Todo.create(
        title: params[:title],
        description: params[:description],
        deadline: params[:deadline]
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

