  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  root to: 'tests#index'

  devise_for :users, path: :gurus, path_names: { sign_in: :login, sign_out: :logout },
             controllers: { sessions: 'users/sessions' }

  get 'users/new'

  resources :feedbacks, only: %i[create new]

  resources :badges, only: %i[index] do
    member do
      get :all_badges
    end
  end

  resources :tests, only: :index do
    member do
      post :start
    end
  end

  resources :test_passages, only: %i[show update] do
    member do
      get :result
      post :gist
    end
  end

  namespace :admin do
    resources :badges
    resources :gists, only: :index, shallow: true
    resources :tests do
      patch :update_inline, on: :member

      resources :questions, except: :index, shallow: true do
        resources :answers, except: %i[index, show], shallow: true
      end
    end
  end
end
