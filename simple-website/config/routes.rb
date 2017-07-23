Rails.application.routes.draw do
  # resources :items
  resources :items#, :path => '/items', :only => [:destroy, :new]
  get '/home', to: 'users#index'
  # delete '/items/:id', to: 'items#delete'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post 'comment', to: 'items#comment'
  resources :users
end
