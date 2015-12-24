OmniAuth.config.test_mode = true

OmniAuth.config.mock_auth[:hattrick] = OmniAuth::AuthHash.new({
  provider: 'hattrick',
  uid: '12345',
  credentials: {
    token: "token",
    secret: "secret"
  },
  info: {
    user_id: "12345",
    username: "Billy-bob"
  }
})
