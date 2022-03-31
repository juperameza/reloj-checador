Rails.application.routes.draw do
  resources :branches
  devise_for :admins
  resources :employees do
    member do
      put :update_status
    end
  end
  resources :branch
  root 'home#index'
  post "/", to:"home#create"
end
