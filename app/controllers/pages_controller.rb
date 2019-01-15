class PagesController < ApplicationController
  def index
    @posts = Post.all
    @comment = Comment.all
    
  end

  def show
  end

  def community; end
end
