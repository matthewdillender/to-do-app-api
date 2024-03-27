require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { name: "user", email: "email.com", password: "password", password_confirmation: "password confirmation" }
      assert_response 200
    end
  end
end
