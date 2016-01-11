module Hattruby
  class Request
    include HTTParty
    base_uri 'http://chpp.hattrick.org'
    PATH = '/chppxml.ashx'

    # @param client [Hattruby::Client]
    # @param params
    # @return [Hattruby::Request]
    def initialize(client, params = {})
      @client = client
      @request_method = :get
      @uri = URI::parse(Hattruby::Request.base_uri + PATH)
      @params = params
    end

    def oauth_header
      SimpleOAuth::Header.new(@request_method, @uri, @params, @client.credentials)
    end

    def request_headers
      {
        authorization: oauth_header.to_s
      }
    end

    def perform
      self.class.get(PATH, { query: @params, headers: request_headers })
    end
  end
end
