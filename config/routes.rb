Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_scope :user do
    root 'devise/sessions#new'
  end
  resources :contacts, only: %i[new create]
  resources :tops, only: :index
  resources :informations, only: :index
  resources :tweets do
    resource :favorites, only: %i[create destroy]
    resource :comments,  only: [:create]
  end
end
