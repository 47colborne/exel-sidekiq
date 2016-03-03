require 'exel'
require 'sidekiq/testing'

Dir[File.expand_path('../../lib/**/*.rb', __FILE__)].each { |f| require f }

EXEL.logger = nil
