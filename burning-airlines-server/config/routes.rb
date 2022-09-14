Rails.application.routes.draw do
 
  
  root to: 'dashboard#app'
  resources :airplanes, :flights, :reservations

  get '/details' => 'reservation#details'

end
