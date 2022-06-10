Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root "devise/sessions#new"
  end
  resources :contacts, only: [:new, :create]
  resources :tops, only: :index
end
