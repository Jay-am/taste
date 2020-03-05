Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :profiles do
    resources :reviews, only: [:index, :destroy]
    resources :bookmarks
  end

  get '/restaurants/filter', to: 'restaurants#filter'
  post '/restaurants/filter_result', to: 'restaurants#filter_result'

  resources :restaurants do
    resources :reviews, only: [:new, :create, :edit, :update]
  end
end
