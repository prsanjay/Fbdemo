Rails.application.routes.draw do

  resources :posts
  resources :comments, only: [:create, :destroy]
  root to: 'home#index'

  devise_for :users

  resources :users do
    member do
      get :friends
      get :followers
      get :deactivate
      get :mentionable
    end
  end

  match :like, to: 'likes#create', as: :like, via: :post
  match :unlike, to: 'likes#destroy', as: :unlike, via: :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
