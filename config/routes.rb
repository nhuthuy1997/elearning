Rails.application.routes.draw do
  devise_for :users
  root to: "static_pages#index"
  namespace :admins do
    
  end

  namespace :trainers do
    root to: "classes#index"
    resources :trainees, only: [:index]
    resources :classes, only: [:index]
  end

  namespace :trainees do
    root to: "classes#index"
  end
end
