# frozen_string_literal: true

module Ipfs
  module Commands
    class LogLevel < Ipfs::Commands::Base
      def self.call(client, subsystem, level)
        path = "/log/level?arg=#{subsystem}&arg=#{level}"
        response = request(client, path)
        parse(response.body)
      end
    end
  end
end
