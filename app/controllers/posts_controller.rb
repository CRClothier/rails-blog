class PostsController < ApplicationController
  def index
    index = params[:user_id]
    @user = User.find(index)
    @posts = Post.where(user_id: @user.id)
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end
end
