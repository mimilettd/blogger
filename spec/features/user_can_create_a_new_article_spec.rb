require 'rails_helper'

RSpec.describe "User can create a new article", :type => :feature do
  scenario "User visits articles#index and can click link to create a new article" do

    visit "/articles"
    
    page.find_link('Create a New Article').text
  end
end
