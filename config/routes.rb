Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  post "/users" => "users#create"
  get "/reminders" => "reminders#index"
  # Defines the root path route ("/")
  # root "posts#index"
  get "/lists" => "lists#index"
  get "/lists/:id" => "lists#show"
  post "/lists" => "lists#create"
  patch "/lists/:id" => "lists#update"
  delete "/lists/:id" => "lists#destroy"

  get "/items" => "items#index"
  get "/items/:id" => "items#show"
  post "/items" => "items#create"
  patch "/items/:id" => "items#update"
  delete "/items/:id" => "items#destroy"
end
