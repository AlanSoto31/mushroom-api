Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :mushrooms, only: [:index, :create]
  resources :favorites, only: [:index, :create]
  post "login", to: "authentications#login"
end
