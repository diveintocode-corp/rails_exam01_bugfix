source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '4.0.5'

gem 'rails', '8.1.3.1'
gem 'pg'
gem 'puma', '~> 6.6'
gem 'sass-rails', '~> 6.0'
gem 'sprockets', '~> 4.2'
gem 'sprockets-rails', '~> 3.5'
gem 'terser', '~> 1.2'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', '~> 13.0', platforms: [:mri, :windows]
  gem 'faker'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.1'
  gem 'better_errors' # render better error page
  gem 'binding_of_caller' # use irb on better_errors
  gem 'pry-byebug', '~> 3.12' # use step over on binding.pry
  gem 'pry-doc' # extend pry document support
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rails_best_practices'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 8.0'
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: [:windows, :jruby]
