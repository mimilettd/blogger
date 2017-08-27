require 'rails_helper'

RSpec.describe Tag, type: :model do
  before(:each) do
  @article = Article.new(title: "Learn Ruby the Hard Way",
                            body: "In seven weeks, learn how to code like a real programmer!")
  @article.tags.new(name: "tag1")
  end
  it "is valid with valid attributes" do
    expect(@article.tags.first).to be_valid
  end
  it "is not valid without a name" do
    @article.tags.first.name = nil
    expect(@article.tags.first).to_not be_valid
  end
end
