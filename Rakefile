require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  require 'test/test_helper'
  t.libs << 'test'
  t.pattern = 'test/*_test.rb'
end

task :default => :test
