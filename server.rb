require 'eventmachine'
require 'em-websocket'

EventMachine.run do
  EventMachine::WebSocket.start(:host => "0.0.0.0", :port => 8888) do |socket|
    socket.onopen do
      puts "opened"
      socket.send "Hi!"
    end
    socket.onmessage do |msg|
      puts "msg received [#{msg}]"
      socket.send "Pong: #{msg}"
    end
  end
end
