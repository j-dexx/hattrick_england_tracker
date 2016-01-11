require "rails_helper"

describe Hattruby::Client do
  it "#credentials" do
    tokens = {
      consumer_key: 'CK',
      consumer_secret: 'CS',
      access_token: 'AT',
      access_secret: 'AS'
    }
    client = Hattruby::Client.new(tokens)

    expect(client.credentials).to eq(tokens)
  end
end