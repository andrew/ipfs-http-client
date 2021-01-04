# frozen_string_literal: true

module Ipfs
  module Commands
    class RepoGc < Ipfs::Commands::Base
      def self.call(client)
        request(client, "/repo/gc").to_s
      end
    end
  end
end
