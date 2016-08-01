class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_master_profile

  def set_master_profile
    @user = User.find_by username: "snm"
    @user_profile = @user.profiles.try(:last)
  end
end
