class PagesController < ApplicationController
  def index
    if user_signed_in?
      @statuses = Status.page(params[:page]).order(created_at: :desc)
      @activities = Activity.last(5).reverse
    end
  end
end
