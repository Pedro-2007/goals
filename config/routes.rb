Rails.application.routes.draw do
  root "home#show"
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  get "dashboard" => "dashboard#show", as: :dashboard
  delete "logout" => "devise/sessions#destroy", as: :destroy_user_session_path
end
