Rails.application.routes.draw do
  resources :beers
  resources :breweries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'breweries#index'
  get 'kaikki_bisset', to: 'beers#index'
  get 'ratings', to: 'ratings#index'
end
