Rails.application.routes.draw do
  resources :fish
  resources :bugs
  resources :users
  resources :islands
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
