Rails.application.routes.draw do
  resources :currencies
  resources :tastings
  resources :serving_formats
  resources :beers
  resources :beer_styles
  resources :breweries
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  root 'tastings#index'
end
