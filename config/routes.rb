Rails.application.routes.draw do
  resources :travels
  resources :passengers
  resources :vehicles
  root 'home#index'

  devise_for :users

  namespace :api, :defaults => {:format => :json} do

        # Vehicles
        get 'vehicles' => 'vehicles#index'
        post 'vehicle' => 'vehicles#create' 
        
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
