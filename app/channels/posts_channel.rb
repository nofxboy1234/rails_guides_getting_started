class PostsChannel < ApplicationCable::Channel
  def subscribed
    puts '**** PostsChannel#subscribed ****'

    # stream_from "some_channel"
    post = Post.find(params[:id])
    stream_for post
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    puts '**** PostsChannel#unsubscribed ****'
  end
end
