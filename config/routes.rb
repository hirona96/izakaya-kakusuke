Rails.application.routes.draw do
  root to: "tops#index"

  resources :tops
  resources :forms, only: [:index, :create]
end
