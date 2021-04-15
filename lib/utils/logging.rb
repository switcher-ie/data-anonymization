require 'active_record'
require 'logger'

module DataAnon
  module Utils
    module Logging

      extend self

      def logger
        @@logger ||= (self.logger = Logger.new(STDOUT) )
      end

      def logger= logger
        @@logger = logger
        ActiveRecord::Base.logger = logger
        @@logger
      end

    end
  end
end