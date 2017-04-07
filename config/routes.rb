Rails.application.routes.draw do

  devise_for :users

  resources :admin, only: [:index]
  resources :locations
  resources :partners
  resources :projects
  resources :campaigns
  resources :donations, only: [:new, :create, :edit, :update, :show, :index]

  resources :charges, only: [:new, :create]

  get 'terms-of-service', to: 'home#tos', as: :tos
  get 'privacy-policy', to: 'home#tos', as: :privacy

  # get 'admin', to: 'admin#index'
  root 'home#index'
end
