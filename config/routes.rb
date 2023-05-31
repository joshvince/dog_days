Rails.application.routes.draw do
  resources :days

  get '/scratches/:id', to: 'scratches#show', as: 'scratch'
  get '/scratches/add/:id', to: 'scratches#add', as: 'add_scratch'
  get '/scratches/remove/:id', to: 'scratches#remove', as: 'remove_scratch'
  post '/add_scratch', to: 'scratches#add_to_today', as: 'add_scratch_to_today'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
