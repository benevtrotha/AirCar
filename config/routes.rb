Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :users do
  #   resources :bookings
  # end
  resources :cars do
    resources :bookings, only: [:new, :create]
  end
  get '/dashboard', to: 'dashboard#show', as: :dashboard
end
