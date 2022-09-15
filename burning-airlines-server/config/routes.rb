Rails.application.routes.draw do
 
  
  root to: 'dashboard#app'
  resources :airplanes, :flights, :reservations, :users

  get '/details' => 'reservation#details'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/find' => 'user#find'


end
