Rails.application.routes.draw do
  # resources :locations
  # resources :notifications
  resources :users do
    resources :locations
    resources :notifications
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
