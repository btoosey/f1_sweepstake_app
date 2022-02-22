Rails.application.routes.draw do
  devise_for :users
  root to: 'leagues#index'

  resources :leagues, only: [:index, :new, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
