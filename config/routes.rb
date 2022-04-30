Rails.application.routes.draw do

  require "sidekiq/web"
  require 'sidekiq/cron/web'
  mount Sidekiq::Web => "/sidekiq"

  devise_for :users
  root to: 'leagues#index'

  resources :leagues, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :user_leagues, only: [:create]
  end

  resources :user_leagues do
    resources :choices, only: [:new, :create]
  end

  resources :choices, only: [:show, :edit, :update]
  resources :races, only: [:index, :new, :create, :destroy]
  resources :drivers, only: [:index, :new, :create, :destroy]
  resources :team_drivers, only: [:index, :new, :create, :destroy]
  resources :race_drivers, only: [:index, :new, :create, :destroy]

  resources :results, only: [:index, :new, :create, :edit, :update, :destroy]
end
