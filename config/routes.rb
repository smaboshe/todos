Rails.application.routes.draw do
  resources :todos, only: [:index, :create, :new] do
    resource :completion, only: [:create]
  end

  resource :session, only: [:new, :create]

  root "todos#index"
end
