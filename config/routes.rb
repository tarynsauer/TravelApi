Rails.application.routes.draw do
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :airports, only: [:index]
    get 'airports/auto_complete'
  end

  post 'auth/login', to: 'authentication#authenticate'
end
