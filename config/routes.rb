Rails.application.routes.draw do
  get 'rooms/new'
  devise_for :users
  get 'messages/index'
  root "messages#index"
  resources :users, only: [:edit, :update, :destroy]
  resources :rooms, only: [:new, :create]
end
