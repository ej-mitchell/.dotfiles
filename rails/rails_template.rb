run "touch Gemfile"

add_source "https://rubygems.org/"

gem 'rails'
gem 'pg'
gem 'puma'

gem_group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

gem_group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'shoulda-matchers'
end

gem_group :development, :test do
  gem 'pry-rails' 
  gem 'rspec-rails'
  gem 'valid_attribute'
end

gem_group :production do
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

run "bundle install"

generate "rspec:install"

# add spec dependencies to rails_helper.rb
rails_helper = <<-RAILS_HELPER
require "valid_attribute"

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
RAILS_HELPER
run "echo '#{rails_helper}' >> spec/rails_helper.rb"

rake "db:create"

git :init
git add: "."
git commit: "-a -m initial"
