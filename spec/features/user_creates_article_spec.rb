require "spec_helper"

feature "Article Creation" do 

  before(:all) do 
    sign_up #method that creates new user located support/session_helper.rb
  end

  scenario "allows user to visit new article page" do
    visit new_article_path

    expect(page).to have_content 'New article'
    #expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end


end



