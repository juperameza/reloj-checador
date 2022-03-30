Rails.application.routes.draw do
  devise_for :admins
  resources :employee
  resources :branch
  root 'home#index'
  post "/", to:"home#create"
end
