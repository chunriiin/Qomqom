class PostsController < ApplicationController
  def create
    @community = Community.find(params[:community_id])
    @post = @community.posts.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to @community
  end

  private

  def post_params
    params.require(:post).permit(:body, :username)
  end
end
