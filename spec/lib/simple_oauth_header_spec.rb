require "rails_helper"
require "uri"

describe SimpleOAuth::Header do
  it "creates the correct headers" do
    client = Hattruby::Client.new(consumer_key: 'CK', 
      consumer_secret: 'CS', token: 'AT', token_secret: 'AS')
    uri = URI::parse(Hattruby::Request.base_uri + '/path')
    headers = SimpleOAuth::Header.new(:get, uri, {}, client.credentials)

    expect(headers.options[:signature_method]).to eq('HMAC-SHA1')
    expect(headers.options[:version]).to eq('1.0')
    expect(headers.options[:consumer_key]).to eq('CK')
    expect(headers.options[:consumer_secret]).to eq('CS')
    expect(headers.options[:token]).to eq('AT')
    expect(headers.options[:token_secret]).to eq('AS')
  end
end
