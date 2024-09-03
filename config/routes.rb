Rails.application.routes.draw do
  root "org_profiles#home"
  
  get "/orgs", to: "org_profiles#index"

  get "/orgs/:id", to: "org_profiles#public_show"
  
  get "/profiles/:id", to: "user_profiles#show"

  get "/profiles/:id/edit", to: "user_profiles#edit"

  get "/orgs/:id/new_opportunity", to: "tasks#new"

  get "/orgs/:org_profile_id/tasks/:task_id", to: "tasks#show"

  get "/profiles/:user_id/orgs/:org_profile_id/tasks/:task_id", to: "tasks#show"

  get "/orgs/:id/profile", to: "org_profiles#admin_show"
  
  get "/orgs/:id/update", to: "org_profiles#update"

  #get "/org_profiles/:id", to: "org_profiles#update"

  get "/profiles/:user_id/log_task/:task_id", to: "user_profiles#log_task"

  get "/create_account", to: "user_profiles#new"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :org_profiles do
    resources :tasks
  end

  resources :user_profiles do
    resources :tasks
  end
end
