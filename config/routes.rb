Rails.application.routes.draw do
  get 'chats/index'
  get 'chats/show'
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]do
   resource :favorites, only: [:create,:destroy]
  end
  resources :users, only: [:show,:edit,:update]
end
