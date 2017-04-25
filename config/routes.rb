Rails.application.routes.draw do
  devise_for :users
  resources :personal_records
  resources :workouts
  resources :set_of_exercises
  resources :exercises
  resources :home, only: :index

  authenticated :user do
    root 'workouts#index', as: :authenticated_root
  end

  root "home#index"
end
