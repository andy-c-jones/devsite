#$:.unshift File.dirname(__FILE__)
#$: << File.expand_path(File.join(File.dirname(__FILE__), '..'))

require 'airborne'
require 'spec_helper'

describe 'github endpoints' do
  it 'should return the url for the users github avatar' do
    get '/github/andy-c-jones/avatar'
    expect_json_types({url: :string})
  end

  it 'should return the users name' do
    get '/github/andy-c-jones/details'
    expect_json({:name => "AJ"})
  end
end