# frozen_string_literal: true

Rails.application.routes.draw do
  resources :people
  resources :rols
  resources :countries
  resources :projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/employees', to: 'people#employees'
  get '/customers', to: 'people#customers'
end
