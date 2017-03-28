Rails.application.routes.draw do
  devise_for :users
  resources :projects, only: [:show]

  resources :charges

  get 'terms-of-service', to: 'home#tos', as: :tos
  get 'privacy-policy', to: 'home#tos', as: :privacy
  root 'home#index'
end
