source 'http://rubygems.org'

gem 'rails',                '4.2.0.rc3'
gem 'sass-rails',           '4.0.3'
gem 'bootstrap-sass',       '3.2.0.0'
gem 'uglifier',             '1.3.0'
gem 'coffee-rails',         '4.0.0'
gem 'jquery-rails',         '4.0.0.beta2'
gem 'turbolinks',           '2.3.0'
gem 'jbuilder',             '2.2.3'
gem 'sdoc',                 '0.4.0', group: :doc

gem 'tzinfo-data', platforms: [:mingw, :mswin]
gem 'jquery-turbolinks'

gem 'rest-firebase', :git => 'git://github.com/CodementorIO/rest-firebase.git',
                     :submodules => true

group :development, :test do
  gem 'sqlite3'
  # gem 'byebug',      '3.4.0'
  # gem 'web-console', '2.0.0.beta3'
  # gem 'spring',      '1.1.3'
end

# group :test do
#   gem 'minitest-reporters', '1.0.5'
#   gem 'mini_backtrace',     '0.1.3'
#   gem 'guard-minitest',     '2.3.1'
# end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end