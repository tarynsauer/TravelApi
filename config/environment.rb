require_relative 'application'

app_env_variables = File.join(Rails.root, 'config', 'app_environment_variables.rb')
load(app_env_variables) if File.exists?(app_env_variables)

Rails.application.initialize!
