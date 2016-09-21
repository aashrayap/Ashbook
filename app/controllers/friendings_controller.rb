class FriendingsController < ApplicationController
  def index
    @users=User.all
    @user=current_user
  end

  def new
    @friending = Friending.new
    @friend = User.find(params[:id])
    @friending.friender_id = current_user.id
    @friending.friend_id = @friend.id
    @friending.save
    redirect_to friendings_path
  end
end
