Rails.application.routes.draw do
  devise_for :ussers
  resources :poosts
  resources :comeents, only: [:create]

  post '/reactions', to: 'reactions#user_reaction', as: 'user_reaction'
  
 
   #Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "poosts#index"
  
end
