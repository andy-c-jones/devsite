$: << File.expand_path(File.join(File.dirname(__FILE__), '..'))

require 'airborne'

require 'api/app'

Airborne.configure do |config|
  config.rack_app = Sinatra::App
  config.base_url = 'http://localhost:4567'
end