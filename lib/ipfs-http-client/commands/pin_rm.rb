# frozen_string_literal: true

module Ipfs
  module Commands
    class PinRm < Ipfs::Commands::Base
      def self.call(client, node, recursive: false)
        response = http_get client, "/pin/rm?arg=#{node}&recursive=#{recursive}"
        parse(response.body)
      end
    end
  end
end
