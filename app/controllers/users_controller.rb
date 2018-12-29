class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @post = Post.find(params[:id])
    @community = Community.first
    @comment = Comment.new
  end


end




