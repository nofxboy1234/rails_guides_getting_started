require "test_helper"

class PostTest < ActiveSupport::TestCase
  test 'should not save post without title' do
    post = Post.new
    assert_not post.save, 'Save the article without a title'
  end

  test 'should report error' do
    # some_undefined_variable
    # assert true

    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
