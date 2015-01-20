$:.unshift File.dirname(__FILE__) # For use/testing when no gem is installed

require 'sinatra/base'
require 'site/modules/githubmodule'

class App < Sinatra::Base
  register Sinatra::GithubModule

  # start the server if ruby file executed directly
  run! if app_file == $0
end