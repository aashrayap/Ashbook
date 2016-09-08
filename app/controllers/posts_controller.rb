class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    @post.user_id=current_user.id
    if @post.save
      redirect_to user_path(current_user)
    else
    end
  end


  private

  def post_params
    params.require(:post).permit(:body,:id)
  end
end
