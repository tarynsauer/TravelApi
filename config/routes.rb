Rails.application.routes.draw do
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :airports, only: [:index]
  end

  post 'auth/login', to: 'authentication#authenticate'
end
