class UsersController < ApplicationController
def index
  @user = User.new
  @images = Image.all
end

def create
@user = User.create(nickname: params[:user][:nickname], image: params[:user][:image])
redirect_to action: 'show', id: "#{@user.id}"
# redirect_to controller: 'top', action: 'index'
end


def show
@user = User.find(params[:id])
@room = Room.new
   @rooms = Room.order('created_at DESC')
   @room_images = RoomImage.all
end

def create_params
end

end
