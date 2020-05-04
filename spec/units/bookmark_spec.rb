require "./lib/bookmark"

describe Bookmark do

  describe '#all' do
    it "returns @bookmarks array" do
      bookmarks = described_class.all

      expect(bookmarks).to include("https://www.facebook.com/")
      expect(bookmarks).to include("https://www.instagram.com/")
    end
  end
end
