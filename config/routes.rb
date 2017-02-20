Rails.application.routes.draw do
  resources :projects, only: [:show]

  resources :charges, only: [:new, :create]

  root 'home#index'
end
