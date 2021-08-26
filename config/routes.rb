Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :auctions do
    resources :bids, only: [:new, :create, :index]
    patch 'close', to: 'auctions#close'
    collection do
      get :active
      get :off
    end
  end
  resources :bids, only: [:show, :destroy]
end
