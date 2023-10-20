module ApplicationCable
  class Connection < ActionCable::Connection::Base
    def connect
      puts '**** Connection#connect ****'
    end
  end
end
