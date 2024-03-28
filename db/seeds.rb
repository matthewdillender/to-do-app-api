User.create!([
  {name: "Matt", email: "Matt@test.com", password_digest: "$2a$12$ky0RutHxjLKDxpPanGiazOqypVFGcE9yjd5JTf9qjbazLoOwKSLNy"},
  {name: "Scott", email: "Scott@test.com", password_digest: "$2a$12$viRzgMo6V3pNIRL0ZJByaukg5P9rYeHgOfqWJ6T8y5xXHOnyOpGi6"}
])
Todo.create!([
  {user_id: 1, category_id: 1, title: "Cheese", description: "Melty and delicious...buy cheese.", deadline: nil, completed: false},
  {user_id: 1, category_id: 1, title: "Mustard", description: "Sandwich condiment needed...purchase mustard.", deadline: nil, completed: false},
  {user_id: 1, category_id: 2, title: "Dishes", description: "Wash em good fool.", deadline: nil, completed: false},
  {user_id: 1, category_id: 2, title: "Laundry", description: "Stink bad make pretty.", deadline: nil, completed: false},
  {user_id: 1, category_id: 2, title: "Recycling", description: "Separate and contemplate consumeristic compulsions.", deadline: nil, completed: false},
  {user_id: 1, category_id: 3, title: "To Do List App", description: "Finish your Todo list app project.", deadline: nil, completed: false},
  {user_id: 1, category_id: 3, title: "Personal Blog", description: "Finish your blog site.", deadline: nil, completed: false},
  {user_id: 1, category_id: 3, title: "E-Commerce Store", description: "Deploy your E-commerce store.", deadline: nil, completed: false},
  {user_id: 1, category_id: 1, title: "Bread", description: "\"test\"", deadline: nil, completed: false},
  {user_id: 1, category_id: 1, title: "Bread", description: "Fluffy and delicious...buy bread.", deadline: nil, completed: false},
  {user_id: 1, category_id: 1, title: "Cheese", description: "Melty and delicious...buy cheese.", deadline: nil, completed: false},
  {user_id: 1, category_id: 1, title: "Mustard", description: "Sandwich condiment needed...purchase mustard.", deadline: nil, completed: false},
  {user_id: 1, category_id: 2, title: "Dishes", description: "Wash em good fool.", deadline: nil, completed: false},
  {user_id: 1, category_id: 2, title: "Laundry", description: "Stink bad make pretty.", deadline: nil, completed: false},
  {user_id: 1, category_id: 2, title: "Recycling", description: "Separate and contemplate consumeristic compulsions.", deadline: nil, completed: false},
  {user_id: 1, category_id: 3, title: "To Do List App", description: "Finish your Todo list app project.", deadline: nil, completed: false},
  {user_id: 1, category_id: 3, title: "Personal Blog", description: "Finish your blog site.", deadline: nil, completed: false},
  {user_id: 1, category_id: 3, title: "E-Commerce Store", description: "Deploy your E-commerce store.", deadline: nil, completed: false}
])
Category.create!([
  {name: "Groceries"},
  {name: "Chores"},
  {name: "Projects"},
  {name: "Groceries"},
  {name: "Chores"},
  {name: "Projects"}
])
