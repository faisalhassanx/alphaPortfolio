Rails.application.routes.draw do

  resources :portfolios
  
  resources :blogs
  
  get '/about' => 'pages#about'

  get '/contact' => 'pages#contact'
  
  root 'pages#home'
end
