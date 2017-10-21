class UsersController < ApplicationController
  def index
    @user = User.new
    @images = Image.all
  end

  def create
    user = User.create(nickname: params[:user][:nickname], image: params[:user][:image])
    redirect_to action: 'show', id: "#{user.id}"
  end

  def show
    @user = User.find(params[:id])
    @rooms = Room.order('created_at DESC')
  end

  def create_params
  end

end
