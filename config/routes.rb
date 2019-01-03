Rails.application.routes.draw do
  namespace :admin do
    
  end

  namespace :trainer do
    resources :trainees, only: [:index]
  end
end
