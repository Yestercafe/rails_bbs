class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def detail
    @user = User.find_by(id: params[:id])
    @posts = @user.posts
  end

end
