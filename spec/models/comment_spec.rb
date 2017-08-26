require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @article = Article.new(title: "Learn Ruby the Hard Way",
                        body: "In seven weeks, learn how to code like a real programmer!")
    @article.comments.new(author_name: "Daffy Duck",
                        body: "This article is stu-uuu-pid!")
  end
  it "is valid with valid attributes" do
    expect(@article.comments.first).to be_valid
  end
  it "is not valid without an author name" do
    @article.comments.first.author_name = nil
    expect(@article.comments.first).to_not be_valid
  end
  it "is not valid without a body" do
    @article.comments.first.body = nil
    expect(@article.comments.first).to_not be_valid
  end
end
