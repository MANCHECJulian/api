Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # App
  get "app", to: "application#show"

  # Users
  post "user", to: "user#create"
  get  "user/connexion", to: "user#connexion"

  # Dashboard
  get "dashboard", to: "dashboard#show"

  # Defines the root path route ("/")
  root "login#show"
end
