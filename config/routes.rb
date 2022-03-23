Rails.application.routes.draw do
  devise_for :admins
  get '/admin', to: 'admin#login'
  root 'home#index'
  post "/", to:"home#create"
end
