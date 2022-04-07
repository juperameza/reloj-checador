Rails.application.routes.draw do
  resources :branches do
  member do
    put :update_status
  end
end
  resources :street_cps
  devise_for :admins
  resources :employees do
    member do
      put :update_status
    end

    collection do
      get :report
    end
  end
  root 'home#index'
  post "/", to:"home#create"
end
