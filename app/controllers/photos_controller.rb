class PhotosController < ApplicationController
  def new
    @post= Post.new do |post|
    post.is_photo = !!params[:photo]
    end
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to user_path(current_user)
    end
  end

  def show
    @user=current_user
    @posts=@user.posts
  end



  private
  def post_params
    params.require(:post).permit(:body,:photo, :user_id, :id, :comments_attributes => [:body, :user_id, :post_id])
  end 
end
