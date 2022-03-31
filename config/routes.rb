Rails.application.routes.draw do
  devise_for :admins
  resources :employees
  resources :branch
  patch "employees/:id",to: "employees#update_status", as:'button'
  put "employees/update_status/:id",to: "employees#update_status2"
  root 'home#index'
  post "/", to:"home#create"
end
