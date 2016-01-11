class User < ApplicationRecord
  include Clearance::User
  validates :auth_provider, :auth_uid, :hattrick_username,
    :oauth_token, :oauth_secret, presence: true

  def self.from_omniauth(auth)
    where(auth_provider: auth.provider, auth_uid: auth.uid).first_or_initialize.tap do |user|
      user.hattrick_username = auth.info.username
      user.oauth_token = auth.credentials.token
      user.oauth_secret = auth.credentials.secret
    end
  end
  
  def hattruby_client
    @hattruby_client ||= Hattruby::Client.new(
      consumer_key: ENV['HATTRICK_KEY'],
      consumer_secret: ENV['HATTRICK_SECRET'],
      token: oauth_token,
      token_secret: oauth_secret
    )
  end
end
