Rails.application.routes.draw do
  # devise_for :users
  # resources :guests
  # resources :hosts
  root "hostels/search#show"
  # get 'hostels/:id' => 'hostels#new'
  devise_for :users, controllers: {
        registrations: 'users/registrations',
        # registrations: 'users/registrations',
        sessions: 'users/sessions'
  }

  resources :users, only: %i[show]

  # MARK: hostels routings 
  namespace :hostels do
    get '/search/', to: 'search#show'
    # resource :search
  end
  resources :hostels
end
