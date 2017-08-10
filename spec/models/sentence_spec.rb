require "rails_helper"

RSpec.describe Sentence do
  it "has a valid factory"do
  	expect(FactoryGirl.create(:sentence)).to be_valid
  end

  it "is invalid without content"
  it "is invalid without date_spoken"
  it "builds words on creation" #create work spec / factory. add describe#method name
end