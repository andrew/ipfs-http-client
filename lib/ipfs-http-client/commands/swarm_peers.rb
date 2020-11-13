# frozen_string_literal: true

module Ipfs
  module Commands
    class SwarmPeers < Ipfs::Commands::Base
      def self.call(client)
        response = request(client, "/swarm/peers")
        parse(response.body)
      end
    end
  end
end
