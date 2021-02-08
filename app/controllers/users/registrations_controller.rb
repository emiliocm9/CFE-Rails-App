# ozen_string_literal: tru
class Users::RegistrationsController < Devise::RegistrationsController
  #before_action :configure_sign_up_params, only: [:create]
  #before_action :configure_account_update_params, only: [:update]
  before_action :authenticate_user!, except: [:edit, :update]
  skip_before_filter :authenticate_user!
  GET /resource/sign_up
  def new
    super
  en
  POST /resource
  def create
    super
  en
  GET /resource/edit
  def edit
    super
    @user = User.find(params[:id])
  en
  PUT /resource
  def update
    super
  en
  DELETE /resource
  def destroy
    super
  en
  GET /resource/cancel
  Forces the session data which is usually expired after sign
  in to be expired now. This is useful if the user wants to
  cancel oauth signing in/up in the middle of the process,
  removing all OAuth session data.
  def cancel
    super
  en
  protecte
  If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  en
  If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  en
  The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  en
  The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end
end
