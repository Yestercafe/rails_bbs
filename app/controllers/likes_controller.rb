class LikesController < ApplicationController
  def lk
    like = Like.new(user_id: current_user.id, post_id: params[:post_id])
    like.save
    @post = Post.find_by(id: params[:post_id])
    respond_to do |format|
      format.html { redirect_to @post }
      format.json { head :no_content }
    end
  end

  def unlk
    Like.find_by(user_id: current_user.id, post_id: params[:post_id]).destroy
    @post = Post.find_by(id: params[:post_id])
    respond_to do |format|
      format.html { redirect_to @post }
      format.json { head :no_content }
    end
  end
end
