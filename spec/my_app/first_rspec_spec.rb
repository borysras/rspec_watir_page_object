require 'spec_helper'

describe 'register a user and to start playback' do
  it 'register a user, check that user is registered correctly and check that
       playback was started' do
    visit(HomePage) do |page|
      page.accept_cookies
      page.click_reg_button
    end
    on RegistrationPage do |page|
      @email = Faker::Internet.email
      page.fill_email_field(@email)
      page.fill_password_field
      page.terms_checkbox
      page.newsletter_checkbox
      page.registrieren_button
      page.waiter.wait_until_present
    end
    on SuccessfulRegistrationPage do |page|
      expect(page.email_exists?(@email)).to be_truthy
    end
    visit(HomePage) do |page|
      page.close_popup_windows
      page.start_playback
      page.close_popup
      expect(page.music_exists?).to be_truthy
    end
  end
end
