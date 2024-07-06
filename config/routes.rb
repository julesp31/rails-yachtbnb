Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # NESTED ROUTES below
  # GET /yachts/:yacht_id/bookings/new -> bookings#new
  # POST /yachts/:yacht_id/bookings -> bookings#create
  resources :yachts do
    resources :bookings, only: [:create, :new]
  end

  # NESTED ROUTES below
  # GET /bookings/:booking_id/reviews/new -> reviews#new
  # POST /bookings/:booking_id/reviews -> reviews#create
  resources :bookings, only: [:index, :show] do
    resources :reviews, only: [:create, :new]
  end

  resources :reviews, only: [:index, :show]
  resources :users, only: [:index, :show]

  # what if i want the route to be yacht#home?

  resources :bforms, only: [:new, :create]

end
