class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: '...', body: '...')

    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

end
