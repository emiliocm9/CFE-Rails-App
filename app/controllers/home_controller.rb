class HomeController < ApplicationController
  def index
    @current = current_user
    if current_user
      sign_out @current
    end
    @users = User.all
  end

  def signedin
    @user = current_user
  end
end
