require 'sinatra'
require "sinatra/json"
require 'octokit'

module Sinatra
  module GithubModule

    def self.registered(app)
      app.get '/github/*/avatar' do |name|
        user = Octokit.user name
        json({:url => user.avatar_url})
      end

      app.get '/github/*/details' do |name|
        user = Octokit.user name
        json({:name => user.name,
	          :blog => user.blog,
  	          :location => user.location})
	    end
    end
  end
end