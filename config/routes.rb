Rails.application.routes.draw do
  root "static_pages#home"
  post "languages/set_language", to: "languages#set_language"
  devise_for :users
  resources :products
  resources :booking_carts

  namespace :admin do
    root "statisticals#index"
    resources :statisticals
    resources :users
    resources :products
  end
end
