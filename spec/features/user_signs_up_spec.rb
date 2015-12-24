require 'rails_helper'

feature 'User signs up with hattrick' do

  before(:each) do
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:hattrick] 
  end

  scenario 'successfully' do
    visit root_path

    click_on "Sign up"
    fill_form(:user, { email: "billybob@example.com", password: "billy" }) 
    click_button "Sign up"

    expect(page).to have_content("billybob@example.com")
  end
end
