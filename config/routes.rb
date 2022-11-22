Rails.application.routes.draw do
  resources :beers
  resources :breweries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    # kommentoi tai poista entiset määrittelyt
  #get 'ratings', to: 'ratings#index'
  #get 'ratings/new', to: 'ratings#new'
  #post 'ratings', to: 'ratings#create'

  resources :ratings, only: [:index, :new, :create, :destroy]
end
