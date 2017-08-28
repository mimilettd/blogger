require "rails_helper"

RSpec.feature "Add comments" do
  before(:each) do
    @article = Article.create(title: "Learn Ruby the Hard Way",
                              body: "In seven weeks, learn how to code like a real programmer!")
    @article.comments.create(author_name: "Daffy Duck",
                              body: "This article is stu-uuu-pid!")
  end
  scenario "User visits article#show and can comment on that article" do
    visit "/articles/1"

    expect(current_path).to eq(article_path(@article))

    expect(page).to have_text("Post a Comment")

    fill_in 'Your Name', with: 'Little Mermaid'
    fill_in 'Your Comment', with: 'This was a really informative article!'
    click_button 'Submit'

    expect(page).to have_content('Little Mermaid')
    expect(page).to have_content('This was a really informative article!')
  end
end
