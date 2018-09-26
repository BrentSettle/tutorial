require 'test_helper'

class CreateArticlesTest < ActionDispatch::IntegrationTest

  def setup
   @user = User.create(username: "john", email: "john@example.com", password: "password", admin: true)
   @category = Category.create(name: "Sports")
  end


  test "create a new article with success" do
    sign_in_as(@user, "password")
    @article = Article.create(title: "This test will work", description: "Lets do this shit")
    assert_not @article.valid?
  end

end