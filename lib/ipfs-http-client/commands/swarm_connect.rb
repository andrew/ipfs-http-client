# frozen_string_literal: true

module Ipfs
  module Commands
    class SwarmConnect < Ipfs::Commands::Base
      def self.call(client, address)
        response = request(client, "/swarm/connect?arg=#{address}")
        parse(response.body)
      end
    end
  end
end
