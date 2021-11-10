require './lib/bookmark'

=begin
describe Bookmark do
  subject(:bookmark) { Bookmark }

  it "returns a list of bookmarks" do
    conn = PG.connect(dbname: 'bookmark_manager')

    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://www.bbc.co.uk/news');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://pomofocus.io/');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://facebook.com');")

    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.google.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    expect(bookmarks).to include('https://www.bbc.co.uk/news')
    expect(bookmarks).to include('https://pomofocus.io/')
    expect(bookmarks).to include('http://facebook.com')
  end
end
=end 




describe Bookmark do
  describe '.all' do
    it "calls a 'class method'" do
      expect(Bookmark).to respond_to (:all)
    end

    it 'returns an array of bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager')

      conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('https://www.bbc.co.uk/news');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('https://pomofocus.io/');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://facebook.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('https://www.bbc.co.uk/news')
      expect(bookmarks).to include('https://pomofocus.io/')
      expect(bookmarks).to include('http://facebook.com')
    end
  end
end