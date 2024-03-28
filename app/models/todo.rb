class Todo < ApplicationRecord
  has_many :category
  belongs_to :user
  
end
