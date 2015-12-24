require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:auth_provider) }
  it { should validate_presence_of(:auth_uid) }
  it { should validate_presence_of(:hattrick_username) }
  it { should validate_presence_of(:oauth_token) }
  it { should validate_presence_of(:oauth_secret) }
end
