Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'

  post '/reminders', to: 'reminders#create'
  delete '/reminders/:id', to: 'reminders#destroy'

  post '/jobs', to: 'jobs#create'
  delete '/jobs/:id', to: 'jobs#destroy'

  post '/notes', to: 'notes#create'
  patch '/notes/:id', to: 'notes#update'
  delete '/notes/:id', to: 'notes#destroy'

end
