require 'exel/sidekiq/version'
require_relative 'sidekiq/sidekiq_provider'

module EXEL
  module Sidekiq
    EXEL.configure do |config|
      config.async_provider = EXEL::Sidekiq::SidekiqProvider
    end
  end
end
