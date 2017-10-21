class WebsocketChatController < WebsocketRails::BaseController
    def message_recieve
    # クライアントからのメッセージを取得
    recieve_message = message()
    group_id =recieve_message[1]
   # user_image = User.find(message[2])
    # recieve_message << user_image
    user_image = User.find(message[2]).image
    user_nickname = User.find(message[2]).nickname
    recieve_message << user_image
    recieve_message << user_nickname
    WebsocketRails[group_id].trigger('websocket_chat', recieve_message);
  end
end
