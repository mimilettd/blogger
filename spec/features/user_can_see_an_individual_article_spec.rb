require "rails_helper"

RSpec.feature "User can see an individual article", :type => :feature do
  scenario "User visits articles#show and can see that specific article" do

    article = Article.create(title: "Learn Ruby the Hard Way",
                   body: "In seven weeks, learn how to code like a real programmer!")

    visit "/articles/1"

    expect(current_path).to eq(article_path(article))

    expect(page).to have_text("Learn Ruby the Hard Way")
    expect(page).to have_text("In seven weeks, learn how to code like a real programmer!")
  end
end
