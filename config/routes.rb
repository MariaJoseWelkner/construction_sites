Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :construction_materials
  resources :construction_sites
  resources :materials
  resources :brands
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end
