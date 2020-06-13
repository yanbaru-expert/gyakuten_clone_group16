Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'movies#index'
  resources :aws_texts, only: [:index, :show]
  resources :live_codings, only: [:index]
  resources :php_lectures, only: [:index]
  resources :marketings, only: [:index]
  resources :talks, only: [:index]
  resources :writings, only: [:index]
  resources :lines, only: [:index, :show]
  resources :movie_edit_courses, only: [:index]
  resources :texts, only: [:index, :show]
  resources :questions, only: [:index, :create, :show] do
    resource :solutions, only: :create
  end
end
