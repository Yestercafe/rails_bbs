module LikesHelper

  def liked?(user, post)
    !Like.find_by(user_id: user, post_id: post).nil?
  end

  def like_number(post)
    Like.where(post_id: post).size.to_s
  end

end
