Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :observations
  resources :meetings

  root 'projects#index'
end
