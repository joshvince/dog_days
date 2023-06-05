Rails.application.routes.draw do
  resources :days

  get '/', to: 'days#index'

  get '/scratches/:id', to: 'scratches#show', as: 'scratch'
  get '/scratches/add/:id', to: 'scratches#add', as: 'add_scratch'
  get '/scratches/remove/:id', to: 'scratches#remove', as: 'remove_scratch'
  get '/add_scratch', to: 'scratches#add_to_today', as: 'add_scratch_to_today'

  get '/days/:id/ear_state', to: 'ear_states#ear_state', as: 'ear_state'
  post '/days/:id/update_ear_state', to: 'ear_states#update_ear_state', as: 'update_ear_state'

  get '/days/:id/meals', to: 'food#daily_meals', as: 'daily_meals'
  post '/days/:id/meals', to: 'food#update_daily_meal', as: 'update_daily_meal'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
