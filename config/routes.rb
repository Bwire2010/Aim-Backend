Rails.application.routes.draw do
  resources :users
  resources :requests
  resources :employees
  resources :categories
  resources :assets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
