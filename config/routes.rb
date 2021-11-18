Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :users do
  #   resources :bookings
  # end
  get "/brands", to: "cars#brands", as: "brands"
  resources :cars do
    resources :bookings, only: [:new, :create]
  end
  get '/dashboard', to: 'dashboard#show', as: :dashboard
  resources :bookings, only: [:edit, :update]
end
