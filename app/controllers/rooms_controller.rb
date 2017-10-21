class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :back_room]
  after_action :exec_room_count, only: [:show, :back_room]

  def new
    @room = Room.new
    @room_images = RoomImage.all
    @user = User.find(params[:format])
  end

  def show
    @room = Room.find(params[:id])
    @user.room_id = @room.id
    @user.save
  end

  def back_room
    @room = Room.find(params[:room_id])
    @user.room_id = 0
    @user.save
    @rooms = Room.all
    render :template => "users/show"
  end

  def create
    room = Room.new(create_params)
    if room.save
      user_id = params[:room][:user_id]
      redirect_to :action => "show", :id => "#{room.id}",:user_id =>"#{user_id}"
    end
  end

private

  def create_params
    params.require(:room).permit(:name, :room_image).merge(user_count: 0)
  end

  def set_room
    @user = User.find(params[:user_id])
  end

  def exec_room_count
    case action_name
    when "show" then
      @room.update(user_count: @room.user_count += 1)
    when "bacdk_room" then
      @room.update(user_count: @room.user_count -= 1)
    end
  end

end
