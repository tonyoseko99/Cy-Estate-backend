Rails.application.routes.draw do
  resources :superusers
  resources :reviews
  resources :favorites
  resources :searches
  resources :users
  resources :houses, only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
