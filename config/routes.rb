Rails.application.routes.draw do

  resources :projects
  resources :observations
  resources :meetings
  resources :users

  devise_for :users, :path_prefix => 'profile', controllers: { registrations: 'users/registrations' }

  root 'projects#index'
end
