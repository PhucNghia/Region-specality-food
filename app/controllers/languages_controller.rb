class LanguagesController < ApplicationController
  def set_language
    session[:language] = params[:language]
    redirect_back fallback_location: home_path
  end
end
