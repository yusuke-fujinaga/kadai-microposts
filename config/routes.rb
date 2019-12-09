Rails.application.routes.draw do
  get 'microposts/create'
  get 'microposts/destroy'
#   get 'sessions/new'
#   get 'sessions/create'
#   get 'sessions/destroy'
#   get 'users/index'
#   get 'users/show'
#   get 'users/new'
#   get 'users/create'
#   get 'toppages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  # Micropost
  resources :microposts, only: [:create, :destroy]
end
