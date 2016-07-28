WebsocketRails::EventMap.describe do
 subscribe :websocket_chat, to: WebsocketChatController, with_method: :message_recieve
end
