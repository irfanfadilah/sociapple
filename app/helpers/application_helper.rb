module ApplicationHelper
  def like_label(status)
    current_user.liked?(status) ? "Unlike" : "Like"
  end
end
