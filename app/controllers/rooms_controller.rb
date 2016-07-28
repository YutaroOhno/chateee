class RoomsController < ApplicationController
  def index
    @user = User.last
   @room = Room.new
   @rooms = Room.order('created_at DESC')
  end

  def new
    @room = Room.new
    @room_images = RoomImage.all
    @user = User.find(params[:format])
  end

  def show
    binding.pry
    @room = Room.find(params[:id])
    @user = User.find(params[:user_id])
    @room.user_count += 1
    @room.save
    @user.room_id = @room.id
    @user.save
  end

  def back_room
    room = Room.find(params[:room_id])
    @user = User.find(params[:user_id])
    room.user_count -= 1
    @user.room_id = 0
    room.save
    @user.save
    @rooms = Room.all
    render :template => "users/show"
  end

  def create
    @room = Room.new(create_params)
    @room.user_count = 0
    @room.save
    user_id = params[:room][:user_id]
    redirect_to :action => "show", :id => "#{@room.id}",:user_id =>"#{user_id}"
  end

private

  def create_params
    params.require(:room).permit(:name)
  end
end
