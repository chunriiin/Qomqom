Rails.application.routes.draw do
  get 'index'=> 'pages#index' 
  get 'community'=> 'pages#community'
end
