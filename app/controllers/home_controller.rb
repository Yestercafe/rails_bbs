class HomeController < ApplicationController
  def index
    @posts = Post.page params[:page]
  end

  def manager
    @users = User.all
    @posts = Post.all
    @comments = Comment.all

  end
end
