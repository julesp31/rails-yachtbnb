Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  # NESTED ROUTES below
  # GET /yachts/:yacht_id/bookings/new -> bookings#new
  # POST /yachts/:yacht_id/bookings -> bookings#create
  resources :yachts do
    resources :bookings, only: [:create]
  end

  # NESTED ROUTES below
  # GET /bookings/:booking_id/reviews/new -> reviews#new
  # POST /bookings/:booking_id/reviews -> reviews#create
  resources :bookings, only: [:index, :show, :destroy] do
    resources :reviews, only: [:new, :create, :destroy]
  end

  resources :reviews, only: [:index, :show]

  resources :users, only: [:index, :show]

  resources :bforms, only: [:new, :create]

end
