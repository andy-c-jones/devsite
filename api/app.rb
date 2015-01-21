$:.unshift File.dirname(__FILE__)

require 'sinatra/base'
require 'site/modules/githubmodule'

module Sinatra
  class App < Sinatra::Application
    register Sinatra::GithubModule

    run!
  end
end