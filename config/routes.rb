Rails.application.routes.draw do
  root to: "homes#index"
  devise_for :users
  resources :posts do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end
  resources :circles, only: :index do
    resources :topics, only: [:index, :create, :show, :new, :edit] do
      resources :topiccomments
    end
  end
end
