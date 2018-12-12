Rails.application.routes.draw do
  get 'post/create'
  root to: "pages#index"
  devise_for :users
  resources :users, only: [:index, :show]
  get 'pages/show'
  resources :communities do
    post 'join'
    resources :posts
  end
  get 'community'=> 'pages#community'
end
