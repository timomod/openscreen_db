Rails.application.routes.draw do


  root 'events#index'

  resources :events do
    resources :reviews, only: [:new, :create]
  end


end
