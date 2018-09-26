require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

  #def setup
   # @user = User.create(username: "john", email: "john@example.com", password: "password", admin: true)
  #end

  test "signup user in failure" do
    @user = User.create(username: "john", email: "johnexample.com", password: "password", admin: false)
    assert_not @user.valid?
  end

end