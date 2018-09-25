User.destroy_all

User.create(
  name: ENV['API_USER_NAME'],
  email: ENV['API_USER_EMAIL'],
  password: ENV['API_USER_PASSWORD'],
)
