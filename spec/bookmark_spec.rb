require './lib/bookmark'

describe Bookmark do
  describe '.all' do

    it 'returns an array of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.google.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
    end
  end
end

describe '.create' do 
  it 'creates a new bookmark' do
    bookmark = Bookmark.create(url: 'http://www.bbc.co.uk', title: 'BBC').first
    expect(bookmark['url']).to eq 'http://www.bbc.co.uk'
    expect(bookmark['title']).to eq 'BBC'
  end 
end 

