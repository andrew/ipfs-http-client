# frozen_string_literal: true

module Ipfs
  module Commands
    class Id < Ipfs::Commands::Base
      def self.call(client)
        response = request(client, "/id")
        parse(response.body)
      end
    end
  end
end
