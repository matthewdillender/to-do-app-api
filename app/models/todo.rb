class Todo < ApplicationRecord
  belongs_to :category
  belongs_to :user

end
