Rails.application.routes.draw do
  root to: "pages#index"
  devise_for :users
  resources :users, only: [:index, :show]
  get 'pages/show'
  resources :communities
  get 'community'=> 'pages#community'
end
