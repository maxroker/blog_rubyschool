require "spec_helper"

feature "Account Creation" do 
  scenario "allows guest to create account" do
    visit new_user_registration_path
    
    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'mike'
    fill_in :user_password, :with => '1234safe'
    fill_in :user_password_confirmation, :with => '1234safe'

    click_button 'Sign up'

    expect(page).to have_content 'mike'
    #expect(page).to have_content 'Welcome! You have signed up successfully.'
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end


end