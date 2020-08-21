Rails.application.routes.draw do
  post '/sign_up', to: 'register#sign_up'
  resources :users, except: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
