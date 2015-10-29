class PagesController < ApplicationController
  def index
    if user_signed_in?
      @status = current_user.statuses.new
    end
  end
end
