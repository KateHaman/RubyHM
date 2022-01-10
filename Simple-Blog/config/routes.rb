Rails.application.routes.draw do
  root 'posts#index'

  resources :posts
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
