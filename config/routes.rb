Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'

  post '/reminders', to: 'reminders#create'
  delete '/reminders/:id', to: 'reminders#destroy'

  post '/jobs', to: 'jobs#create'
end
