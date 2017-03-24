class HomeController < ApplicationController
	before_action :authenticate_user!,:set_user

	def index
	  @post = Post.new
	  @friends = @user.all_following.unshift(@user)
	  #@activities = PublicActivity::Activity.where(owner_id: @friends).order(created_at: :desc).paginate(page: params[:page], per_page: 10)
	end

  private
  def set_user
    @user = current_user
  end
end
