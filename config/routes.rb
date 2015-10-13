Rails.application.routes.draw do
  # mount_devise_token_auth_for 'User', at: 'auth'
  root 'landing_page#index'
  resources :submissions
end
