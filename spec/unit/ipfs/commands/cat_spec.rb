# frozen_string_literal: true

require 'spec_helper'

module Ipfs::Commands
  describe Cat do
    describe '.call' do
      let(:client) { double base_url: 'api-url' }
      let(:response) { double to_s: 'response', code: 200 }
      let(:node) { 'abc' }

      before :each do
        allow(HTTP).to receive(:post) { response }
      end

      it 'issues the correct request' do
        Cat.call client, node

        expect(HTTP).to have_received(:post).with(
          "api-url/cat?arg=abc"
        )
      end

      it 'returns the result' do
        result = Cat.call client, node
        expect(result).to eq 'response'
      end

    end
  end
end
