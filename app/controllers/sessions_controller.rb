class SessionsController < ApplicationController
  def new; end

  def home; end

  def create
    @user = User.find_by(username: params[:username])
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: 'Inicio de sesión correcto'
    else
      redirect_to '/login', notice: 'Claves incorrectas'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path, notice: 'La sesión se ha cerrado'
  end
end
