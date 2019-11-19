require "spec_helper"

feature "Account Creation" do 
  scenario "allows guest to create account" do
    
    sign_up #method where we create new user located support/session_helper.rb

    expect(page).to have_content 'mike'
    #expect(page).to have_content 'Welcome! You have signed up successfully.'
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end


end



