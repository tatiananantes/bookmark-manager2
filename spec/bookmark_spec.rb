require 'bookmark'

describe Bookmark do
  describe '.all' do
    it "calls a 'class method'" do
      expect(Bookmark).to respond_to (:all)
    end
    #it { is_expected.to respond_to(:all) }
    it 'returns an array of bookmarks' do
      expect(Bookmark.all).to eq ["Makers Academy", "Google", "MSNBC"]
    end
  end
end