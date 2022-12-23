Rails.application.routes.draw do
  get '/user/:id', to: 'users#profile', as: :user
  resources :users, only: :index
  root 'events#index'
  resources :events do
    member do
      get 'rsvp'
    end
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
