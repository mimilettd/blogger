require "rails_helper"

RSpec.feature "Tags", :type => :feature do
  describe "User can visit tags#index and" do
    it "see all tags" do
      Article.create(title: "Learn Ruby the Hard Way",
                     body: "In seven weeks, learn how to code like a real programmer!",
                     tag_list: "ruby")
      Article.create(title: "5 Reasons Why You Should Python",
                     body: "No, we're not talking about the snake.",
                     tag_list: "technology")
      visit '/tags'

      expect(page).to have_link("ruby")
      expect(page).to have_link("technology")
    end
  end
end
