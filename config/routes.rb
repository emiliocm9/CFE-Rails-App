Rails.application.routes.draw do
  resources :sessions
  get 'login', to: 'sessions#new', as: 'login'
  get 'home', to: 'sessions#home', as: 'home'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
