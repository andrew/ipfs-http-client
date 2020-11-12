# frozen_string_literal: true

module Ipfs
  module Commands
    class Id < Ipfs::Commands::Base
      def self.call(client, peer_id = nil)
        path = '/id'
        path = path + "?arg=#{peer_id}" if peer_id
        response = request(client, path)
        parse(response.body)
      end
    end
  end
end
