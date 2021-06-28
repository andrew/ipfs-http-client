# frozen_string_literal: true

module Ipfs
  module Commands
    class UrlstoreAdd < Ipfs::Commands::Base
      def self.call(client, url)
        response = request(client, "/urlstore/add?arg=#{url}")
        parse(response.body)
      end
    end
  end
end
