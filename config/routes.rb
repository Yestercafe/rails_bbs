Rails.application.routes.draw do

  resources :posts, only: [:create, :new, :show, :destroy]
  resources :comments, only: [:create, :new, :destroy]
  devise_for :users
  # get 'manager', to: 'home#manager'
  get 'users/:id', to: 'users#detail', as: :user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get 'likes/lk', as: :like
  delete 'likes/unlk', as: :unlike
end
