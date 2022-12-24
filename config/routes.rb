Rails.application.routes.draw do
  resources :admins
  resources :reviews
  resources :favorites
  resources :searches
  resources :users
  resources :houses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
