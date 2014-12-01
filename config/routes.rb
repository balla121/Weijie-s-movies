Rails.application.routes.draw do
  

  devise_for :users
  
  resources :movies do
  	collection do 
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index]
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'movies#index'

  
end
