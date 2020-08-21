Rails.application.routes.draw do
  post 'login', to: 'session#login'
  post '/sign_up', to: 'register#sign_up'
  resources :users, except: [:create]
  get '/validate_user', to: 'application#validate_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
