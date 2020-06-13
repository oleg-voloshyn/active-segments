Rails.application.routes.draw do
  resources :races
  root to: 'dashboard#index'
  resources :results, only: %i[index show]
  resources :users, only: %i[index show]
  resources :segments, only: %i[index show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
