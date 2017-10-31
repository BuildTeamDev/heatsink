require 'bundler/gem_tasks'
require 'rake/testtask'

require 'simplecov'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/*_test.rb'
end

task :default => :test

task :pronto do
  require 'pronto'
  Pronto::GemNames.new.to_a.each { |gem_name| require "pronto/#{gem_name}" }

  formatter = Pronto::Formatter::GithubPullRequestReviewFormatter.new
  status_formatter = Pronto::Formatter::GithubStatusFormatter.new
  formatters = [formatter, status_formatter]

  # we probably have to change the branch of this I guess...
  Pronto.run('origin/master', '.', formatters)
end