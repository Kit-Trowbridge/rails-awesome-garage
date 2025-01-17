Rails.application.routes.draw do
  root to: 'pages#index'
  resources :cars, only: [:index, :show] do
    resources :reviews, only: :create
    # not sure if this needs to be nested .. probably will only be a button .. or should be
    resources :favorites, only: :create
  end
  resources :favorites, only: [:index, :destroy]
end
