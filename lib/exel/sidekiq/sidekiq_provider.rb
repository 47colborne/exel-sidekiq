require 'sidekiq'
require_relative 'execution_worker'

module EXEL
  module Sidekiq
    class SidekiqProvider
      def initialize(context)
        @context = context
      end

      def do_async(block)
        @context[:_block] = block

        push_args = {'class' => EXEL::Sidekiq::ExecutionWorker, 'args' => [@context.serialize]}
        push_args['queue'] = @context[:queue] if @context[:queue]
        push_args['retry'] = @context[:retry] if @context[:retry]

        ::Sidekiq::Client.push(push_args)
      end
    end
  end
end
