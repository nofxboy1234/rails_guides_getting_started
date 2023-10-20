import consumer from 'channels/consumer';

consumer.subscriptions.create(
  { channel: 'PostsChannel', id: 1 },
  {
    connected() {
      // Called when the subscription is ready for use on the server
      console.log('**** postsChannel.connected() ****')
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
      console.log('**** postsChannel.disconnected() ****')
    },

    received(data) {
      // Called when there's incoming data on the websocket for this channel
      console.log(data);
    },
  }
);
