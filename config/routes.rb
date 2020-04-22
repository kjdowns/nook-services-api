Rails.application.routes.draw do
  resources :fish, only: [:update]
  resources :bugs, only: [:update]
  resources :users, only: [:show, :create]
  resources :islands, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
