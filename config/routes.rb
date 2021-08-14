Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #post "/users", to: "users#create"

  get "/users/:id/bookings", to: "users#bookings"

  get "/users/:id/booked_cars", to: "users#booked_cars"

  get "/cars/list_cars", to: "cars#list_cars"

  get "/cars/:id/bookings", to: "cars#bookings"

  resources :users 

  resources :bookings
     
  resources :cars 
    
end







