Rails.application.routes.draw do
  get 'signup', to: 'authors#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :authors
  resources :sessions

  get 'sessions/new'
  root 'posts#index'

  resources :posts do
    resources :comments
  end

  get 'search', to: 'posts#search'
end
