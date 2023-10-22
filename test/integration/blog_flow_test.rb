require 'test_helper'

class BlogFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'can see the posts page' do
    get '/'
    assert_select 'h1', 'Posts'
  end

  test 'can create a post' do
    get '/posts/new'
    assert_response :success

    post '/posts', params: { post: { title: 'can create', body: 'post successfully' } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select 'p', "Body: post successfully"
  end
end
