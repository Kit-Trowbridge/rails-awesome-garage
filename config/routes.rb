Rails.application.routes.draw do
  root to: 'cars#index'
  resources :cars, only: :show do
    resources :reviews, only: :create
    resources :favorites, only: :create
  end
  resources :favorites, only: [:index, :destroy]
end
