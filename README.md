# TravelApi
This is an API-only Ruby on Rails application that provides informationn on
airports and other travel-related information.

## Getting started
To start the app:

* install all project dependencies with `bundle install`
* create and seed the database: `rake db:create && rake db:migrate && rake db:seed`
* run the test suite: `rake db:test:prepare && rspec spec/`
* add `config/app_environment_variables.rb` (Use `config/app_environment_variables.rb.example` as an example.)

### TODOs
* Add beverage resources
* deploy to Heroku
