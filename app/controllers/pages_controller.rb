class PagesController < ApplicationController
  def index
    if user_signed_in?
      @statuses = Status.all.order(created_at: :desc)
    end
  end
end
