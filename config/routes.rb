Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #post "/users", to: "users#create"

  resources :users

  resources :bookings

  resources :cars do

    get "/search", to: "cars#search"
    
  end






end

