Rails.application.routes.draw do
  get '/admin', to: 'admin#index'
  root 'home#index'
  post "/", to:"home#create"
end
