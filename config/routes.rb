Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  devise_scope :user do
    root 'devise/sessions#new'
  end
  resources :locals
  resources :contacts, only: %i[new create]
  resources :tops, only: :index
  resources :informations, only: :index
  resources :localtops, only: :index
  resources :tweets do
    resource :favorites, only: %i[create destroy]
    resource :comments,  only: [:create]
  end
end
