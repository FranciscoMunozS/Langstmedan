Rails.application.routes.draw do
  resources :projects
  resources :observations

  root 'projects#index'
end
