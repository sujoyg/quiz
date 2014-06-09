class UsersController < ApplicationController
  before_filter :authorize, only: [:home]

  def home
  end

  def on_login
    redirect_to home_path
  end

  def on_signup
    redirect_to home_path
  end
end
