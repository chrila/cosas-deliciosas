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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
