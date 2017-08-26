require 'rails_helper'

RSpec.describe Article, type: :model do
  it "is valid with valid attributes" do
    article = Article.new(title: "Learn Ruby the Hard Way", body: "In seven weeks, learn how to code like a real programmer!")
    expect(article).to be_valid
  end
  it "is not valid without a title" do
    article = Article.new(body: "Learn Ruby the Hard Way")
    expect(article).to_not be_valid
  end
  it "is not valid without a body" do
    article = Article.new(title: "Head First")
    expect(article).to_not be_valid
  end
end
