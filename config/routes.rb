Rails.application.routes.draw do
  resources :tasks
  resources :notes
  resources :users
  post '/login', to: 'users#auth'
  # get '/profile', to: 'users#profile'
end
