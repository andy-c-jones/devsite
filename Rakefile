require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :run

task :run do
  ruby "api/app.rb"
end

task :test => :spec