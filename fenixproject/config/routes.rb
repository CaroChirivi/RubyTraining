Rails.application.routes.draw do
  root "home#index"
  resources :books
  resources :games
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/sayhello", to: "hello#index"
end
