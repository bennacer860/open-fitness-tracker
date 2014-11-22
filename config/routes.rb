OpenFitnessTracker::Application.routes.draw do

  get "session/create"

  get "session/destroy"

  get "welcome/index"
  root :to => 'welcome#index'

end
