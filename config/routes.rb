Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'
  resources :users, only: [:show, :index, :create, :edit, :update]
  resources :books, only: [:index, :create, :destroy, :edit, :show, :update]
end
