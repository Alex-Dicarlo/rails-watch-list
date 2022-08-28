Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists do
    resources :bookmarks
  end
  resources :bookmarks, only: [:destroy]
end
