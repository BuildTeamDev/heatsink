if ENV['CIRCLECI'] == 'true'
  require 'pronto'
  require 'simplecov'
  require 'codecov'
  SimpleCov.start do
    track_files 'app/**/*.rb'
  end
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end
