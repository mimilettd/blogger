require 'rails_helper'

RSpec.describe Article, type: :model do
  subject {
    described_class.new(title: "Learn Ruby the Hard Way",
                        body: "In seven weeks, learn how to code like a real programmer!")
          }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a body" do
    subject.body = nil
    expect(subject).to_not be_valid
  end
end
