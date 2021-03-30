Rails.application.routes.draw do
  root "hostels#index"

  # MARK: hostels routings 
  resources :hostels
  namespace :hostels do
    get '/search/', to: 'search#show'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
