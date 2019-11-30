Rails.application.routes.draw do
  devise_for :users
  root to: "toppage#index"
  resources :users, only: [:edit, :update]
end
