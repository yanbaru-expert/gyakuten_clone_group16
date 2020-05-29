Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'movies#index'
  resources :aws_texts
  resources :questions, only: [:index, :create, :show] do
    resource :solutions, only: :create
  end
end
