class FixCommentsController < ApplicationController
  def new
    @comment = Comment.find(params[:comment_id])
    @fix_comment = @comment.fix_comments.new
    @fix_comment.body = @comment.body
  end
end
