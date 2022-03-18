Rails.application.routes.draw do
  get '/admin', to: 'admin#login'
  root 'home#index'
  post "/", to:"home#create"
end
