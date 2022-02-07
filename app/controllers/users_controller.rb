class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(username: '...', email: '...', password: '...')
    if @user.save
      redirect_to @posts
    else
      render :new
    end
  end
end
