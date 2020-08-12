Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end

  # ---------------------------------------------------
  # This way of routing actions doesn't work if you want to nest other models

  # Users can see all restaurants
  # get 'restaurants', to: 'restaurants#index'

  # !!!!! Position matters - Users can create a new instance of restaurant
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  # Users can see a page with an instance of restaurant selected
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
end
