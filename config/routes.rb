Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :update, :destroy]
  resources :items, only: [:create, :destroy]
  get '/items/:id', to: 'items#edit'
  patch 'items/:id', to: 'items#update'
  
  get "myItems/:id", to: "items#myItems"
  
  get '/trades/:id', to: 'trades#myTrades'
  patch '/trades/:id', to: 'trades#reject'

  patch '/approve/:id', to: 'trades#approve_request'

  resources :trades, only: [:create]


  get '/categories', to: 'categories#index'
  get '/categories/:category_name', to: 'items#category'

  post '/login', to: 'auth#login'
  get '/validate', to: 'auth#validate'
end
