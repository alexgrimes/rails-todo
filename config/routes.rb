Rails.application.routes.draw do
  
  get 'users/:id/notes', to: "user#notes"
  get 'notes/:id', to: "notes#show"
  delete 'notes/:id', to: "notes#destroy"
  post 'notes/new', to: "notes#create"
  patch 'notes/:id', to: "notes#update"
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
end
