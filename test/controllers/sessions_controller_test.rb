require "test_helper"


class SessionsController < ApplicationController
  test "create" do
    assert_difference "Session.count", 1 do
      post "/sessions.json", params: { email: "email.com", password: "sessionpassword"}
      assert_response 200
    end
  end
end