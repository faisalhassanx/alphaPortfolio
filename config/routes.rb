Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', 
                                             sign_up: 'register' }
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
