Rails.application.routes.draw do
  resources :users
  resources :friendships
  resources :gifts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get '/contacts/:id' => 'users#contacts'
  get '/wishlist/:id' => 'users#wishlist'
  get 'contacts/contact_delete/:id' => 'users#contact_delete'

  root 'welcome#index'
  get '/users/:id' => 'users#show'
	get '/users' => 'users#index'
  get 'about' => 'users#about'

  get 'users/:id/gifts/:category' => 'gifts#index'
  get 'users/:id/gifts' => 'gifts#index'
end
