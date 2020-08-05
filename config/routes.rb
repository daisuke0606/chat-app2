Rails.application.routes.draw do
  get 'rooms/new'
  devise_for :users
  get 'messages/index'
  root "rooms#index"
  resources :users, only: [:edit, :update, :destroy]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
