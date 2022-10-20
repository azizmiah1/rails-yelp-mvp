# Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end
  # #read
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/:id", to: "restaurants#show"

  # #new
  # get "restaurants/new", to: "restaurants#new"
  # #post
  # post "restaurants", to: "restaurants#create"

  # #update
  # get "restaurants/:id/edit", to: "restaurants#edit"
  # patch "restaurants/:id", to: "restaurants#update"

  # #delete
  # delete "restaurants/:id", to: "restaurants#destroy"
