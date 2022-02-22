Rails.application.routes.draw do
  devise_for :users
  root to: 'leagues#index'

  resources :users, only: [:show, :new] do
    resources :leagues, only: [:new]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
