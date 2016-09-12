class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id=current_user.id
    @comment.post_id=@comment.post.id
    if @comment.save
      redirect_to user_path(current_user)
    else
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:body,:id)
  end
end
