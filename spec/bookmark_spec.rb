require './lib/bookmark'

describe Bookmark do
  subject(:bookmark) { Bookmark }

  it "returns a list of bookmarks" do
    expect(bookmark.all).to eq(["http://www.makersacademy.com", "http://www.google.com", "http://www.destroyallsoftware.com", "https://www.bbc.co.uk/news", "https://pomofocus.io/"])
  end

end






=begin 
Alternative way of writing the test
describe Bookmark do
  describe '.all' do
    it "calls a 'class method'" do
      expect(Bookmark).to respond_to (:all)
    end

    #it { is_expected.to respond_to(:all) }

    it 'returns an array of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include 'http://www.makersacademy.com'
      expect(bookmarks).to include 'http://www.destroyallsoftware.com'
      expect(bookmarks).to include 'http://www.google.com'
    end
  end
end
=end 