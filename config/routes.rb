Rails.application.routes.draw do

  devise_for :users

  resources :admin, only: [:index]
  resources :locations, only: [:new, :create, :edit, :update, :show, :index]
  resources :partners, only: [:new, :create, :edit, :update, :show, :index]
  resources :projects, only: [:new, :create, :edit, :update, :show, :index]
  resources :campaigns, only: [:new, :create, :edit, :update, :index, :show]
  resources :donations, only: [:new, :create, :edit, :update, :show, :index]

  resources :charges, only: [:new, :create]

  get 'terms-of-service', to: 'home#tos', as: :tos
  get 'privacy-policy', to: 'home#tos', as: :privacy

  # get 'admin', to: 'admin#index'
  root 'home#index'
end
