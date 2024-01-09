Rails.application.routes.draw do
  devise_for :users
  resources :friends
  # get 'home/index' <- automatically created this route when we generated the page
  #root 'home#index' # <- manually created this to set home page to the route I wanted. default root page
  root 'friends#index'
  get 'home/about' 

  get "up" => "rails/health#show", as: :rails_health_check
end
