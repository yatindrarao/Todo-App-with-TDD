Rails.application.routes.draw do
  root 'todos#index'
  resources :todos, only: [:new, :create, :index] do
    resource :completions, only: [:create, :destroy]
  end
  resource :session,only: [:new, :create]
end
