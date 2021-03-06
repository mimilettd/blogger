require "rails_helper"

RSpec.feature "Add image", :type => :feature do
  describe "User creates a new article" do
    it "and sees selector to add image" do

      visit "/articles/new"

      expect(page).to have_content("Attach an Image")
      expect(page).to have_selector("input")
    end
  end
end
