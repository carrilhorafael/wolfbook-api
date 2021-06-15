Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  resources :messages
  resources :conversations
  resources :likes
  resources :comments
  resources :posts
  get '/friendships/not', to:"friendships#not_friends"
  post '/friendships/:friend_id', to: 'friendships#create', as: 'friendships'
  get '/friendships', to: 'friendships#index'

  post '/login', to: 'auth#login'
  post '/sign_up', to: 'auth#sign_up'
  resources :users, except: [:create]
  get '/validate_user', to: 'application#validate_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
