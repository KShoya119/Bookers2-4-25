Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:show, :index, :create]
  resources :books, only: [:index, :create, :edit, :show]
end
