# app/controllers/concerns/secured.rb

module Secured
  extend ActiveSupport::Concern

  included do
    before_action :require_login, :set_vars
  end

  def require_login
  redirect_to "/", notice: "Please log in or sign up" unless current_user
  end

  def set_vars
    @user = current_user
  end
end
