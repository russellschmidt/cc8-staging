Rails.application.routes.draw do

  devise_for :users
  resources :projects, only: [:new, :create, :edit, :update, :show]
  resources :locations, except: [:destroy]
  resources :campaigns
  resources :partners

  resources :charges

  get 'terms-of-service', to: 'home#tos', as: :tos
  get 'privacy-policy', to: 'home#tos', as: :privacy

  get 'admin', to: 'admin#index'
  root 'home#index'
end
