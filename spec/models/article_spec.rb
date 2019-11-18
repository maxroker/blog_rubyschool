require "spec_helper"
require "rails_helper"
require "support/factory_bot"


describe Article do 

  describe "validations" do
    it { should validate_presence_of(:title) }
  it { should validate_presence_of(:text) }
  end

  describe "associations" do
    it { should have_many :comments }
  end 

  describe "#subject" do
    it "returns the article title" do
      #create
      article = create(:article, title: 'lorem ipsum')
      #assert
      expect(article.subject).to eq 'lorem ipsum'
    end 
  end

  describe "#last_comment" do
    it "returns the last comment" do
      # create article with 3 comments
      article = create(:article_with_comments)
      #assert
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end

end

# console command for testing: rake spec
