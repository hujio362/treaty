Rails.application.routes.draw do
  root to: "homes#index"
  devise_for :users
  resources :posts, only: [:new, :create, :index, :show, :edit, :destroy, :update] 
  # do
    # resources :orders, only: [:index, :create, :show]
  # end
end
