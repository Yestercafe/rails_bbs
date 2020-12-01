Rails.application.routes.draw do
  resources :posts
  resources :comments
  devise_for :users
  get 'home/index'
  get 'users', to: 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
