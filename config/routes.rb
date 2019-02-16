Rails.application.routes.draw do
  root "static_pages#home"
  get "home", to: "static_pages#home"
  devise_for :users
  post "languages/set_language", to: "languages#set_language"
end
