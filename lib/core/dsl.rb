module DataAnon
  module Core
    module DSL
      def database(name, &block)
        Utils::Logging.logger.debug "Processing Database: #{name}"
        database = DataAnon::Core::Database.new(name)
        database.instance_eval &block
        database.anonymize
      end
    end
  end
end

include DataAnon::Core::DSL
