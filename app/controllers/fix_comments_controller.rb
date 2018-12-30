class FixCommentsController < ApplicationController
  def create
    @comment = Comment.find(params[:comment_id])
    @fix_comment = @comment.fix_comments.new(fix_comment_params)
    @fix_comment.user = current_user
    @fix_comment.save
    redirect_to @comment.post
  end

  def new
    @comment = Comment.find(params[:comment_id])
    @fix_comment = @comment.fix_comments.new
    @fix_comment.body = @comment.body
  end

  private

  def fix_comment_params
    params.require(:fix_comment).permit(:body)
  end
end
