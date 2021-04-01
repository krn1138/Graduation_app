Rails.application.routes.draw do
  get 'hosts/new'
  devise_for :users
  resources :guests
  resources :hosts
  root "hostels/search#show"

  # MARK: hostels routings 
  namespace :hostels do
    get '/search/', to: 'search#show'
  end
  resources :hostels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
