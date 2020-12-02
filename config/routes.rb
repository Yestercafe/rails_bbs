Rails.application.routes.draw do

  resources :posts
  resources :comments
  devise_for :users
  get 'manager', to: 'home#manager'
  get 'users/:id', to: 'users#detail', as: :user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
