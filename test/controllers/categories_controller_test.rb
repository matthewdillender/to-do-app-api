require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  user_jwt = generate_user_jwt(user_id: category.user_id)
  test "index" do
    get "/categories.json", headers: { "Authorization" => "Bearer #{user_jwt}"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Category.count, data.length
  end

  test "create" do
    assert_difference "Category.count", 1 do
      post "/users", params: { name: "Test", email: "test@test.com", password: "password", password_confirmation: "password"}
      post "/sessions", params: {email: "test@test.com", password: "password"}
      data = JSON.parse(response.body)
      jwt = data["jwt"]
      post "/categories.json", params: { name: "name"}, headers: { "Authorization" => "Bearer #{jwt}"}
      assert_response 200
    end
  end

  test "show" do
    get "/categories/#{Category.first.id}.json", headers: { "Authorization" => "Bearer #{user_jwt}"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "updated_at", "created_at"], data.keys
  end

  test "update" do
    category = Category.first
    patch "/categories/#{category.id}.json", params: { name: "Updated name" }, headers: { "Authorization" => "Bearer #{user_jwt}"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Category.count", -1 do
      delete "/categories/#{Category.first.id}.json", headers: { "Authorization" => "Bearer #{user_jwt}"}
      assert_response 200
    end
  end
end
