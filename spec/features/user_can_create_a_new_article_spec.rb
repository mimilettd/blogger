require 'rails_helper'

RSpec.describe "User can create a new article", :type => :feature do
  scenario "User visits articles#index and can click link to create a new article" do

    visit "/articles"

    page.find_link('Create a New Article').text
  end
  scenario "User visits #articles#new and can create a new article" do

    visit "articles/new"

    fill_in "Title:", :with => "Sinatra to Rails: You'll Never Want to Go Back"
    fill_in "Body:", :with => "Who said coding had to be hard? Try Rails!"
    click_button "Create"

    expect(page).to have_content("Sinatra to Rails: You'll Never Want to Go Back")
    expect(page).to have_content("Who said coding had to be hard? Try Rails!")
  end
end
