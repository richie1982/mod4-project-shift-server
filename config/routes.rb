Rails.application.routes.draw do
  resources :user_tracks
  resources :tracks
  resources :users, only: [:show]
  post '/log_in', to: 'users#log_in'
  get '/inventory', to: 'users#inventory'
  get '/validate', to: 'users#validate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
