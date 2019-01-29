source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'slack-ruby-client'

gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'simple_form'
gem "pundit"
gem 'rubocop', '~> 0.63.1', require: false
gem 'toastr-rails'
gem 'pry-rails'
gem 'devise'
gem "paperclip", git: "git://github.com/thoughtbot/paperclip.git"

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'rspec-rails', '~> 3.8'
  gem 'annotate', git: 'https://github.com/ctran/annotate_models.git'
  gem "better_errors"
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
