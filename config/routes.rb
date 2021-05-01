Rails.application.routes.draw do
  resources :notes
  resources :users
  post '/login', to: 'users#auth'
  # post '/register', to: 'user#create'
  # get '/profile', to: 'users#profile'
end
