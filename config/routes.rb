Rails.application.routes.draw do
  devise_for :users
  root to: "toppage#index"
  resources :users, only: [:edit, :update]
  resources :posts, only: [:index, :new, :create,:show]do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  
end

