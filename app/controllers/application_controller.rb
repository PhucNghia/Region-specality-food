class ApplicationController < ActionController::Base
  include LanguagesHelper
  include DeviseHelper
  include ProductsHelper

  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :init_gon
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    added_attrs = [:email, :name, :username, :birthday, :gender, :address, :phone, :role_id, :password,
      :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def set_locale
    I18n.locale = session[:language] || I18n.default_locale
  end

  def init_gon
    gon.comment_ids = ""
  end
end
