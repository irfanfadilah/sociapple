class UsersController < ApplicationController
  def dashboard
  end

  def activities
    @activities = Activity.page(params[:page]).order(created_at: :desc)
  end
end
