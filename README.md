# Trello Clone with Ruby on Rails.

### Setup

1. Update `config/database.yml` with your database credentials.
2. Run `bundle install`.
3. Run `rails db:create db:migrate`.
4. Run `gem install foreman`. We need to install this gem on our machine, not on from Gemfile
5. Run `foreman start` # This run Rails, sidekiq, and webpack-dev-server
