# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.0.3', '>= 6.0.3.6'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'bootstrap', '~> 4.5'
gem 'devise', '~> 4.7', '>= 4.7.1'
gem 'devise-bootstrapped', github: 'excid3/devise-bootstrapped', branch: 'bootstrap4'
gem 'devise_masquerade', '~> 1.2'
gem 'font-awesome-sass', '~> 5.13'
gem 'friendly_id', '~> 5.3'
gem 'image_processing'
gem 'jbuilder', '~> 2.7'
gem 'madmin'
gem 'mini_magick', '~> 4.10', '>= 4.10.1'
gem 'name_of_person', '~> 1.1'
gem 'noticed', '~> 1.2'
gem 'omniauth-facebook', '~> 6.0'
gem 'omniauth-github', '~> 1.4'
gem 'omniauth-twitter', '~> 1.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'pundit', '~> 2.1'
gem 'redis', '~> 4.2', '>= 4.2.2'
gem 'sass-rails', '>= 6'
gem 'sidekiq', '~> 6.1'
gem 'sitemap_generator', '~> 6.1', '>= 6.1.2'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'whenever', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.0.0'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
