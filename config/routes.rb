Rails.application.routes.draw do
  
  resources :locations
  resources :courses
  resources :roles
  resources :apps
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'
  get 'home/index'
  get 'home/about'
  get 'home/reviews'
  get 'home/contact'
  get 'home/msg'
  get 'roles/loc'
root 'home#index'
resources :users
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome', to: 'sessions#welcome', as: 'welcome'



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
