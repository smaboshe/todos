Rails.application.routes.draw do
  resources :todos, only: [:index, :create, :new]

  resource :session, only: [:new, :create]

  root "todos#index"
end
