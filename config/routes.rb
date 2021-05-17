Rails.application.routes.draw do
  resources :tops, only: [:index]
  # devise_for :users
  # resources :guests
  resources :hosts
  root "hostels/search#show"
  # get 'hostels/:id' => 'hostels#new'
  devise_for :users, controllers: {
        registrations: 'users/registrations',
        # registrations: 'users/registrations',
        sessions: 'users/sessions'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  resources :users, only: %i[index show]

  # MARK: hostels routings
  namespace :hostels do
    get '/search/', to: 'search#show'
    # get '/search/', to: 'search#new'

    # resource :search
  end
  resources :hostels do
    collection do
      post :confirm
      # patch :confirm
    end
  end

  resources :message_rooms do
    resources :messages
  end
end
