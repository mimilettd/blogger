require "rails_helper"

RSpec.feature "Tags", :type => :feature do
  describe "User visits article#show" do
    it "and can click on tags to see all related articles" do
      Article.create(title: "Learn Ruby the Hard Way",
                     body: "In seven weeks, learn how to code like a real programmer!",
                     tag_list: "ruby")
      Article.create(title: "5 Reasons Why You Should Python",
                     body: "No, we're not talking about the snake.",
                     tag_list: "ruby")
      visit '/articles/1'

      click_link 'ruby'

      expect(page).to have_content("Learn Ruby the Hard Way")
      expect(page).to have_content("5 Reasons Why You Should Python")
    end
  end
end
