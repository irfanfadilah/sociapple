module ApplicationHelper
  def like_label(item)
    current_user.liked?(item) ? "Unlike" : "Like"
  end

  def is_active_tab?(path)
    "active" if current_page? path
  end
end
