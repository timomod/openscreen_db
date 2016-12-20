Rails.application.routes.draw do




  root 'events#index'

  # Admin routes
  namespace :admin do

    resources :events do
      resources :program_items, only: [:create, :destroy]
    end

    resources :films

  end



  # Regular User routes

  resources :events, only: [:index, :show]

  resources :films, only: [:index, :show]


end
