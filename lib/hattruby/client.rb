require 'hattruby/request'

module Hattruby
  class Client
    attr_reader :consumer_key, :consumer_secret,
      :token, :token_secret

    def initialize(consumer_key:, consumer_secret:, 
                   token:, token_secret:)
      @consumer_key = consumer_key
      @consumer_secret = consumer_secret
      @token = token
      @token_secret = token_secret
    end

    # @return [Hash]
    def credentials
      {
        consumer_key: consumer_key,
        consumer_secret: consumer_secret,
        token: token,
        token_secret: token_secret
      }
    end
  end
end