Rails.application.routes.draw do
  root 'static#Home'

  devise_for :users

  resources :users do
    resources :workouts
  end

  resources :workouts do
    resources :lifts
  end

  resources :exercises
end
