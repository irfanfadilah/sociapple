class UsersController < ApplicationController
  def dashboard
  end

  def activities
    @activities = PublicActivity::Activity.order(created_at: :desc)
  end
end
