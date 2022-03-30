Rails.application.routes.draw do
  devise_for :admins
  resources :employees
  resources :branch
  root 'home#index'
  post "/", to:"home#create"
end
