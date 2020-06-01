Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'movies#index'
  resources :aws_texts, only: [:index, :show]
  resources :questions
  resources :live_codings, only: [:index]
end
