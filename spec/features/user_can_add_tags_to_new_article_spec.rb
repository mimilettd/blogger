require "rails_helper"

RSpec.feature "Add tags", :type => :feature do
  scenario "User creates a new article" do
    it "and can add tags" do

      visit "/articles/new"

      fill_in "Tag list", :with => "ruby, technology"
      fill_in "Title", :with => "Sinatra to Rails: You'll Never Want to Go Back"
      fill_in "Body", :with => "Who said coding had to be hard? Try Rails!"
      
      click_button "Create Article"

      expect(page).to have_content("Sinatra to Rails: You'll Never Want to Go Back")
      expect(page).to have_content("Who said coding had to be hard? Try Rails!")
      expect(page).to have_content("ruby")
      expect(page).to have_content("technology")
    end
  end
end
