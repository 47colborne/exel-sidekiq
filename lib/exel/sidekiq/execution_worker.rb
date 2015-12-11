require 'sidekiq'

module EXEL
  module Sidekiq
    class ExecutionWorker
      include ::Sidekiq::Worker

      def perform(context_uri)
        context = Context.deserialize(context_uri)
        block = context[:_block]
        block.start(context)
      end
    end
  end
end
