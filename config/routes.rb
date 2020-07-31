Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      get 'users', to: "users#index"
      get 'notes', to: "notes#index"
      get 'users/:id', to: "users#show"
      get 'notes/:id', to: "notes#show"
      delete 'notes/:id', to: "notes#destroy"
      post 'notes/new', to: "notes#create"
      patch 'notes/:id', to: "notes#update"
  
      post '/auth', to: "auth#create"
      get '/current_user', to: "auth#show"
      resources :registrations, only: [:create]
      root to: "static#home"
      delete :logout, to: "auth#logout"
    end
  end 
end
