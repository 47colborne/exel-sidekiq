require 'exel/sidekiq/version'

module EXEL
  module Sidekiq
    EXEL.configure do |config|
      config.async_provider = SidekiqProvider
    end
  end
end
