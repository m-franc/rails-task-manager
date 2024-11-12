Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  Rails.application.routes.draw do
    resources :tasks, only: [:all, :new, :task, :create, :edit, :update, :delete]
  end

  # get "/tasks", to: "tasks#all", as: :tasks
  # get "/tasks/new", to: "tasks#new", as: :new
  # get "/tasks/:id", to: "tasks#show", as: :task
  # post "/tasks", to: "tasks#create", as: :create
  # get "/tasks/:id/edit", to: "tasks#edit", as: :edit
  # patch "/tasks/:id", to: "tasks#update", as: :update
  # delete "/tasks/:id", to: "tasks#delete", as: :delete

  # Defines the root path route ("/")
  # root "posts#index"
end
