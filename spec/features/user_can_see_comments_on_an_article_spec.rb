require "rails_helper"

RSpec.describe "User can see comments on an article", :type => :feature do
  before(:each) do
    @article = Article.create(title: "Learn Ruby the Hard Way",
                              body: "In seven weeks, learn how to code like a real programmer!")
    @article.comments.create(author_name: "Daffy Duck",
                              body: "This article is stu-uuu-pid!")
  end
  scenario "User visits articles#show and can see comments for that article" do
    visit "articles/1"

    expect(current_path).to eq(article_path(@article))
    expect(page).to have_text(@article.title)
    expect(page).to have_text(@article.body)
    expect(page).to have_text(@article.comments.first.author_name)
    expect(page).to have_text(@article.comments.first.body)
  end

end
