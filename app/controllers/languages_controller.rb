class LanguagesController < ApplicationController
  def set_language
    session[:language] = params[:language]
    redirect_back fallback_location: root_path
  end
end
