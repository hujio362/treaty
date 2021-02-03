Rails.application.routes.draw do
  root to: "homes#index"
  devise_for :users
  resources :posts do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end
  # do
    # resources :orders, only: [:index, :create, :show]
  # end
end
