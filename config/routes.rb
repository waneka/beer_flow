BeerFlow::Application.routes.draw do

  resources :users, only: [:new, :create, :show]
  resources :questions, only: [:new, :create, :show, :index]
  resources :answers, only: [:create] do
    resources :votes, only: [:create]
  end

  resources :sessions, only: [:new, :create]

  get "logout", to: "sessions#destroy"
  root to: 'questions#index'

end
