Rails.application.routes.draw do
  root "static_pages#home"
  post "languages/set_language", to: "languages#set_language"
  devise_for :users
  resources :products do
    resources :comments
  end
  resources :booking_carts
  resources :users
  get "update_info_user", to: "booking_carts#update_info_user"
  post "order", to: "booking_carts#order"
  resources :orders, only: [:index, :new, :create, :update] do
    resources :order_details, only: [:index]
  end
  resources :order_details, only: [:update]
  resources :statisticals, only: [:create]
  
  namespace :admin do
    root "statisticals#index"
    resources :statisticals, only: [:index]
    resources :users
    resources :products
    resources :orders, only: [:index, :update] do
      resources :order_details, only: [:index]
    end
  end
end
