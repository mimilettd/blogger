require "rails_helper"

RSpec.feature "User can edit an article", :type => :feature do
  scenario "User visits articles#show and can click link to edit that article" do

    article = Article.create(title: "Learn Ruby the Hard Way",
                             body: "In seven weeks, learn how to code like a real programmer!")

    visit "/articles/1"

    click_link 'edit'

    expect(current_path).to eq(edit_article_path(article))

    fill_in "Title", :with => "Sinatra to Rails: You'll Never Want to Go Back"
    fill_in "Body", :with => "Who said coding had to be hard? Try Rails!"
    click_button "Update Article"

    expect(page).to have_content("Sinatra to Rails: You'll Never Want to Go Back")
    expect(page).to have_content("Who said coding had to be hard? Try Rails!")
  end
end
