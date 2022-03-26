Rails.application.routes.draw do
  devise_for :admins
  resources :employee
  root 'home#index'
  post "/", to:"home#create"
end
