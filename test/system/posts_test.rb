require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit posts_url
  #
  #   assert_selector "h1", text: "Posts"
  # end
  test 'viewing the index' do
    visit posts_path
    assert_selector 'h1', text: 'Posts'
    # take_screenshot
  end
end
