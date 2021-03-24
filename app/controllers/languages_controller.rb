class LanguagesController < ApplicationController
  def set_language
    session[:language] = params[:language]
    # respond_to :js
  end
end
