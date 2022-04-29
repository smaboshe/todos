Rails.application.routes.draw do
  resources :todos, only: [:create, :new]

  root "todos#index"
end
