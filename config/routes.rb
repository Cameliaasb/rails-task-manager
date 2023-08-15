Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # read toutes les tasks
  get "tasks", to: "tasks#index"

  # create = un get en formulaire (1/2)
  get "tasks/new", to: "tasks#new", as: "new"

  # read une task
  get "tasks/:id", to: "tasks#show", as: "task"

  # create = un post du formulaire (2/2)
  post "tasks", to: "tasks#create"

  # Update une task => un get en formulaire + un post
  get "tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "tasks/:id", to: "tasks#update"

  # delete
  delete "tasks/:id", to: "tasks#destroy", as: "delete"


end
