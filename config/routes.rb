Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :observations

  root 'projects#index'
end
