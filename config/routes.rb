Rails.application.routes.draw do
  
  get 'users', to: "users#index"
  get 'notes', to: "notes#index"
  get 'users/:id', to: "users#show"
  get 'notes/:id', to: "notes#show"
  get :logged_in, to: "sessions#logged_in"
  delete 'notes/:id', to: "notes#destroy"
  post 'notes/new', to: "notes#create"
  patch 'notes/:id', to: "notes#update"
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  root to: "static#home"
  delete :logout, to: "sessions#logout"
end
