class Category < ApplicationRecord
  has_many :todos
  
  def todos
    Todo.where(category_id: id)
  end
end
