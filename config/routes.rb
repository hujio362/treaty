Rails.application.routes.draw do

  root to: "homes#index"
  devise_for :users
 
  resources :posts, shallow: true do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
    resources :comments, only: [:new, :create]
  end
 
  resources :circles, only: [:index, :new, :create, :show]

  resources :topics, shallow: true do
    resources :topiccomments, only: [:new, :create]
  end

end
