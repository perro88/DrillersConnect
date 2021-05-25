Rails.application.routes.draw do
  root to: "pages#index"

  devise_for :users

  resources :job_users

  get "/jobs", to: "jobs#index", as: "jobs"
  post "/jobs", to: "jobs#create"
  get "/jobs/new", to: "jobs#new", as: "new_job"
  get "/jobs/:id/edit", to: "jobs#edit", as: "edit_job"
  get "/jobs/:id", to: "jobs#show", as: "job"
  patch "/jobs/:id", to: "jobs#update"
  put "jobs/:id", to: "jobs#update"
  delete "jobs/:id", to: "jobs#destroy" 

  post "/jobs/apply_for_job/:id", to: "jobs#apply_for_job", as: "apply_for_job"
  delete "/jobs/apply_for_job/:id", to: "jobs#destroy_applicant"

  get "/users", to: "users#index", as: "users"
  post "/users", to: "users#create"
  get "/users/new", to: "users#new", as: "new_user"
  get "/users/edit", to: "users#edit", as: "edit_user"
  get "/users/:id", to: "users#show", as: "user"
  patch "/users/:id", to: "users#update"
  put "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  post "/users/become_employer", to: "users#become_employer", as: "employer"
  post "/users/become_user", to: "users#become_user", as: "not_employer"

  get "/information", to: "information#index", as: "information_index"
  post "/information", to: "information#create"
  get "/information/new", to: "information#new", as: "new_information"
  get "/information/edit", to: "information#edit", as: "edit_information"
  get "/information/:id", to: "information#show", as: "show_information"
  patch "/information", to: "information#update"
  put "/information/:id", to: "information#update"
  delete "/information/:id", to: "information#destroy"
end
