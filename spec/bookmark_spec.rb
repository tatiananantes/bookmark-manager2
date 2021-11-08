require 'bookmark'

describe Bookmark do
  describe '.all' do
    it "calls a 'class method'" do
      expect(Bookmark).to respond_to (:all)
    end
    #it { is_expected.to respond_to(:all) }
  end

end