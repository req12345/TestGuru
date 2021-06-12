Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tests#index'

  resources :users, only: :create
  resources :sessions, only: :create

  get :signup, to: 'users#new'
  get :login, to: 'sessions#new'
  post :logout, to: 'sessions#destroy'

  resources :tests do
    resources :questions, shallow: true

    member do
      post :start
    end
  end

  resources :test_passages, only: %i[show update] do
    member do
      get :result
    end
  end
end
