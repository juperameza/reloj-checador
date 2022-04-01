Rails.application.routes.draw do
  resources :branches
  resources :street_cps
  devise_for :admins
  resources :employees do
    member do
      put :update_status
    end
  end
  root 'home#index'
  post "/", to:"home#create"
end
