Rails.application.routes.draw do
  resources :home, :drinks
  
  root "home#index"
  
  get '/search' => 'drinks#index'
  post '/search' => 'drinks#index'
  
  get '/details' => 'drinks#show'
  
  
end
