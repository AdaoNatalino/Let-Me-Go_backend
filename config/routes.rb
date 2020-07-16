Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:create]
  post '/login', to: 'auth#login'
  get '/profile', to: 'users#profile'
  get '/validate', to: 'auth#validate'
end
