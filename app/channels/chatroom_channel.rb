class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # Find the instance or named_broadcast we want to send info to
    chatroom = Chatroom.find(params[:id])
    # Stream info to it
    stream_for chatroom
  end
end
