class TopController < ApplicationController
  def index
   @room = Room.new
   @rooms = Room.order('created_at DESC')


   @user = User.last

  end


  def create
    # Room.create(name: params[:room][:name])
    # redirect_to controller: :rooms, action: :show
  end


end
