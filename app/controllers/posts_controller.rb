class PostsController < ApplicationController
  def create
    @community = Community.find(params[:community_id])
    @post = @community.posts.new(post_params)
    @post.user = current_user
    @thumb = LinkThumbnailer.generate(@post.link)
    @post.image = @thumb.images.first.src.to_s
    @post.description = @thumb.description
    @post.url_title = @thumb.title
    @post.save
    redirect_to @community
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  private

  def post_params
    params.require(:post).permit(:body, :title, :link)
  end
end


