Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users
  post "languages/set_language", to: "languages#set_language"
  resources :products
  resources :booking_carts

  namespace :admin do
    root "users#index"
    resources :users
  end
end
