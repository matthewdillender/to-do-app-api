Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  post "/users" => "users#create"

  # Defines the root path route ("/")
  # root "posts#index"
  get "/todos" => "todos#index"
  get "/todos/:id" => "todos#show"
  post "/todos" => "todos#create"
  patch "/todos/:id" => "todos#update"
  delete "/todos/:id" => "todos#destroy"

  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"
  post "/categories" => "categories#create"
  patch "/categories/:id" => "categories#update"
  delete "/categories/:id" => "categories#destroy"

  post "/sessions" => "sessions#create"
end
