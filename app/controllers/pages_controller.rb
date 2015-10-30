class PagesController < ApplicationController
  def index
    if user_signed_in?
      @statuses = Status.order(created_at: :desc)
      @activities = PublicActivity::Activity.last(5).reverse
    end
  end
end
