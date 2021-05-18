Rails.application.routes.draw do
  root to: 'pages#index'

  devise_for :users

  get '/jobs', to: 'jobs#index', as: 'jobs'
  post '/jobs', to: 'jobs#create'
  get '/jobs/new', to: 'jobs#new', as: 'new_job'
  get '/jobs/:id/edit', to: 'jobs#edit', as: 'edit_job'
  get '/jobs/:id', to: 'jobs#show', as: 'job'
  patch '/jobs/:id', to: 'jobs#update'
  put 'jobs/:id', to: 'jobs#update'
  delete 'jobs/:id', to: 'jobs#destroy'
 
  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create'
  post '/users/become_employer', to: 'users#become_employer', as: 'employer'
  get 'users/:id/profile', to: 'users#profile', as: 'profile'

  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  patch '/users/:id', to: 'users#update'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
end
