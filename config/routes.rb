Rails.application.routes.draw do
  resources :users
  resources :friendships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get '/contacts/:id' => 'users#contacts'

  root 'welcome#index'
  get '/users/:id' => 'users#show'
	get '/users' => 'user#index'
end
