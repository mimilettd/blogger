require "rails_helper"

RSpec.feature "Delete articles", :type => :feature do
  scenario "User visits articles#show and can click link to delete that article" do

    Article.create(title: "Learn Ruby the Hard Way",
                             body: "In seven weeks, learn how to code like a real programmer!")

    visit "/articles/1"

    click_link 'delete'

    expect(current_path).to eq(articles_path)
  end
end
