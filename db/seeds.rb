# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Category.create!([
  {name: "Groceries"},
  {name: "Chores"},
  {name: "Projects"}
])
Todo.create!([
  {title: "Bread", user_id: 1, description: "Fluffy and delicious...buy bread.", deadline: "04/19/2024", completed: false, category_id: 1},
  {title: "Cheese", user_id: 1, description: "Melty and delicious...buy cheese.", deadline: "04/19/2024", completed: false, category_id: 1},
  {title: "Mustard", user_id: 1, description: "Sandwich condiment needed...purchase mustard.", deadline: "04/19/2024", completed: false, category_id: 1},
  {title: "Dishes", user_id: 1, description: "Wash em good fool.", deadline: "04/19/2024", completed: false, category_id: 2},
  {title: "Laundry", user_id: 1, description: "Stink bad make pretty.", deadline: "04/19/2024", completed: false, category_id: 2},
  {title: "Recycling", user_id: 1, description: "Separate and contemplate consumeristic compulsions.", deadline: "04/19/2024", completed: false, category_id: 2},
  {title: "To Do List App", user_id: 1, description: "Finish your Todo list app project.", deadline: "04/19/2024", completed: false, category_id: 3},
  {title: "Personal Blog", user_id: 1, description: "Finish your blog site.", deadline: "04/19/2024", completed: false, category_id: 3},
  {title: "E-Commerce Store", user_id: 1, description: "Deploy your E-commerce store.", deadline: "04/19/2024", completed: false, category_id: 3}
])
