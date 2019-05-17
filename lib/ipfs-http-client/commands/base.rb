# frozen_string_literal: true

require 'http'
require 'json'
require 'http/form_data'

module Ipfs
  module Commands
    class Base
      def self.http_get(client, path_with_query, args = nil)
        url = "#{client.base_url}#{path_with_query}"
        response = HTTP.get(*[url, args].compact)
        yield response if block_given?
        response
      end

      def self.parse(str)
        JSON.parse(str)
      end
    end
  end
end
