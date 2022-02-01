Rails.application.routes.draw do
  root to: "tops#index"

  resources :tops
  resources :forms, only: [:index, :create]
  resources :comments, only: [:index, :new, :create]
end
