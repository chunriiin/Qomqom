Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  root to: "pages#index"
  get 'pages/show'
  resources :communities
  get 'community'=> 'pages#community'
end
