Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions
  
  get 'signup', to: 'users#new', as: 'signup'
  post 'register', to: 'users#create', as: 'register'
  get 'signin', to: 'sessions#new', as: 'signin'
  post 'login', to: 'sessions#create', as: 'login'
end
