Rails.application.routes.draw do
  resources :projects, only: [:show]

  resources :charges

  root 'home#index'
end
