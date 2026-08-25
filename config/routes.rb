Rails.application.routes.draw do
  root "jobs#index"
  get "up" => "rails/health#show", as: :rails_health_check
  
  resources :jobs
end

