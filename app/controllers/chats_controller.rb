class ChatsController < ApplicationController
  def index
@channel_id = params[:format]
@room = Room.find(params[:format])
@room.user_count += 1
@room.save
  end


  def back_room
    @room = Room.find(params[:format])
@room.user_count -= 1
@room.save

    if @room.user_count == 0
      @room.destroy
    end

redirect_to :root
  end
end
