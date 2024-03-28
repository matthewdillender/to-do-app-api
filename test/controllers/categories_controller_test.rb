require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/categories.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Category.count, data.length
  end

  test "create" do
    assert_difference "Category.count", 1 do
      post "/categories.json", params: { name: "name"}
      assert_response 200
    end
  end

  test "show" do
    get "/categories/#{Category.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name"], data.keys
  end

  test "update" do
    category = Category.first
    patch "/categories/#{category.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Category.count", -1 do
      delete "/categories/#{Category.first.id}.json"
      assert_response 200
    end
  end
end
