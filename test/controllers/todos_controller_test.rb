require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  # user_jwt = generate_user_jwt(user_id: todo.user_id)
  test "create" do
    assert_difference "Todo.count", 1 do
      post "/users", params: { name: "Test", email: "test@test.com", password: "password", password_confirmation: "password"}
      post "/sessions", params: {email: "test@test.com", password: "password"}
      data = JSON.parse(response.body)
      jwt = data["jwt"]

      post "/todos", params: { name: "todo", completed: false, user_id: 1, category_id: 1, description: "test description", deadline: 1999-12-02}, headers: { "Authorization" => "Bearer #{jwt}"}
      assert_response 200
    end
  end

  test "index" do
    get "/todos.json", headers: { "Authorization" => "Bearer #{user_jwt}"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Todo.count, data.length
  end

  test "show" do
    get "/todos/#{Todo.first.id}.json", headers: { "Authorization" => "Bearer #{user_jwt}"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "user_id", "description", "deadline", "completed", "category_id", "created_at", "updated_at"], data.keys
  end

  test "update" do
    todo = Todo.first
    patch "/todos/#{todo.id}.json", params: { title: "Updated title" }, headers: { "Authorization" => "Bearer #{user_jwt}"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

  test "destroy" do
    assert_difference "Todo.count", -1 do
      delete "/todos/#{Todo.first.id}.json", headers: { "Authorization" => "Bearer #{user_jwt}"}
      assert_response 204
    end
  end
end
