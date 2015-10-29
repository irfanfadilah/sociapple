module ApplicationHelper
  def like_label(status)
    current_user.liked?(status) ? "Unlike" : "Like"
  end

  def is_active_tab?(path)
    "active" if current_page? path
  end
end
