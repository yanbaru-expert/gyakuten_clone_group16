Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'movies#index'
  resources :aws_texts, only: [:index, :show]
  resources :live_codings, only: [:index]
  resources :php_lectures, only: [:index]
  resources :marketings, only: [:index]
  resources :questions, only: [:index, :create, :show] do
    resource :solutions, only: :create
  end
end
