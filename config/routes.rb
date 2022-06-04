Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:show, :index, :create, :edit]
  resources :books, only: [:index, :create, :destroy, :edit, :show, :update]
end
