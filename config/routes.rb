Rails.application.routes.draw do
  devise_for :employees
  root to: "tops#index"

  resources :tops
  resources :forms, only: [:index, :create]
  resources :comments, only: [:index, :new, :create]
  resources :employees, only: [:index]
  resources :retirements, only: [:new, :create]
end
