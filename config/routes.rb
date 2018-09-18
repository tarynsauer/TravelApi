Rails.application.routes.draw do
  resources :airports, only: [:index]
  post 'auth/login', to: 'authentication#authenticate'
end
