Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :posts
  post '/friendships/:friend_id', to: 'friendships#create', as: 'friendships'
  get '/friendships', to: 'friendships#index'

  post '/login', to: 'session#login'
  post '/sign_up', to: 'register#sign_up'
  resources :users, except: [:create]
  get '/validate_user', to: 'application#validate_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
