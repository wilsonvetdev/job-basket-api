Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/reminders', to: 'reminders#create'
  delete '/reminders/:id', to: 'reminders#destroy'

  post '/jobs', to: 'jobs#create'
  patch '/jobs/:id', to: 'jobs#update'
  delete '/jobs/:id', to: 'jobs#destroy'

  post '/notes', to: 'notes#create'
  patch '/notes/:id', to: 'notes#update'
  delete '/notes/:id', to: 'notes#destroy'

  post '/users/signin', to: 'users#signin'
  post '/users', to: 'users#create'
  get '/users/keep_logged_in', to: 'users#keep_logged_in'

end
