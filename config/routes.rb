Rails.application.routes.draw do

  devise_for :users
  resources :portfolios, except: [:show]
  get 'portfolio/:id' => 'portfolios#show', as: 'show_portfolio'
  
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  get '/about' => 'pages#about'

  get '/contact' => 'pages#contact'
  
  root 'pages#home'
  
  get '*missing' => 'pages#missing'
end
