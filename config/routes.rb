Rails.application.routes.draw do
  devise_for :users
  root to: 'leagues#index'

  resources :leagues, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :races, only: [:index, :new, :create, :destroy]
  resources :drivers, only: [:index, :new, :create]
end
