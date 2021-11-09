require 'bookmark'

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