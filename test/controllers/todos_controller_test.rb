require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  # test "create" do
  #   assert_difference "Todo.count", 1 do
  #     post "/todos.json", params: { name: "todo", completed: false, user_id: 1, category_id: 1, description: "test description", deadline: 1999-12-02}
  #     assert_response 200
  #   end
  # end

  # test "index" do
  #   get "/todos.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal Todo.count, data.length
  # end

  # test "show" do
  #   get "/todos/#{Todo.first.id}.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal ["id", "title", "completed", "user_id", "category_id", "description", "deadline"], data.keys
  # end

  # test "update" do
  #   todo = Todo.first
  #   patch "/todos/#{todo.id}.json", params: { title: "Updated name" }
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal "Updated name", data["name"]
  # end
end
