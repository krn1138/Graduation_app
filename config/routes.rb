Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show]
  resources :guests
  resources :hosts
  root "hostels/search#show"

#   devise_for :users, controllers: {
#         registrations: 'users/registrations',
#         sessions: 'users/sessions'
# }

  # MARK: hostels routings 
  namespace :hostels do
    get '/search/', to: 'search#show'
  end
  resources :hostels
end
