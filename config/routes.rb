Rails.application.routes.draw do
  root to: 'cars#index'
  resources :cars, only: :show do
    resources :reviews, only: :create
    # not sure if this needs to be nested .. probably will only be a button .. or should be
    resources :favorites, only: :create
  end
  resources :favorites, only: [:index, :destroy]
end
