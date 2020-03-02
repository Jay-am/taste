Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :profiles do
    resources :reviews, only: [:index, :destroy]
    resources :bookmarks
  end

  resources :restaurants do
    collection do
      get 'filter', to: 'restaurants#filter'
    end
    resources :reviews, only: [:new, :create]
  end
end
