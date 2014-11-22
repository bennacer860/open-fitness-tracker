OpenFitnessTracker::Application.routes.draw do

  match "/auth/:provider/callback", to: "session#create" , via: [:get,:post]
  match "/logout", to: "session#destroy" , via: [:get,:post]

  get "session/destroy"

  get "welcome/index"
  root :to => 'welcome#index'

end
