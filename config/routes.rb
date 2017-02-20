Rails.application.routes.draw do
  devise_for :users
  resources :projects, only: [:show]

  resources :charges

  root 'home#index'
end
