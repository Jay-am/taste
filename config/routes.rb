Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

  resources :profiles do
    resources :reviews, only: [:index, :destroy]
    resources :bookmarks
  end

  get '/restaurants/map', to: 'restaurants#map'
  get '/restaurants/filter', to: 'restaurants#filter'
  post '/restaurants/filter_result', to: 'restaurants#filter_result'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end


 # Is that correct?

  resources :restaurants do
    resources :bookmarks, only: [:show, :new, :create, :destroy]
  end

  resources :reviews do
    resources :bookmarks, only: [:show, :new, :create, :destroy]
  end

end
